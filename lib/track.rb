require "pivotal-tracker"
require "json"

class Track
	def initialize
		@config = JSON.parse(File.read(".track_config"))
		PivotalTracker::Client.token = @config["pivotal_tracker"]["api_token"]
	end

	def project
		PivotalTracker::Project.find(@config["pivotal_tracker"]["project_id"])
	end

	def stories
		project.stories.all(:current_state => "started", :owned_by => @config["pivotal_tracker"]["user_full_name"])
	end

	def last_story_id
		stories.first.id
	end

	def print_git_line
		puts "[##{last_story_id}]"
	end
end
