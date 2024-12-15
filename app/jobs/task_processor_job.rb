# frozen_string_literal: true

class TaskProcessorJob < ApplicationJob
  queue_as :default

  def perform(task_id)
    Task.find(task_id)
    # process task logic here
  end
end
