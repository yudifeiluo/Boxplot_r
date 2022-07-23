#--------- 箱线图 --------------
library("reshape2")
df <- read.table("Frequenzy.xls",header=T,row.names=1)
df <- melt(df)
colnames(df) <- c("Group","value")
head(df)
p = ggplot(data=df, 
		  aes(x=Group, 
				y=value)) 
p + geom_boxplot(
		  alpha=0.4, 
		  outlier.size=1,    # outlier.size:设置离群点的“点的大小”;
		  aes(fill=Group)) + 
    labs(y="Total frequency",     # 对"坐标轴名称"以及"标题"的设置
		title="Group") +  
	theme(axis.text.x =      # 对坐标轴名称的设置
		element_text(hjust=1, angle= 45)) 
