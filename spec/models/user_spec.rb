require 'rails_helper'
describe User do
  describe '#create' do
    it "usernameがない場合は登録できないこと" do
      user = build(:user, username: "")
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
    end

    it "emailがない場合は登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("が入力されていません。")
    end

    it "addressがない場合は登録できないこと" do
      user = build(:user, address: "")
      user.valid?
      expect(user.errors[:address]).to include("を入力してください")
    end


  end
end