require 'rails_helper'
describe Message do
  describe '#create' do
    it "contentとimageがあれば投稿できる" do
      user = create(:user)
      room = create(:room)
      message = build(:message, user_id: user.id, room_id: room.id)
      expect(message).to be_valid
    end

    it "imageがなくてもcontentがあれば登録できる" do
      user = create(:user)
      room = create(:room)
      message = build(:message, image: "", user_id: user.id, room_id: room.id)
      expect(message).to be_valid
    end

    it "contentがなければ登録できない" do
      user = create(:user)
      room = create(:room)
      message = build(:message, content: "", user_id: user.id, room_id: room.id)
      message.valid?
      expect(message.errors[:content]).to include("を入力してください")
    end
  end
end