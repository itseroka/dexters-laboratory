class ApplicationController < ActionController::Base
    before_action :set_query
    def check_author_role!
      redirect_to root_url, notice: "You don't have access" unless current_user.author
    end
    def set_query
        @query = Post.ransack(params[:q])
      end
end
