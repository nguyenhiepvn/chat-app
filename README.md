
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
