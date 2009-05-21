class EasyLayoutGenerator < Rails::Generator::Base
  def manifest
    record do |m|

      # CSS rules for EasyNavigation
      m.directory("public/stylesheets/sass")
      m.file "stylesheets/sass/application.sass", "public/stylesheets/sass/application.sass"
      m.file "stylesheets/sass/default.sass", "public/stylesheets/sass/default.sass"

      m.directory("public/stylesheets/sass/template")
      m.file "stylesheets/sass/template/default.sass", "public/stylesheets/sass/template/default.sass"
      m.file "stylesheets/sass/template/init.sass", "public/stylesheets/sass/template/init.sass"

      m.directory("public/images")
      m.file "images/1px.gif", "public/images/1px.gif"
      m.file "images/innetra-logo-small.png", "public/images/innetra-logo-small.png"
      m.file "images/head-background.png", "public/images/head-background.png"

      m.directory("app/helpers")
      m.file "helpers/form_helper.rb", "app/helpers/form_helper.rb"
      m.file "helpers/layout_helper.rb", "app/helpers/layout_helper.rb"
      m.file "helpers/search_helper.rb", "app/helpers/search_helper.rb"
      m.file "helpers/shadowbox_helper.rb", "app/helpers/shadowbox_helper.rb"

      m.directory("app/views/layouts")
      m.file "layouts/application.haml", "app/views/layouts/application.haml"

      m.directory("config/initializers")
      m.file "config/initializers/rails_teaks.rb", "config/initializers/rails_teaks.rb"

    end
  end
end
