class SequencersController < ApplicationController
  before_action :set_sequencer, only: %i[ show edit update destroy ]

  # GET /sequencers or /sequencers.json
  def index
    @sequencers = Sequencer.all
  end

  # GET /sequencers/1 or /sequencers/1.json
  def show
  end

  # GET /sequencers/new
  def new
    @sequencer = Sequencer.new
  end

  # GET /sequencers/1/edit
  def edit
  end

  # POST /sequencers or /sequencers.json
  def create
    @sequencer = Sequencer.new(sequencer_params)

    respond_to do |format|
      if @sequencer.save
        format.html { redirect_to @sequencer, notice: "Sequencer was successfully created." }
        format.json { render :show, status: :created, location: @sequencer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sequencer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sequencers/1 or /sequencers/1.json
  def update
    respond_to do |format|
      if @sequencer.update(sequencer_params)
        format.html { redirect_to @sequencer, notice: "Sequencer was successfully updated." }
        format.json { render :show, status: :ok, location: @sequencer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sequencer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sequencers/1 or /sequencers/1.json
  def destroy
    @sequencer.destroy
    respond_to do |format|
      format.html { redirect_to sequencers_url, notice: "Sequencer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequencer
      @sequencer = Sequencer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sequencer_params
      params.require(:sequencer).permit(:sequencer_name, :draft_id, :sequence_position)
    end
end
