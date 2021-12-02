class AlbumListsController < ApplicationController
  before_action :set_album_list, only: %i[ show edit update destroy ]

  # GET /album_lists or /album_lists.json
  def index
    @album_lists = AlbumList.all
  end

  # GET /album_lists/1 or /album_lists/1.json
  def show
  end

  # GET /album_lists/new
  def new
    @album_list = AlbumList.new
  end

  # GET /album_lists/1/edit
  def edit
  end

  # POST /album_lists or /album_lists.json
  def create
    @album_list = AlbumList.new(album_list_params)

    respond_to do |format|
      if @album_list.save
        format.html { redirect_to @album_list, notice: "Album list was successfully created." }
        format.json { render :show, status: :created, location: @album_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @album_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_lists/1 or /album_lists/1.json
  def update
    respond_to do |format|
      if @album_list.update(album_list_params)
        format.html { redirect_to @album_list, notice: "Album list was successfully updated." }
        format.json { render :show, status: :ok, location: @album_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @album_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_lists/1 or /album_lists/1.json
  def destroy
    @album_list.destroy
    respond_to do |format|
      format.html { redirect_to album_lists_url, notice: "Album list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_list
      @album_list = AlbumList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_list_params
      params.require(:album_list).permit(:album_list_name, :album_id, :artist_id, :album_position, :list_source)
    end
end
