# Terminal Weather App
## Demonstration
![gif](./demonstration.gif)
## Input
* city (such as- dhaka, chittagong, berlin etc)
```shell
./weather.sh dhaka
```


## Output
```shell
------------------------
| Terminal Weather App |
------------------------
temperature: 29.4°C
location   : Dhaka
date & time: 2024-10-01 20:20
```

## Code Explanation

* Used weather api from [weatherapi.com](https://www.weatherapi.com/)
* fetch weather data using `curl` command
* curl return response in json format
* search required key value pairs from json using `grep` command
* split key value pair and keep value only using `cut` command
* removed invirted comma using `tr` command

