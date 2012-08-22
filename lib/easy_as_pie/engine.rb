module EasyAsPie
  module Rails
    class Engine < ::Rails::Engine
      initializer 'easy as pie config' do
        ActionView::Base.send :include, EasyAsPie::ViewHelper
      end
    end
  end
end