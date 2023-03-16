FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN R -e 'install.packages(c("devtools", "BiocManager"), repos = "https://cloud.r-project.org")' && \
    R -e 'BiocManager::install(c("pathview", "biomaRt", "msigdbr", "dendextend", "pheatmap", "sva", "ggrepel", "knitr", "clusterProfiler", "depmap"))' && \
    R -e 'devtools::install_github("liulab-dfci/MAGeCKFlute")'