module WeatherData
    def self.find_min_temp_spread
        file_path = "lib/data/w_data.dat"

        if File.exist?(file_path)
            min_temp_spread = nil
            min_temp_spread_day = nil

            File.foreach(file_path) do |line|
                day = line.slice(2,4)
                next unless day && day.strip.to_i > 0

                max = line.slice(6,6)
                min = line.slice(12,6)
                next if min.blank? || max.blank?

                temp_diff = get_clean_temp(max) - get_clean_temp(min)
                
                if min_temp_spread_day.nil? || temp_diff < min_temp_spread
                    min_temp_spread_day = day
                    min_temp_spread = temp_diff
                end
            end
            if min_temp_spread_day.nil?
                result = "Not valid records detected"
            else
                result = "The day with the smallest temperature spread is: #{min_temp_spread_day}"
            end
        else
            result = "Data file does not exist (#{file_path})"
        end
        
        result
    end

    def self.get_clean_temp(str)
        ret = str.strip
        ret = ret.chop if ret.end_with?('*')
        ret.to_f
    end
end
