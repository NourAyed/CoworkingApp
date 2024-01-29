class CoworksController < ApplicationController
    def new
    end

    def create

      @cowork = Cowork.new(cowork_params)
      if @cowork.save
          session[:cowork_id] = @cowork.id
          redirect_to  root_path, notice: "Successfully created a new cowork"
      else
          #flash[:alert]= "Something was wrong"
          render :new
      end

    end

    private

    def cowork_params 
        params.require(:cowork).permit(:name, :address)
    end
end