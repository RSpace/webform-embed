class EmbedsController < ApplicationController
  before_action :set_embed, only: [:show, :edit, :update, :destroy]

  # GET /embeds
  # GET /embeds.json
  def index
    @embeds = Embed.all
  end

  # GET /embeds/1
  # GET /embeds/1.json
  def show
  end

  # GET /embeds/new
  def new
    @embed = Embed.new
  end

  # GET /embeds/1/edit
  def edit
  end

  # POST /embeds
  # POST /embeds.json
  def create
    @embed = Embed.new(embed_params)

    respond_to do |format|
      if @embed.save
        format.html { redirect_to @embed, notice: 'Embed was successfully created.' }
        format.json { render :show, status: :created, location: @embed }
      else
        format.html { render :new }
        format.json { render json: @embed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embeds/1
  # PATCH/PUT /embeds/1.json
  def update
    respond_to do |format|
      if @embed.update(embed_params)
        format.html { redirect_to @embed, notice: 'Embed was successfully updated.' }
        format.json { render :show, status: :ok, location: @embed }
      else
        format.html { render :edit }
        format.json { render json: @embed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embeds/1
  # DELETE /embeds/1.json
  def destroy
    @embed.destroy
    respond_to do |format|
      format.html { redirect_to embeds_url, notice: 'Embed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embed
      @embed = Embed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def embed_params
      params.require(:embed).permit(:title, :app_id, :webform_id, :environment)
    end
end
