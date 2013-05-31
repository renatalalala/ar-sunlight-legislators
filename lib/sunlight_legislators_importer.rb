require 'csv'
require_relative '../app/models/politician'

class SunlightLegislatorsImporter
  def self.import(filename)
    field_list = [:title, :firstname, :middlename, :lastname, :state, :party,
                  :phone, :fax, :gender, :birthdate, :website, :twitter_id,
                  :in_office]
    csv = CSV.new(File.open(filename), :headers => true)
    Politician.transaction do
      csv.each do |row|
        attribute_hash = {}
        row.each do |field, value|
          if field_list.include?(field.to_sym)
            attribute_hash[field.to_sym] = value
          end
          #p attribute_hash
          # p "field: #{field}  "
          # p "value: #{value}"
          # TODO: begin
          # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
          # TODO: end
        end
        p attribute_hash
        politician = Politician.create!(attribute_hash)
      end
    end
  end
end

# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
