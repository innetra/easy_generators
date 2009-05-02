class EasyLayoutGenerator < Rails::Generator::Base
  def manifest
    record do |m|

      # CSS rules for EasyNavigation
      m.directory("public/stylesheets/sass")
      m.template "stylesheets/sass/application.sass", "public/stylesheets/sass/application.sass"

      m.directory("public/images")
      m.file "images/body_bg.png", "public/images/body_bg.png"

      m.directory("app/helpers")
      m.template "helpers/shadowbox_helper.rb", "app/helpers/shadowbox_helper.rb"

      m.directory("app/views/layouts")
      m.template "layouts/application.haml", "app/views/layouts/application.haml"

    end
  end
end
