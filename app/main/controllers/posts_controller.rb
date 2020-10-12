module Main
  class PostsController < Volt::ModelController
    model :store

    def increase_music
      self.music += 1
    end

    def increase_star
      self.star += 1
    end

    def increase_ok
      self.ok += 1
    end

    def increase_upload
      self.upload += 1
    end

    def increase_flasher
      self.flasher += 1
    end

    def increase_up
      self.up += 1
    end
  end
end
