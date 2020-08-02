############## Date

date1 <- as.Date("2020-02-01")
print(date1)
# [1] "2020-02-01"

days<- unclass(date1)
print(days)
# [1] 18293     #days since 1970-01-01

my_date <- as.Date("1971-14-05")
# Error in charToDate(x) : 
#character string is not in a standard unambiguous format
# because standard format is yyyy-mm-dd
# we can save date with a use defined format as well

my_date<- as.Date("1971-14-05", format = "%Y-%d-%m")
# [1] "1971-05-14"


# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)

str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2<- as.Date(str2, format = "%Y-%m-%d")
date3<- as.Date(str3, format="%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")
# [1] "Thursday"

format(date2, "%d")
# [1] "15"

format(date3, "%b %Y")
# [1] "Jan 2006"

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


