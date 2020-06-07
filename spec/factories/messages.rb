FactoryBot.define do
  factory :message do
    content  {"テストです。"}
    image    {"test.jpg"}
    user     {build(:user)}
    room     {build(:room)}
  end
end