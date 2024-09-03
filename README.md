# Weather and Soccer Challenges

**Ruby version:** 3.2.3  
**Rails version:** 7.1.4

## Project Overview

This project contains two modules that implement the logic for the weather and soccer challenges. These modules are executed through a Rake file.

## Challenges Overview

### 1. Weather Data Challenge
The task is to identify the day with the smallest temperature spread from a weather data file.

- **Data File:** `lib/data/w_data.dat`
- **Module:** `app/models/weather_data.rb`
- **Task:** `challenges:weather`
- **How to run:** `bundle exec rake challenges:weather`

### 2. Soccer Data Challenge
The task is to identify the soccer team with the smallest difference between the goals scored ("goals for") and goals conceded ("goals against") from a soccer data file.

- **Data File:** `lib/data/soccer.dat`
- **Module:** `app/models/soccer_data.rb`
- **Task:** `challenges:soccer`
- **How to run:** `bundle exec rake challenges:soccer`

### How to Run Both Tasks
- **Command:** `bundle exec rake challenges:all`
