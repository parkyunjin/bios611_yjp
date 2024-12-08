# Variables
IMAGE_NAME = report-builder
CONTAINER_NAME = report-container
REPORT = BIOS_611_Project_Report.pdf

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Render the report in the container
render:
	docker run --rm -v $(shell pwd):/project $(IMAGE_NAME)

# Clean up generated files
clean:
	rm -f $(REPORT)
	rm -rf *_cache *_files

# Build and render in one step
all: build render
