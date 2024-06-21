
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
config.generators do |g| ... end: Khối code này định nghĩa một block với biến g đại diện cho đối tượng Generators. Biến này cho phép bạn thao tác các cấu hình của generators.
g.stylesheets false: Cấu hình này tắt việc tạo ra file stylesheet (CSS) mới khi bạn tạo một controller, model hoặc view mới.
g.javascripts false: Cấu hình này tắt việc tạo ra file Javascript mới khi bạn tạo một controller, model hoặc view mới.
g.helper false: Cấu hình này tắt việc tạo ra file helper mới khi bạn tạo một controller, model hoặc view mới.
g.test_framework false: Cấu hình này tắt việc tạo ra các file test framework (ví dụ: RSpec hoặc Minitest) khi bạn tạo một controller, model hoặc view mới.

  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end

  <%= render partial: 'message', collection: @messages %>

 config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    <%= l message.created_at %>
    l : localize

<%= link_to "チャットを終了する", room_path(@room), data: { turbo_method: :delete } %> 
    
    Khi người dùng nhấp vào liên kết, thay vì gửi một yêu cầu GET (hành vi mặc định của các liên kết), liên kết này sẽ gửi một yêu cầu HTTP DELETE đến URL được tạo bởi room_path(@room).
Điều này có nghĩa là nó sẽ kích hoạt hành động destroy trong controller rooms_controller (theo mặc định của Rails RESTful routing), thường để xóa phòng chat hiện tại (@room).

class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users  
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end

 dependent: :destroy
When a Room instance is deleted, all associated RoomUser records will also be automatically deleted.

//////

brew install imagemagick
gem 'mini_magick'
gem 'image_processing', '~> 1.2'

/////

