FactoryBot.define do
    factory :user do
      nickname { 'Test User' }
      email { 'test@example.com' }
      password { 'password' }
      first_name { 'テスト' }
      last_name { 'テスト' }
      first_name_kana{ 'テスト' }
      last_name_kana{ 'テスト' }
      birth{ '2000-1-1' }
    end
  end