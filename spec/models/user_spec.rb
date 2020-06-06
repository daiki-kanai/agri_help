require 'rails_helper'
describe User do
  describe '#create' do
    it "usernameがない場合は登録できないこと" do
      user = build(:user, username: "")
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
    end
  end
end