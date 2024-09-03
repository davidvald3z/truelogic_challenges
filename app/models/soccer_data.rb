module SoccerData
    def self.find_smallest_goals_diff
        file_path = "lib/data/soccer.dat"

        if File.exist?(file_path)
            smallest_diff = nil
            smallest_diff_team_name = nil

            File.foreach(file_path) do |line|
                team_number = line.slice(3,2)
                next unless team_number && team_number.strip.to_i > 0

                goals_for = line.slice(43,4)
                goals_against = line.slice(50,4)
                next if goals_for.blank? || goals_against.blank?

                goals_diff = goals_for.strip.to_i - goals_against.strip.to_i
                
                if smallest_diff.nil? || goals_diff < smallest_diff
                    smallest_diff_team_name = line.slice(7,16).strip
                    smallest_diff = goals_diff
                end
            end
            if smallest_diff_team_name.nil?
                result = "Not valid records detected"
            else
                result = "The team with the smallest goals difference is: #{smallest_diff_team_name}"
            end
        else
            result = "Data file does not exist (#{file_path})"
        end
        
        result
    end
end
