sample_info <- read.csv('sample_info.txt', header=TRUE, sep='\t')
head(sample_info)
dim(sample_info)
row_5 <- sample_info[5,]
head(row_5)
entry_4 <- sample_info[4, 'sample_title']
head(entry_4)
#adding a new column and calculating based on an existing one
new_col <- sample_info$mill_reads <- df$read_count/1000000
head(new_col)
#las makes the sample titles vertical
barplot(sample_info$mill_reads, main="mill_reads", 
        names.arg=sample_info$sample_title, las=2)
?barplot

counts <- read.csv('joined_final.txt', header=TRUE, sep=' ')
head(counts)
dim(counts)
summary(counts)
#the sum of the rows should be greater than zero while excluding the first column since it is gene_id
#include the comma at the end because you need all columns
expressed <- counts[rowSums(counts[-1])>0,]
head(expressed)
dim(expressed)
#excluding the first column again, have rowSums of all which we then order and it is coming from
#the dataframe expressed. Include comma again since we want all columns. It is ascending.
maximum_index <- expressed[order(rowSums(expressed[-1])),]
head(maximum_index)
tail(maximum_index)


## Split Sample_accession into different parts and create columns for each of them in the data frame
m = matrix(unlist(strsplit(as.character(a$sample_title),"_",fixed=TRUE)),byrow=T,ncol=4)
##double knockout DKO mice, knockin Kin mice, TRF transcriptional regulation factor
#a$TRF = m[,1]
#a$Mice = m[,2]
#a$Marker = m[,3]
#a$Rep = m[,4]








