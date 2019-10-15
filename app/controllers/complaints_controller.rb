class ComplaintsController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @complaint = Complaint.create(detail:params[:complaint][:detail], user: current_user)
  end
end
