class InscriptionController < ApplicationController
    def new
    end

    def create

      @inscription = Inscription.new(inscription_params)
      if @inscription.save
          session[:inscription_id] = @inscription.id
          redirect_to  root_path, notice: "Cowork Request Submitted"
      else
          #flash[:alert]= "Something was wrong"
          render :new
      end

    end

end