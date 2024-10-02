# Terminal Weather App
## Demonstration
![gif](./demonstration.gif)

## Prerequisite
* Create account in this website - [weatherapi.com](https://www.weatherapi.com/) and get your api key.

* Open the .bashrc or .zshrc file in a text editor:
```shell
nano ~/.bashrc   # For Bash users
nano ~/.zshrc    # For Zsh users
```
* Add the api key as an environment variable.
```shell
export WEATHER_APP_API_KEY=<API-KEY>
```

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

* Used weather api from this website - [weatherapi.com](https://www.weatherapi.com/)
* fetch weather data using `curl` command
* curl return response in json format
* search required key value pairs from json using `grep` command
* split key value pair and keep value only using `cut` command
* removed inverted comma using `tr` command

