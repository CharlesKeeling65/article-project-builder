# 论文管理项目生成器

[简体中文](README_zh.md)｜[English](README.md)

## 介绍

这是一个用于生成论文管理项目的工具。
通过该工具，可以快速生成一个论文管理项目，包括论文的主要文件和文件夹。

文件夹结构如下：

```shell
<start_time>-<article_title> # The project root folder
├── Manuscript_<article_title_abbr>_v1.docx # The manuscript file version 1
├── Manuscript_<article_title_abbr>_v1.md # The manuscript file version 1
├── Manuscript_<article_title_abbr>_v1.pdf # The manuscript file version 1
├── Config # The configuration file folder
│   ├── reference_docx.docx # The md2word reference file
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

## 依赖

- Docker
