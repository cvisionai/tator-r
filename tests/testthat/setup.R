host <- Sys.getenv("TATOR_HOST")
token <- Sys.getenv("TATOR_TOKEN")

project_id <- project_fixture(host, token)
stopifnot(is.numeric(project_id))

video_type_id <- video_type_fixture(host, token, project_id)
stopifnot(is.numeric(video_type_id))

video_file_path <- video_file_fixture()

video_id <- video_fixture(host, token, video_type_id, video_file_path)