guitars = [
    {
        model: 'Gibson',
        year: 2000
    },
    {
        model: 'Fender',
        year: 1999
    }
]

# The transaction block below
# ensures that either ALL operations
# are successful or NONE of them 
# are persisted and the database is 
# rolled back to its version prior 
# to the beginning of the transaction
ActiveRecord::Base.transaction do
    Guitar.create!(guitars)
end

puts 'Created'