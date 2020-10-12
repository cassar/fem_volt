require 'spec_helper'

describe Main::PostsController do
  before do
    @posts_controller = Main::PostsController.new(volt_app)
    store.posts.create(src: 'www.photo.com', music: 0).sync
  end
end
