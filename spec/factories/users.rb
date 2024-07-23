FactoryBot.define do
    factory :user do
      nickname { 'Test User' }
      email{Faker::Internet.email}
      password { 'password1111' }
      password_confirmation{ 'password1111' }
      first_name { 'テスト' }
      last_name { 'テスト' }
      first_name_kana{ 'テスト' }
      last_name_kana{ 'テスト' }
      birth{ '2000-1-1' }
    end
  end