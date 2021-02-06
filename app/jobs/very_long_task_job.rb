class VeryLongTaskJob < ApplicationJob
  queue_as :default

  def perform(from:, to:)
    sleep 60
    PurchaseAssetMailer.send_purchase_confirmation from:from, to: to
    true # the task was completed correctly
  end
end
