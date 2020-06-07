require 'rails_helper'
describe Message do
  describe '#create' do
    it "contentとimageがあれば登録できる" do
      message = build(:message)
      expect(message).to be_valid
    end

    it "imageがなくてもcontentがあれば登録できる" do
      message = build(:message, image: "")
      expect(message).to be_valid
    end

    it "contentがなければ登録できない" do
      message = build(:message, content: "")
      message.valid?
      expect(message.errors[:content]).to include("を入力してください")
    end
  end
end