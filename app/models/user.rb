class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :first_name_kana, format: { with: /[\p{katakana}ｧ-ﾝﾞﾟa-zA-Z0-9｡-ﾟーa-zａ-ｚＡ-Ｚ０-９々〆〤]/, message: 'を入力してください' }
          validates :last_name_kana,  format: { with: /[\p{katakana}ｧ-ﾝﾞﾟa-zA-Z0-9｡-ﾟーa-zａ-ｚＡ-Ｚ０-９々〆〤]/, message: 'を入力してください' }
          validates :first_name,  format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'を入力してください' }
          validates :last_name,  format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'を入力してください' }
          validates :birth
          validates :nickname
          
        end
end

