require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
  
 #正常系
    context '新規登録がうまくいくとき' do
      it "全て入力されていれば、登録できる" do
        expect(@user).to be_valid
      end
    end
  end

 #異常系
    context '新規登録がうまくいかないとき' do

    #--------------------  nickanme  ------------------------
      it "nicknameが空だと登録できない" do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nicknameを入力してください")
      end

      it "nicknameが11文字以上であれば登録できない" do
        @user.nickname = "aaabbbcccddd"
        @user.valid?
        expect(@user.errors.full_messages).to include("Nicknameは10文字以内で入力してください")
      end

    #--------------------  email  ------------------------
    it "emailが空では登録できない" do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end

    #--------------------  password  ------------------------
    it "passwordが空では登録できない" do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it "passwordがアルファベットのみの場合登録できない" do
        @user.password = "abcdefg"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it "passwordが数字のみの場合登録できない" do
        @user.password = "12345678"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it "passwordが5文字以下であれば登録できない" do
        @user.password = "aaaaa"
        @user.password_confirmation = "aaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
  end
end