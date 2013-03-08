require 'faker'
def seed
15.times do
  Task.create(:task => Faker::Lorem.sentence)
end
end
