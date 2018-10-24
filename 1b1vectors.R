# Vectors and Basic Statistics - Univariate Analysis
#packages required - e1071, modeest
#single dimension of same data type
#x = c(3, 'Data', TRUE) # cannotr

#create numbers in sequence----
x1 <- 10:19
x1
(x1 = 10:19)
(x1 = sample(x=10:19))#pick in random order
x1
print(x1) #see the position numbers start from 1
(y = 10:100)
y[20]
y[1:10]



#subset/ filter values on condition, position----
x1[x1 > 15]
print(x1[x1 > 15])

x1[x1 < 13]
x1[(x1 < 14) | (x1 > 17)]
x1[(x1 > 14) & (x1 < 17)]

#Subset values on position
x1
length(x1)
x1[1] ; x1[10] ; x1[length(x1)-1]
x1[3:6]
x1[c(3,6,7)]
x1[seq(2,10,2)] #even number 2-10 with differnece of 2
x1[seq(1,10,2)] #odd number 1-10 with differnece of 2
x1
x1[-5]
x1[-c(1,3,7)]
x1[-c(1,length(x1))]

#sort
(x1=sample(x=10:200))
sort(x1)
sort(x1, decreasing=T) #descending order
sort(x1, decreasing=TRUE) #descending order
x1
rev(x1)  #rev is different from decreasing order


#generate numbers different way----
(x2 = c(4,7,3,9,11))
#c - combine values in a vector variable
(x3 = seq(from=0, to=100, by=5))
?rep
rep(1,5); rep(c(1,3),5)
(x4 = c(rep(4,times=3), rep(7, times=4)))
(x5 = c(rep(c(1,2,3), times=c(5,4,3))))
ls() ; y ; x1 ; x2 ; x3
rep(1,5) ; rep(1,times=5) ; rep(times=5,1)
rep(c(1,3),5)
?c
rep(c(1,3),times=5)
rep(c(1,3),each=5)

(x4 = c(rep(4, times=3), rep(7, times(times=4))))
(x5 = c(rep(c(1,2,3,4),times=c(5,4,3,10))))        

#Using probability Distributions
set.seed(1234) #help in generating smae pattern
(x6 = rnorm(n=1000000, mean=5, sd=1))
plot(density(x6))
abline(v=5, h=0.3, col=1:2) #h - horizontal line, v - vertical line, col=colour can be specified via names also

mean(x6)
sd(x6)
(x7 = runif(n=10, min=2, max=10))
plot(x7)
?distributions

#removing decimal places/ round----
floor(10.35)
(x6 = rnorm(n=10, mean=5, sd=1))
floor(x6) #lower integer value
ceiling(x6) #higher integer value
trunc(x6)
round(x6,digits=2)  #round to decimal places
signif(x6,digits=3)  #round to specified no of digits not rounding decimal
x6
x6b = c(-10.5, 4.56, 5.3)
x6b
trunc(x6b)
floor(x6b)

x6c = c(05.24,5.24,5.2453)
signif(x6c,3)


# Basic operations on vector----
x1=1:10
sum(x1)
cumsum(x1) # cumulative sum
cumprod(x1)
x1 * 2  # multiple by 2
x1 * c(2,4) #multiple 2 & 4 alternatively
x1
#similarly other operators can be used
x1/2
x1 ^ 2 #to power
x1 ** 2 #power of 2
x1 %% 2 #finding whether odd or even,  #modulo/ remainder
sqrt(x1) #squear root
sin(x1)

#concatenate vectors
x1; x2
x1
x2
(x8 = c(x1, x2)) #combining vector
x8

#min, max, compare ----
min(x1)
max(x1)
mean(x1)
median(x1)
mode(x1) #this mode is not stats mode
length(x1)  #no of values
x1==x2 #1|=4, 2|=7, and goon.....   x2 will repeat after it finishes, that is from start
x1; x2
x1; c(x2,x2)

5 < 6
5 > 6
5 == 6
5 <= 6

#attributes----
str(x1) #structure of vector
class(x1) 
typeof(x1) 
summary(x1)

quantile(x1)
quantile(x1, c(.1,.3,.6,.7))
#decile 10%, percentile 1%
seq(0,1,.10)
quantile(x1, seq(0,1,.1))
quantile(x1, seq(0,1,.01))
x1
head(x1)
head(x1,n=3)
tail(x1)
tail(x1,n=3)
x1=sample(1:100)
(x1=sample(1:100))
head(x1,n=3)
tail(x1,n=3)

#missing values in vector (NA)----
(x9 = c(1,5,14,NA,20,17, NA,9)) #missing values are indicated by NA # importing filesfrom excel the blank, will be replaced by NA or if importing from other software, blank will show 99
(x9b = c(1,5,14,20,17,9))
length(x9)

sum(x9) #error
sum(x9,na.rm=T) # finding sum after removing NA

is.na(x9) #T & F #is there any values which are missing, show true false in all positions
#how many missing values
sum(c(TRUE,F,T,T,T,F,T,F)) # sum of trues #T=1 and F=0 and sum them depending on hte number of T's and F's
sum(is.na(x9)) # how many missing values

y1=sample(1:100)
y1[c(30,50,70,81)]=NA
y1
anyNA(y1) #is there any missing values?
sum(is.na(y1))
sum(y1, na.rm=T)

length(x9)
sum(x9, na.rm=T)
na.omit(x9)
?NA
na.exclude(x9)

length(x9)
x9b=na.omit(x9)
x9 ; length(x9b)

