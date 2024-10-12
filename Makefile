# Variables
REPORT = report.Rmd
OUTPUT = report.pdf
DATA_DIR = data
FIGURES_DIR = figures

.PHONY: report clean

# Default target
report: $(OUTPUT)

# Build the report
$(OUTPUT): $(REPORT)
	Rscript -e "rmarkdown::render('$(REPORT)')"

# Clean up generated and intermediate files
clean:
	rm -f $(OUTPUT)
	rm -rf $(DATA_DIR)/*
	rm -rf $(FIGURES_DIR)/*
