require 'rails_helper'
describe User do
  describe '#create' do
    it "nicknameがない場合は登録できないこと" do
      user = User.new(username: "", email: "kkk@gmail.com", password: "0000000", address: "東京都渋谷区", password_confirmation: "0000000")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end