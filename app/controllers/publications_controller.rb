class PublicationsController < ApplicationController
  before_action :find_publication, only: [:show,:edit,:update,:destroy]
  before_action :authenticate_user!, only: [:new,:create,:edit,:update,:destroy]

  def index
    @publications = Publication.all
  end

  def new
    @publication = Publication.new
    #@publication.title = 'demeo'
  end

  def create
    @publication = Publication.create(title: params[:publication][:title], cuerpo: params[:publication][:cuerpo])
    render json: @publication
  end

  def show
    #@publication = Publication.find(params[:id])

  end

  def edit
    #@publication = Publication.find(params[:id])
  end

  def update
    #@publication = Publication.find(params[:id])
    @publication.update(title: params[:publication][:title], cuerpo: params[:publication][:cuerpo])
    #render json: @publication
    redirect_to @publication
  end

  def destroy
    #@publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to root_path
  end

  def find_publication
    @publication = Publication.find(params[:id])
  end



end
