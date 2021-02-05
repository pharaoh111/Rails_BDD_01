require 'faker'


def generate_dogs
  Dog.destroy_all
  i = 0
  while i < 50
    Dog.create(dog_name: Faker::Name.first_name)
    i += 1
  end
end

def generate_city
  City.destroy_all
  i = 0
  while i < 20
    City.create(city_name: Faker::Address.city)
    i += 1
  end
end

def generate_sitters
  Dogsitter.destroy_all
  i = 0
  while i < 30
    Dogsitter.create(name: Faker::Name.name)
    i += 1
  end
end

def generate_stroll
  Stroll.destroy_all
  i = 0
  while i < 150
    d = Dog.all.sample.id
    ds = Dogsitter.all.sample.id
    c = City.all.sample.id
    Stroll.create(
      dog_id: d,
      dogsitter_id: ds,
      city_id: c
    )
    i += 1
  end
end


generate_dogs
generate_city
generate_sitters
generate_stroll

