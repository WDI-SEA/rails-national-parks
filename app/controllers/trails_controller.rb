class TrailsController < ApplicationController
    def index
        @trail = Trail.all
      end
    
    
      def new
        @trail = Trail.new
      end

      def create
        Trail.create(trail_params)
        redirect_to trails_path
       
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
      def trail_params
        params.require(:trail).permit(:discription, :pathname, :img)
      end
end
