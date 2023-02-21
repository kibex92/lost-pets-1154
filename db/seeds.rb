
puts "Creating pets..."
20.times do
  name = Faker::Games::SuperMario.character
  address = Faker::Movies::Hobbit.location
  species = Pet::SPECIES.sample
  found_on = Date.today - rand(1..14)
  pet = Pet.new(name: name, address: address, species: species, found_on: found_on)
  pet.save!
end

puts "Done!"