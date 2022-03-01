.PHONY: cv.pdf

CC = xelatex
OUTPUT_DIR = out
RESUME_DIR = resume
CV_DIR = cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
