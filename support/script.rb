require 'csv'


defence_intelligence = []
military_intelligence = []
airport_security = []



CSV.foreach('spies.csv', headers:true) do |spy|

  if spy["nationality"] == 'Egyptian'
    defence_intelligence << spy["name"]
  end

  if spy["current_location"] == 'Egypt'
    military_intelligence << spy["name"]
  else
    airport_security << spy["name"]
  end
end

puts "defence_intelligence count: #{defence_intelligence.count}"
puts "military_intelligence count: #{military_intelligence.count}"
puts "airport_security count: #{airport_security.count}"


