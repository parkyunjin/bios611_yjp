# Use a base image with R installed
FROM rocker/verse:4.3.1

# Set the working directory in the container
WORKDIR /project611yjp

# Copy the R Markdown file and any required files into the container
COPY . /project611yjp

# Install additional R packages if needed
RUN R -e "install.packages(c('corrplot', 'umap', 'factoextra', 'reshape2', 'tidyr'), repos = 'http://cran.rstudio.com/')"

# Set the default command to render the R Markdown file
CMD ["Rscript", "-e", "rmarkdown::render('report.Rmd')"]
