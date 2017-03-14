require 'csv'

#Exercise CSV
def intelligence_checkup_str(file_name)
	all_file = File.read(file_name)
	all_spies = all_file.split("\n")
	defence_intelligence, military_intelligence, airport_security = [], [], []
	all_spies[1..-1].each do |spy|
		all_info = spy.split(',')
		name = all_info[0]
		nationality = all_info[1]
		current_location = all_info[2]
		if nationality == 'Egyptian'
			military_intelligence << name
		elsif current_location == 'Egypt'
			defence_intelligence << name
		else
			airport_security << name
		end
	end
	print "STRING OP \n"
	print "defence_intelligence count: #{defence_intelligence.count} \n"
	print "military_intelligence count: #{military_intelligence.count} \n"
	print "airport_security count: #{airport_security.count} \n"
end

def intelligence_checkup_csv(file_name)
	defence_intelligence, military_intelligence, airport_security = [], [], []
	CSV.foreach(file_name, headers:true) do |spy|
		if spy['nationality'] == 'Egyptian'
			military_intelligence << spy['name']
		elsif spy['current_location'] == 'Egypt'
			defence_intelligence << spy['name']
		else
			airport_security << spy['name']
		end
	end
	print "CSV OP \n"
	print "defence_intelligence count: #{defence_intelligence.count} \n"
	print "military_intelligence count: #{military_intelligence.count} \n"
	print "airport_security count: #{airport_security.count} \n"
end


intelligence_checkup_str('spies.csv')

intelligence_checkup_csv('spies.csv')