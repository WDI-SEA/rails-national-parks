class TrailsController < ApplicationController
    def index
        @trail = Trail.all
      end
    
      def create
        Trail.create(trail_params)
        redirect_to trails_path
      end
    
      def new
        @trail = Trail.new
      end
    
      def edit
        @trail = Trail.find(params[:id])
      end
    
      def show
        @trail = Trail.find(params[:id])
      end
    
      def update
        t = Trail.find(params[:id])
        t.update(trail_params)
        redirect_to trails_path
      end
    
      def destroy
        Tweet.find(params[:id]).delete
        redirect_to trails_path
      end
    
      private
      # this is used to prevent mass assiginment of params 
      def tweet_params
        params.require(:trail).permit(:description, :pathname)
      end
end
