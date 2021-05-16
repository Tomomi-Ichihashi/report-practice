class Users::ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end
  
  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to report_path(@report), notice: "You have created report successfully."
    else
      @report = Report.all
      render 'index'
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
    @report = Report.find(params[:id])
  end
  
  def update
    @report = Report.find(params[:id])
    if @report.update(report_params)
      redirect_to report_path(@report), notice: "You have updated report successfully."
    else
      render 'edit'
    end
  end
  
  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to user_path(@report.user_id)
  end
  
  private
  
  def report_params
    params.require(:report).permit(:user_id, :client_id, :body, :start_visit, :finish_visit)
  end
  
  
end
