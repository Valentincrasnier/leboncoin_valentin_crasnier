class AnnoncesController < ApplicationController

  def index
    @annonces = Annonce.all
  end

  def show
    @annonce = Annonce.find(params[:id])
  end

  def new
    @annonce = Annonce.new
  end

  def create
    annonce = Annonce.new(annonce_params)
    annonce.user_id = current_user.id
    annonce.save
    redirect_to root_path
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def update
    @annonce = Annonce.find(params[:id])
    @annonce.update(annonce_params)
    redirect_to mes_annonces_path
  end

  def destroy
    annonce = Annonce.find(params[:id])
    annonce.destroy
    redirect_to root_path
  end

  def mes_annonces
    @annonces = Annonce.getAnnoncesByUser(current_user.id)
  end
  private

      # Never trust parameters from the scary internet, only allow the white list through.
    def annonce_params
      params.require(:annonce).permit(:user_id, :titre, :description, :prix, :image, :categorie_id)
    end
end
