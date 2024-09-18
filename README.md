# article-project-builder

[简体中文](README_zh.md)｜[English](README.md)

## Introduction

This is a tool to help you build a project of academic papers.
With this tool, you can quickly generate a project for managing your academic papers, including the main files and folders of the paper.

The project structure is:

```shell
<start_time>-<article_title> # The project root folder
├── Manuscript_<article_title_abbr>_v1.docx # The manuscript file version 1
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

## Development environment

## Usage
