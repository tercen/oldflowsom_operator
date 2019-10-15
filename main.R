library(tercen)
library(dplyr)
library(reshape2)
library(FlowSOM)
library(stringr)

set.seed(42)

data = (ctx = tercenCtx())  %>% 
  select(.ci, .ri, .y) %>% 
  reshape2::acast(.ci ~ .ri, value.var='.y', fill=NaN, fun.aggregate=mean) 

colnames(data) = paste('c', colnames(data), sep='')

dataSOM = SOM(data,
              xdim   = as.integer(ctx$op.value('xdim')),
              ydim   = as.integer(ctx$op.value('ydim')), 
              rlen   = as.integer(ctx$op.value('rlen')), 
              mst    = as.integer(ctx$op.value('mst')), 
              alpha  = c(as.integer(ctx$op.value('alpha_start')),(as.double(ctx$op.value('alpha_end')))),
              distf  = as.integer(ctx$op.value('distf'))
              )
mapping_node_num   = dataSOM$mapping[ ,1]
mapping_node_label = str_pad(as.character(dataSOM$mapping[ ,1]), 2, pad = "0")

data.frame(.ci = seq(from=0,to=length(dataSOM$mapping)-1), mapping_node_num, mapping_node_label) %>%
  ctx$addNamespace() %>%
  ctx$save()