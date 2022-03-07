class ProceduresController < ApplicationController
    
   before_action :logged_in_user, only: [:create, :destroy]


    def create
      @procedure = recipes.procedures.build(procedure_params)
      if @procedure.save
        flash[:success] = "レシピを作成しました！"
        redirect_to root_path
      else
        render 'static_pages/home'
      end
    end
  
    def destroy
    end
  
    private
  
      def procedure_params
        params.require(:procedure).permit(:content)
      end
end