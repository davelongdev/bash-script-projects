# Weather Bash Script Project

## Data Source

The data for this project is obtained from the open source project [wttr.in](https://wttr.in).  

wttr.in is a web service that provides weather forecast information in a text-based format. 

[wttr.in github](https://github.com/chubin/wttr.in#readme)

## Functionality

The project will do the following -

Objective - a daily log in tabular form of the observed temperature and the forecasted temperature for the following day at noon.

- Download raw weather data
- Extract data of interest from the raw data
- Transform the data as required
- Load the data into a log file using a tabular format
- Schedule the entire process to run automatically at a set time daily

## Files

- weather.sh - the main script that generates a record of relevant data (one line of data)
- weather.log - the log file that contains the data for each day
- weather_report - a file that contains the daily weather report

## variables
- current_temp - the current temp
- fc_temp - the temp forcasted for the following day
