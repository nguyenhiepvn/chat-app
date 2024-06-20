class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  #   Với mối quan hệ has_many :users, through: :room_users, bạn có thể truy vấn tất cả người dùng trong một phòng một cách đơn giản:
  #   room = Room.find(1)
  # users_in_room = room.users
  validates :name, presence: true
end
