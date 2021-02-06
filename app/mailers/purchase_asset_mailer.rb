class PurchaseAssetMailer < ApplicationMailer
  def send_purchase_confirmation(from:, to:)
    mail(from: from , to: to, subject: "You have purchased this asset")
  end
end
