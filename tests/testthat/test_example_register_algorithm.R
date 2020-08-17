test_that("register algorithm", {
  manifest_yaml <- "apiVersion: argoproj.io/v1alpha1
kind: Workflow
metadata:
  generateName: test-algorithm-launcher-
spec:
  entrypoint: pipeline
  ttlStrategy:
    secondsAfterCompletion: 300 # Time to live after workflow is completed, replaces ttlSecondsAfterFinished
    secondsAfterSuccess: 300 # Time to live after workflow is successful
    secondsAfterFailure: 600 # Time to live after workflow fails
  volumeClaimTemplates:
  - metadata:
      name: workdir
    spec:
      accessModes: [ \"ReadWriteOnce\" ]
      storageClassName: nfs-client
      resources:
        requests:
          storage: 100Mi
  templates:
  - name: pipeline
    steps:
    - - name: test
        template: test
  - name: test
    script:
      image: cvisionai/tator_transcoder #localhost:5000/tator_transcoder
      env:
      - name: TATOR_MEDIA_IDS
        value: \"{{workflow.parameters.media_ids}}\"
      - name: TATOR_API_SERVICE
        value: \"{{workflow.parameters.rest_url}}\"
      - name: TATOR_AUTH_TOKEN
        value: \"{{workflow.parameters.rest_token}}\"
      - name: TATOR_PROJECT_ID
        value: \"{{workflow.parameters.project_id}}\"
      - name: TATOR_WORK_DIR
        value: \"/work\"
      resources:
        limits:
          cpu: 1000m
          memory: 500Mi
      volumeMounts:
      - name: workdir
        mountPath: /work
      command: [python3]
      source: |
        #!/usr/bin/env python3

        import os
        import tator

        def main():
            host = os.path.dirname(os.getenv('TATOR_API_SERVICE'))
            token = os.getenv('TATOR_AUTH_TOKEN')
            project = int(os.getenv('TATOR_PROJECT_ID'))
            media_ids = os.getenv('TATOR_MEDIA_IDS')
            media_ids = [int(m) for m in media_ids.split(',')]

            tator_api = tator.get_api(host=host, token=token)

            print(f'{host} {token} {project} {media_ids}')

            for media in media_ids:
                name = f'test_media_{media}'
                dq = f'test_media_id:{media}'
                spec = tator.models.AnalysisSpec(name=name, data_query=dq)
                _ = tator_api.create_analysis(project=project, analysis_spec=spec)

        if __name__ == '__main__':
            main()
  "
  local_yaml_file <- tempfile(fileext = ".yaml")
  write(manifest_yaml, file = local_yaml_file)
  cmd <- paste(
    "Rscript ../../examples/register_algorithm.R",
    "--host", host,
    "--token", token,
    "--project_id", project_id,
    "--manifest", local_yaml_file,
    "--algorithm_name", uuid::UUIDgenerate(),
    "--files_per_job", "100",
    sep = " ")
  exit_code <- system(cmd)
  expect_equal(exit_code, 0)
})