#impute
mean(x9, na.rm=T) #mean of x9 non missing values
is.na(x9) #where NA is there in x9
x9c=x9
x9[is.na(x9)] = mean(x9, na.rm=T) # where NA is there in x9  = mean of x9 non missing values
x9



#Other Vectors----
class(x1)
(x11 = c(10.4, 12.4, 15, 20)) #numeric - will have decimals
class(x11)
(x12 = c(3L,6L,9L, 15L)) #integer - no decimals (L means integer)
class(x12)
(x11b = c(10.4, 12.4, 15, 20))
class(x11b)
x11c=as.integer(x11b) #convert numeric to integer
class(x11c)


#character----
(x13 = c('henry', 'harvin', 'education'))
class(x13)
toupper(x13)
casefold(x13,upper=T)

(x14 = c("BUSINESS", "MARKETING", 'FINANCIAL'))
tolower(x14)
casefold(x14,upper=F)
#library(stringr)

chartr("BMF","bmF",x14) #replace BMF with bmF
?strsplit(x14, "E") #split at point E is found


#Logical Vectors----
(x20 = c(TRUE, FALSE, T, F, TRUE))
class(x20)
sum(x20) #how many T
x20[x20 ==T ] # T=1
table(x20)  #T & F count

#names to vector elements----
x14
names(x14) = c('CBAP','CMAP',"CFAP") #headings
x14
x14["CMAP"]  #value of label CMAP


#paste ----
paste("Product",1,sep="-")
paste("Coy",1,sep="$")
paste("Product",1:10,sep="-")

#Generate Sample values----
(x25 = ceiling(rnorm(10, mean=60, sd=10)))
(x26a = sample(c("Male","Female")))
(x26b = sample(c("Male","Female"), size=10))#error
(x26c = sample(c("Male","Female"), size=10, replace=T))
table(x26c)
(x26d = sample(c("Male","Female"), size=10, replace=T, prob=c(.6, .4)))
table(x26d) #will not be exactly as per prob as sample size is less

(x26e = sample(c("Male","Female"), size=10000, replace=T, prob=c(.6, .4)))  #increase sample size
table(x26e) # approx as per prob
prop.table(table(x26e))

#sampling----
#using sampling with set.seed for repeating pattern
(x27a = sample(c("Phd","MBA", "BBA"), size=10, replace=T))
table(x27a)
(x27b = sample(c("Phd","MBA", "BBA"), size=10, replace=T))
table(x27b)
x27a==x27b  #not same

#how to regenerate the sample pattern using seed value
set.seed(123)  #123 can be any number
(x28a = sample(c("Phd","MBA", "BBA"), size=10, replace=T))
table(x28a)
set.seed(123)  #repeat this
(x28b = sample(c("Phd","MBA", "BBA"), size=10, replace=T))
table(x28b)
x28a==x28b  #all are same


#Univariate Analysis----
#Basic Statistics on Single Variable
#continuous values
(x30 = rnorm(100, mean=60, sd=5))

#discrete category values- unordered
(x31a = sample(c('Phd','MBA','BBA'), size=100, replace=T, prob=c(.1,.3, .6)))
(x31 = factor(x31a))

#ordered category
(x32a = sample(c('Excellent','Good','Satisfactory','Poor'), size=100, replace=T, prob=c(.3,.4,.2,.1)))
(x32  = factor(x32a, ordered=T, levels=c('Poor','Satisfactory','Good','Excellent')))

#summary
summary(x30)
summary(x31)
summary(x32)
table(x31)
prop.table(table(x31))
length(x30)

#plots-----
hist(x30)
hist(x30, breaks=10, col=1:10)
plot(x30)
boxplot(x30)
abline(h=summary(x30))

#categorical variable
table(x31)
barplot(table(x31), horiz=T)
barplot(table(x32), horiz=F, col=1:4)
pie(table(x32))

#Statistics----
mean(x30)
var(x30)
sd(x30)
sqrt(var(x30))
min(x30)
max(x30)
range(x30)

plot(density(x30))
e1071::skewness(x30)
e1071::kurtosis(x30)
Hmisc::describe(x30)
quantile(x30)
quantile(x30, prob=c(seq(0,1,by=.1)))
quantile(x30, prob=c(seq(0,1,by=.01)))
range(x30)
stem(x30)

#mode----
#mode of continous 
modeest::mlv(x30,method='shorth')
#mode of categorical variable
x31
(courses = table(x31))
names(courses)[courses == max(courses)]

#Frequency Table----
#generate sample data using uniform distribution from 0 to 100
(x33 = runif(100, min=0, max=100))
range(x33)
length(x33)
# Divide range into step of 20 ie 5 levels
(breaks = seq(0,100,by=20))
length(breaks)
(x33.cut = cut(x33, breaks))
head(cbind(x33, x33.cut))
table(x33.cut)
(freqtable = cbind(table(x33.cut)))  #see it vertically
barplot(freqtable, beside = T, names.arg = row.names(freqtable))


#give intervals a Label values A, B..
LETTERS[1:5]
(x33b.cut = cut(x33, breaks, labels=LETTERS[1:length(breaks)-1]))
x33b.cut

(table(x33b.cut))
(freqtable2 = cbind(table(x33b.cut)))
row.names(freqtable2)

barplot(freqtable2, beside = T, col=1:5, names.arg = row.names(freqtable2), ylim=c(0, max(freqtable2)+5))

title(main="Distribution of Values", sub='Frequency Table')
text(x=(1:nrow(freqtable2))+.5, y=freqtable2+3, freqtable2, col=1:5)


#Undersand other Data Structures and various analysis on them
#matrix, data.frame