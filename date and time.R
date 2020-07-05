############## Date

date1 <- as.Date("2020-02-01")
print(date1)
# [1] "2020-02-01"

days<- unclass(date1)
print(days)
# [1] 18293     #days since 1970-01-01

############### Time

time1<- Sys.time()
print(time1)
# [1] "2020-07-06 01:36:42 IST"

info1 <- unclass(time1)
print(info1)
# [1] 1593979602        # number of seconds since 1970-01-01

info2 <- as.POSIXct(time1)
print(info2)
# [1] "2020-07-06 01:36:42 IST"
info22 <- unclass(info2)
colnames(info22)

info3 <- as.POSIXlt(time1)
print(info3)
# [1] "2020-07-06 01:36:42 IST"
info33<-unclass(info3)
names(info33)
#  [1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"   "yday"  
#  [9] "isdst"  "zone"   "gmtoff"

#returns the different list names

########### date and time operations

first_date <- as.Date("1998-02-01")
second_date<- as.Date("2020-07-06")
second_date - first_date
# [1] Time difference of 8191 days

