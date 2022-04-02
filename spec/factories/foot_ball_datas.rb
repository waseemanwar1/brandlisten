FactoryBot.define do
  factory :foot_ball_data do
    list { FactoryBot.build_list(:team, 5, p: rand(10..30)) }
  end
end
