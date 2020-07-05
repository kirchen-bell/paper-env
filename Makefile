GITHUB_WORKSPACE ?= $(shell pwd)
WORKSPACE := ${GITHUB_WORKSPACE}
PREVIEW_DIR := ${WORKSPACE}/preview

.PHONY: all
all: paper

.PHONY: preview_dir
preview_dir:
	mkdir -p ${PREVIEW_DIR}

.PHONY: paper
paper: preview_dir
	make -C src OUT_DIR=${PREVIEW_DIR}/paper.pdf

.PHONY: clean
clean:
	make -C src clean
