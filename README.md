Hi, this is my BIOS 611 Data Science Project.


This repository contains the files needed to render an R Markdown report (`report.Rmd`) using Docker and Makefile. The project uses Coffee Quality Data (CQI May-2023) from Kaggle to explore the relationship between sensory attributes of coffee and country of origin.

## Content

- **report.Rmd**: The rmd file to generate the project report.
- **data/df_arabica_clean.csv**: Dataset used for analysis, it is originally from from Kaggle (https://www.kaggle.com/datasets/fatihb/coffee-quality-data-cqi).
- **Dockerfile**: Sets up a Docker container with the required R environment.
- **Makefile**: Automatically builds and renders the report.



1. **Clone the Repository**
```bash
git clone https://github.com/yourusername/BIOS611-Project.git
cd BIOS611-Project
```

2. **Build the Docker Image**
```bash
make build
```

3. **Render the Report**
```bash
make render
```
