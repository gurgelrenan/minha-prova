# RailsAdmin config file. Generated on November 13, 2013 23:34
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  ################  Global configuration  ################
  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Minha Prova', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = ['College', 'Core', 'Course', 'Discipline', 'Teacher', 'Test', 'User']

  # Include specific models (exclude the others):
  # config.included_models = ['College', 'Core', 'Course', 'Discipline', 'Teacher', 'Test', 'User']

  # Label methods for model instances:
  config.label_methods << :description # Default is [:name, :title]

  config.model LevelQuestion do 
    edit do 
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
      field :value
    end
    field :value 
  end
end
