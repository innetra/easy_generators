class EasyLayoutGenerator < Rails::Generator::Base
  def manifest
    record do |m|

      # CSS rules for EasyNavigation
      m.directory("public/stylesheets/sass")
      m.file "stylesheets/sass/application.sass", "public/stylesheets/sass/application.sass"

      m.directory("public/images")
      m.file "images/body_bg.png", "public/images/body_bg.png"

      m.directory("app/helpers")
      m.file "helpers/form_helper.rb", "app/helpers/form_helper.rb"
      m.file "helpers/layout_helper.rb", "app/helpers/layout_helper.rb"
      m.file "helpers/shadowbox_helper.rb", "app/helpers/shadowbox_helper.rb"

      m.directory("app/views/layouts")
      m.file "layouts/application.haml", "app/views/layouts/application.haml"

      m.directory("config/initializers")
      m.file "config/initializers/rails_teaks.rb", "config/initializers/rails_teaks.rb"

    end
  end
end
