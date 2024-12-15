# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.first || User.create(email: 'example@example.com', password: 'password')

def create_tasks_for_user(user, task_count)
  (1..task_count).each do |i|
    Task.create!(
      name: "Task #{i}",
      description: "Description for task #{i}",
      user_id: user.id
    )
  end
end

# Call the method to create tasks
create_tasks_for_user(user, 10)
