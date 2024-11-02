#! /bin/bash

city=Casablanca

#-----------------
# Step 1

# uses curl to obtain weather data for Casablanca from the wttr api
# and pipes the response into weather_report

# ?T after the $city variable disable colors per the api docs
# curl -s wttr.in/$city?T --output weather_report


#-----------------
# Step 2

# extracts the current temp from the returned data and prints to the console

current_temp=$(curl -s wttr.in/$city?T | grep -m 1 '°' | grep -Eo -e '-?[[:digit:]].*')
# echo "The current temp of $city is $current_temp"


#-----------------
# Step 3

# extracts the forcasted temp for tomorrrow at noon and prints to the console

fc_temp=$(curl -s wttr.in/$city?T | head -23 | tail -1 | cut -d 'F' -f2 | grep -Eo -e '-?[[:digit:]].*')
#echo "The temp forcasted for tomorrow in $city is $fc_temp F"

#-----------------
# Step 4

#assign country and city to variable TZ
TZ='Morocco/Casablanca'

# use command substitution to store the current day, month, and year in corresponding shell variables

hour=$(TZ='Morocco/Casablanca' date -u +%H) 
day=$(TZ='Morocco/Casablanca' date -u +%d) 
month=$(TZ='Morocco/Casablanca' date +%m)
year=$(TZ='Morocco/Casablanca' date +%Y)

#-----------------
# Step 5

# merge fields into tab-delimited record corresponding to a single row

record=$(echo -e "$year\t$month\t$day\t$current_temp\t$fc_temp F")
echo $record>>weather.log
