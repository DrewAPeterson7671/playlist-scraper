class ArtistDraftsController < ApplicationController
  before_action :set_artist_draft, only: %i[ show edit update destroy ]

  # GET /artist_drafts or /artist_drafts.json
  def index
    @artist_drafts = ArtistDraft.all
  end

  # GET /artist_drafts/1 or /artist_drafts/1.json
  def show
  end

  # GET /artist_drafts/new
  def new
    @artist_draft = ArtistDraft.new
  end

  # GET /artist_drafts/1/edit
  def edit
  end

  # POST /artist_drafts or /artist_drafts.json
  def create
    @artist_draft = ArtistDraft.new(artist_draft_params)

    respond_to do |format|
      if @artist_draft.save
        format.html { redirect_to @artist_draft, notice: "Artist draft was successfully created." }
        format.json { render :show, status: :created, location: @artist_draft }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_drafts/1 or /artist_drafts/1.json
  def update
    respond_to do |format|
      if @artist_draft.update(artist_draft_params)
        format.html { redirect_to @artist_draft, notice: "Artist draft was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_draft }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_drafts/1 or /artist_drafts/1.json
  def destroy
    @artist_draft.destroy
    respond_to do |format|
      format.html { redirect_to artist_drafts_url, notice: "Artist draft was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_draft
      @artist_draft = ArtistDraft.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_draft_params
      params.require(:artist_draft).permit(:draft_name, :draft_genre, :artist_id)
    end
end
