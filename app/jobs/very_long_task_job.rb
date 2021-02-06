class VeryLongTaskJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep 60
    true # the task was completed correctly
  end
end
