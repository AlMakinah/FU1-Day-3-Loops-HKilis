require "csv"
require "faker"

NATIONALITIES = ['Egyptian', 'German', 'American', 'Dutch'].freeze
CURRENTLOCATION = ['Egypt', 'Syria', 'Israel', 'Lybia'].freeze

CSV.open("spies.csv", "wb") do |csv|
  csv << ["name", "nationality", "current_location"]
  100.times do |index|
    csv << ["#{Faker::Name.first_name} #{Faker::Name.last_name}" , NATIONALITIES.sample, CURRENTLOCATION.sample]
  end
end