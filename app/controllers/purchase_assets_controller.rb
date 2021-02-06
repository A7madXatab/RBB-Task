class PurchaseAssetsController < ApplicationController
  def create
    VeryLongTaskJob.perform_now
    PurchaseAssetMailer.send_purchase_confirmation from: params[:owner], to: params[:buyer]

    redirect_to root_path, notice: "You Have purchased this asset successfully"
  end
end
