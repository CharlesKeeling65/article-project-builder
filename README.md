# article-project-builder

[简体中文](config/README_zh.md)｜[English](README.md)

## Introduction

This is a tool to help you build a project of academic papers.
With this tool, you can quickly generate a project for managing your academic papers, including the main files and folders of the paper.

And you can use the tool to convert the markdown file to the word file.

The project structure is:

```shell
<start_time>-<article_title> # The project root folder
├── Manuscript_<article_title_abbr>_v1.docx # The manuscript file version 1
├── Manuscript_<article_title_abbr>_v1.md # The manuscript file version 1
├── Manuscript_<article_title_abbr>_v1.pdf # The manuscript file version 1
├── Config # The configuration file folder
│   ├── custom-reference.docx # The md2word reference file
│   ├── ref.bib # The reference bib file
│   ├── ref_style.csl # The reference style csl file
├── Figures # The figures used in the manuscript
│   ├── Fig-1.png # Figure 1 in the manuscript
│   ├── ED-Fig-1.png # Figure 1 in the Extended Data Figure
│   ├── SI-Fig-1.png # Figure 1 in the Supplementary Information
│   ├── ...
│   │   ├── PDF # The PDF version of the figures
│   │   │   ├── ...
├── Tables # The tables used in the manuscript
│   ├── Table.xlsx # Table in the manuscript
│   ├── SI-Table.xlsx # Table in the Supplementary Information
│   ├── ...
├── Data # The data used in the manuscript
│   ├── Raw # Raw data folder
│   │   ├── ...
│   ├── <data_name>.csv/<data_name>.xlsx # data file
│   ├── <map_name>.tif # map file
│   ├── ...
├── Code # The code used in the manuscript
│   ├── <code_name>.R/<code_name>.py/<code_name>.ipynb # Code file
│   ├── ...
├── ProcessProject # Processed project folder
│   ├── <fig_name>.pptx/<fig_name>.ai/<fig_name>.psd/<fig_name>.gpkg # Processed figure file
│   ├── <other_project_app>  # Processed data file (e.g. GraphPad:.pzfx, QGIS:.qgz)
│   ├── ...
├── ...
```

## Usage

dependencies:

- Docker

### Step 1: Download Docker and pull the image

```shell
docker pull pandoc/core:latest
```

The image provides the pandoc environment.

### Step 2: unzip tar.gz file and configure path

```shell
mkdir article-project-builder && tar -zxvf article-build_v1.0.tar.gz -C article-project-builder/
cd article-project-builder/bin && pwd
```

You will get the path of the bin folder, such as `/home/username/article-project-builder/bin`.

```shell
vim ~/.bashrc
```

Add the following content to the end of the file: `export PATH=/home/username/article-project-builder/bin:$PATH` and save it.

Source the bashrc file:

```shell
source ~/.bashrc
```

### Step 3: Build a project

initializing the framework:

```shell
article-build init
```

converting markdown files to word files

```shell
article-build build
```

help:

```shell
article-build help
```

## Build

dependencies:

- Docker
- shc
