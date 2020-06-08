FactoryBot.define do
  factory :user do
    username              {"test"}
    email                 {"test@gmail.com"}
    address               {"東京都渋谷区"}
    introduction          {"よろしくお願いします。"}
    password              {"000000"}
    password_confirmation {"000000"}
  end
end