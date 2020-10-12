require 'spec_helper'

describe Main::MainController do
  before do
    @main_controller = Main::MainController.new(volt_app)
  end

  it 'should make a new post' do
    store._src = 'www.photo.com/feminism'
    @main_controller.create_post

    expect(store.posts.count.sync).to eq(1)
    expect(the_page._src).to eq('')
  end
end
