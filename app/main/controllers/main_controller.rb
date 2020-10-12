# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store
    reactive_accessor :_src

    def index
      self._src = ''
    end

    def about
      # Add code for when the about view is loaded
    end

    def create_post
      if _src.present?
        posts << {
          src: _src,
          music: 0,
          star: 0,
          ok: 0,
          upload: 0,
          flasher: 0,
          up: 0
        }
        index
      end
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
