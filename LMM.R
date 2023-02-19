library(lmerTest)
SNdata<-read.csv('/Social_Navigation/SN_LMM.csv',head=T)

SNdata$characterlist<-as.factor(SNdata$characterlist)
SNdata$Type<-as.factor(SNdata$Type)

Test<-glmer(Response~1+characterlist+Type+(1|ID),family = binomial(link = "logit"),data=SNdata,control = glmerControl())

summary(Test)