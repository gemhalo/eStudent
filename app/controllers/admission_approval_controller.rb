class AdmissionApprovalController < ApplicationController
  def list
    @users=User.all
  end

  def show_list
    @users=User.all
  end

  def details
    @user=User.find(params[:id])
  end

end
