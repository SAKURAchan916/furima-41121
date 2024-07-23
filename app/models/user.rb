class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :first_name_kana, format: { with:  /\A[\p{katakana}\u{30fc}]+\z/ }
          validates :last_name_kana,  format: { with:  /\A[\p{katakana}\u{30fc}]+\z/ }
          validates :first_name,  format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'を入力してください' }
          validates :last_name,  format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'を入力してください' }
          validates :birth
          validates :nickname
          validates :password, format: {
            with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
           }          
        end
end

