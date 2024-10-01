#! /bin/bash

# https://www.weatherapi.com/docs/

echo "------------------------"
echo "| Terminal Weather App |"
echo "------------------------"


# configurations
API_KEY=8ce74ca225f149fdbcd135928242909
BASE_URL=https://api.weatherapi.com/v1
CURRENT=/current.json
FORCAST=/forecast.json
PARAMS=?key=${API_KEY}"&q=${1}"

COMPLETE_URL=${BASE_URL}${CURRENT}${PARAMS} 


response=$(curl -s ${COMPLETE_URL})
currentTemperature=$(echo $response | grep -o "\"temp_c\":\d\d.\d" | grep -o "\d\d.\d")


location=$(echo $response | grep -o "\"name\":\"[A-Za-z]*\"" | cut -d ':' -f 2 | tr -d '"')

dateAndTime=$(echo $response | grep -o "\"localtime\":\"\d\{4\}-\d\d-\d\d \d\d\:\d\d\"" | cut -d ':' -f 2,3 | tr -d '"')

echo "temperature: ${currentTemperature}°C"
echo "location   : ${location}"
echo "date & time: ${dateAndTime}"
