require 'rails_helper'
describe Message do
  describe '#create' do
    it "contentとimageがあれば登録できる" do
      message = build(:message)
      expect(message).to be_valid
    end

  end
end