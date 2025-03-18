# frozen_string_literal: true

module SolidusStaticContent
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
      class_option :auto_run_migrations, type: :boolean, default: false
      # Either 'starter' or 'classic'
      class_option :frontend, type: :string, default: 'classic'

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/solidus_static_content\n", before: %r{\*/}, verbose: true # rubocop:disable Metrics/LineLength
      end

      def add_migrations
        run 'bin/rails railties:install:migrations FROM=solidus_static_content'
      end

      def add_javascripts
        empty_directory 'app/assets/javascripts'
      end

      def copy_starter_frontend_files
        return if options[:frontend] != 'starter'

        copy_file 'app/controllers/static_content_controller.rb'
        copy_file 'app/views/static_content/show.html.erb'

        insert_into_file 'config/initializers/spree.rb', after: "Spree.config do |config|\n" do
          <<~RUBY.indent(2)
            config.layout = 'layouts/storefront'

          RUBY
        end
        route <<~ROUTES
          if Spree::Config.layout == 'layouts/storefront'
            constraints(SolidusStaticContent::RouteMatcher) do
              get '/(*path)', to: 'static_content#show', as: 'static'
            end
          end
        ROUTES
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]')) # rubocop:disable Metrics/LineLength
        if run_migrations
          run 'bin/rails db:migrate'
        else
          puts 'Skipping bin/rails db:migrate, don\'t forget to run it!' # rubocop:disable Rails/Output
        end
      end
    end
  end
end
