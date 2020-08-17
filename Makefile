

.PHONY: r-bindings
r-bindings:
	rm -rf tmp
	mkdir -p tmp
	rm -f tator-openapi-schema.yaml
	curl -s -L https://www.tatorapp.com/schema > tator-openapi-schema.yaml
	docker run -it --rm \
		-v $(shell pwd):/pwd \
		-v $(shell pwd)/tmp:/out openapitools/openapi-generator-cli:v5.0.0-beta \
		generate -c /pwd/config.json \
		-i /pwd/tator-openapi-schema.yaml \
		-g r -o /out/tator-r-new-bindings -t /pwd/templates
	rm tator-openapi-schema.yaml
	rm -f R/generated_*
	cd $(shell pwd)/tmp/tator-r-new-bindings/R && \
	  for f in $$(ls -l | awk -F':[0-9]* ' '/:/{print $$2}'); do cp -- "$$f" "../../../R/generated_$$f"; done
	Rscript -e "devtools::document()"

.PHONY: r-templates
r-templates:
	mkdir -p new-templates
	docker run -it --rm \
		-v $(shell pwd):/pwd \
		-v $(shell pwd)/new-templates:/out \
		openapitools/openapi-generator-cli:v5.0.0-beta \
		author template \
		-g r --library webclient -o /out
