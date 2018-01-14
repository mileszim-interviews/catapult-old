require 'csv'

IMPORT_FILE = "./raw/breeds.csv"

CSV.foreach(File.join(File.dirname(__FILE__), IMPORT_FILE), { headers: true }) do |row|
  name = row["name"].split(" ").each(&:capitalize!).join(" ")
  Breed.find_or_create_by(name: name)
end
