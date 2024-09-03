namespace :challenges do
    task :weather => :environment do
        puts "##### Weather data challenge #####"
        result = WeatherData.find_min_temp_spread
        puts result
    end
end