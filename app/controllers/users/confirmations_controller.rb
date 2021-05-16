class Users::ConfirmationsController < ApplicationController
  
  def create
    report = Report.find(params[:report_id])
    # confirmation.user_id = current_user.idが済んだ状態で生成
    confirmation = current_user.confirmations.build(report_id: params[:report_id])
    confirmation.save
    redirect_back(fallback_location:root_path)
  end

  def destroy
    report = Report.find(params[:report_id])
    confirmation = current_user.confirmations.find_by(report_id: params[:report_id])
    confirmation.destroy
    redirect_back(fallback_location:root_path)
  end
end
