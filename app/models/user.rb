class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :first_name_kana
          validates :last_name_kana
          validates :first_name
          validates :last_name
          validates :birth
        end
end

# バリデーションとは：DBに保存していいかどうかを審査する
# ちゃんと正しい形式なのか、（例）カタカナかどうか
# バリデーションに書くのは、カラムと正規表現