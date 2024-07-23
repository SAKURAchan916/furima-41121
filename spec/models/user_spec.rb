require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'すべての情報が存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
  
  it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
  end
  it 'emailが空では登録できない' do
    @user.email = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Email can't be blank")
  end
  it '重複したメールアドレスは登録できない' do
    @user.save
    another_user = FactoryBot.build(:user, email: @user.email)
    another_user.valid?
    expect(another_user.errors.full_messages).to include('Email has already been taken')
  end
  it 'メールアドレスに@を含まない場合は登録できない' do
    @user.email = 'aaaa.com'
    @user.valid?
    expect(@user.errors.full_messages).to include('Email is invalid')
  end
  it 'first_nameが空では登録できない' do
    @user.first_name = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("First name can't be blank")
  end
  it 'last_nameが空では登録できない' do
    @user.last_name = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Last name can't be blank")
  end
  it 'first_name_kanaが空では登録できない' do
    @user.first_name_kana = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("First name kana can't be blank")
  end
  it 'last_name_kanaが空では登録できない' do
    @user.last_name_kana = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Last name kana can't be blank")
  end
  it 'birthが空では登録できない' do
    @user.birth = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Birth can't be blank")
  end
  it 'パスワードが空では登録できない' do
    @user.password = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Password can't be blank")
  end
  it 'パスワードが6文字未満では登録できない' do
    @user.password = 'a1a1a'
    @user.valid?
    expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
  end
  it '英字のみのパスワードでは登録できない' do
    @user.password = 'aaaaaa'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password is invalid")
  end
  it '数字のみのパスワードでは登録できない' do
    @user.password = '111111'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password is invalid")
  end
  it '全角文字を含むパスワードでは登録できない' do
    @user.password = 'あかさたな'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password is invalid")
  end
  it 'パスワードとパスワード（確認用）が不一致だと登録できない' do
    @user.password = 'passward2222'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end
  it '姓（全角）に半角文字が含まれていると登録できない' do
    @user.last_name = 'aaaaa'
    @user.valid?
    expect(@user.errors.full_messages).to include("Last name を入力してください")
  end
  it '名（全角）に半角文字が含まれていると登録できない' do
    @user.first_name = 'aaaaa'
    @user.valid?
    expect(@user.errors.full_messages).to include("First name を入力してください")
  end
  it '名（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
    @user.first_name_kana = 'あ愛a1!'
    @user.valid?
    expect(@user.errors.full_messages).to include("First name kana is invalid")
  end
  it '姓（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
    @user.last_name_kana = 'あ愛a1!'
    @user.valid?
    expect(@user.errors.full_messages).to include("Last name kana is invalid")
  end

  
  # pending "add some examples to (or delete) #{__FILE__}"
end
end
end
