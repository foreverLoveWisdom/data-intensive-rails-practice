class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # only experiment this for dev env
  if Rails.env.development?
    connects_to database: { writing: :primary, reading: :replica }
  end
end
