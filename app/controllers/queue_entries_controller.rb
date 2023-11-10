class QueueEntriesController < ApplicationController
    include AdminHelper
  
    before_action :check_admin
  
    def index
      @queue_entries = QueueEntry.all
    end
  
    private
  
    def check_admin
      unless current_user_admin?
        flash[:alert] = "You do not have permission to access this page."
        redirect_to root_path
      end
    end
  end