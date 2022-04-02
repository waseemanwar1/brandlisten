FactoryBot.define do
  factory :team do
    name { Faker::Name.unique.name }
    w { rand(10..30) }
    l { rand(10..30) }
    d { rand(10..30) }
    f { rand(10..30) }
    a { rand(10..30) }
    raw { rand(10..30) }
    pts { rand(10..30) }
  end
end
