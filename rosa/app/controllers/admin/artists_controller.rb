class Admin::ArtistsController < ApplicationController
  before_action :set_admin_artist, only: [:show, :edit, :update, :destroy]

  # GET /admin/artists
  # GET /admin/artists.json
  def index
    @admin_artists = Admin::Artist.all
  end

  # GET /admin/artists/1
  # GET /admin/artists/1.json
  def show
  end

  # GET /admin/artists/new
  def new
    @admin_artist = Admin::Artist.new
  end

  # GET /admin/artists/1/edit
  def edit
  end

  # POST /admin/artists
  # POST /admin/artists.json
  def create
    @admin_artist = Admin::Artist.new(admin_artist_params)

    respond_to do |format|
      if @admin_artist.save
        format.html { redirect_to @admin_artist, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @admin_artist }
      else
        format.html { render :new }
        format.json { render json: @admin_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/artists/1
  # PATCH/PUT /admin/artists/1.json
  def update
    respond_to do |format|
      if @admin_artist.update(admin_artist_params)
        format.html { redirect_to @admin_artist, notice: 'Artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_artist }
      else
        format.html { render :edit }
        format.json { render json: @admin_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/artists/1
  # DELETE /admin/artists/1.json
  def destroy
    @admin_artist.destroy
    respond_to do |format|
      format.html { redirect_to admin_artists_url, notice: 'Artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_artist
      @admin_artist = Admin::Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_artist_params
      params.require(:admin_artist).permit(:name, :sinopsis)
    end
end
