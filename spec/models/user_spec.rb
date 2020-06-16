require 'rails_helper'
describe User do
  describe '#create' do

    it "項目を全て入力していれば登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "自己紹介がなくても登録できる" do
      user = build(:user, introduction: "")
      expect(user).to be_valid
    end

    it "ニックネームがない場合は登録できない" do
      user = build(:user, username: "")
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
    end

    it "メールアドレスがない場合は登録できない" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("が入力されていません。")
    end

    it "住所がない場合は登録できない" do
      user = build(:user, address: "")
      user.valid?
      expect(user.errors[:address]).to include("を入力してください")
    end

    it "パスワードがない場合は登録できない" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("が入力されていません。")
    end

    it "パスワードがあっても確認用パスワードがない場合は登録できない" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "登録済みのメールアドレスは登録できない" do
      user = create(:user, email: "aaa@a.com")
      new_user = build(:user, email: "aaa@a.com")
      new_user.valid?
      expect(new_user.errors[:email]).to include("は既に使用されています。")
    end

    it "passwordが7文字以下だと登録できない" do
      user = build(:user, password: "1111111", password_confirmation: "1111111")
      user.valid?
      expect(user.errors[:password]).to include("は8文字以上に設定して下さい。")
    end

    it "passwordが8文字以上だと登録できる" do
      user = build(:user, password: "11111111", password_confirmation: "11111111")
      expect(user).to be_valid
    end
  end
end