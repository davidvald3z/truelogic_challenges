namespace :challenges do
    task :weather => :environment do
        puts "##### Weather data challenge #####"
        result = WeatherData.find_min_temp_spread
        puts result
    end

    task :soccer => :environment do
        puts "##### Soccer data challenge #####"
        result = SoccerData.find_smallest_goals_diff
        puts result
    end

    task :all => :environment do
        Rake::Task["challenges:weather"].invoke
        puts ""
        Rake::Task["challenges:soccer"].invoke
    end
end