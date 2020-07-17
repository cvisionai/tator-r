

.PHONY: r-bindings
r-bindings:
	mkdir -p tmp
	rm -f tator-openapi-schema.yaml
	curl -s -L https://www.tatorapp.com/schema > tator-openapi-schema.yaml
	./codegen.py tator-openapi-schema.yaml
	docker run -it --rm \
		-v $(shell pwd):/pwd \
		-v $(shell pwd)/tmp:/out openapitools/openapi-generator-cli:v4.3.1 \
		generate -c /pwd/config.json \
		-i /pwd/tator-openapi-schema.yaml \
		-g r -o /out/tator-r-new-bindings
	rm tator-openapi-schema.yaml