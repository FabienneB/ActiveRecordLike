require_relative './active_records_like.rb'

class Bicycle
  include ActiveRecordsLike
end

# p Bicycle.new(type: "Mountain").save
# p Bicycle.new(type: "Mountain").save
# p Bicycle.all
