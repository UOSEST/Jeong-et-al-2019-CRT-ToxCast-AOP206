y = read.csv("Deepchem toxcast_data all.csv",stringsAsFactors = F)
na.omit(y) #결측값이 들어있는 행 전체를 데이터 셋이서 제거
Names =colnames(y)
for(i in Names)
  print(i)
for(i in Names)
{
  data <- subset(y, select=c("SMILES",i))
  temp = paste0("Deepchem toxcast_data all", i)
  file_name = paste0(temp,".csv")
  write.csv(data,file_name)
}
