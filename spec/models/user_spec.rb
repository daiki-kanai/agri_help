require 'rails_helper'
describe User do
  describe '#create' do
    it "usernameがない場合は登録できないこと" do
      user = User.new(username: "", email: "kkk@gmail.com", password: "000000", address: "東京都渋谷区", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
    end
  end
end