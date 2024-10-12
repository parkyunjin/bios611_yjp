# Base image from rocker
FROM rocker/rstudio

# Install required R packages
RUN R -e "install.packages(c('rmarkdown'), repos='https://cloud.r-project.org/')"

# Set the working directory
WORKDIR /usr/src/app

# Copy the project files into the Docker image
COPY . /usr/src/app

# Default command to build the report
CMD ["make", "report"]