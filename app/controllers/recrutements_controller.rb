class RecrutementsController < ApplicationController
  before_action :set_recrutement, only: [:show, :edit, :update, :destroy]

  # GET /recrutements
  # GET /recrutements.json
  def index
    @recrutements = Recrutement.all
  end

  # GET /recrutements/1
  # GET /recrutements/1.json
  def show
    @recrutements = Recrutement.all.order('created_at desc')
  end

  # GET /recrutements/new
  def new
    @recrutement = Recrutement.new
  end

  # GET /recrutements/1/edit
  def edit
  end

  # POST /recrutements
  # POST /recrutements.json
  def create
    @recrutement = current_user.recrutements.build(recrutement_params)

    respond_to do |format|
      if @recrutement.save
        format.html { redirect_to @recrutement }
        format.json { render :show, status: :created, location: @recrutement }
      else
        format.html { render :new }
        format.json { render json: @recrutement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recrutements/1
  # PATCH/PUT /recrutements/1.json
  def update
    respond_to do |format|
      if @recrutement.update(recrutement_params)
        format.html { redirect_to @recrutement, notice: 'Recrutement was successfully updated.' }
        format.json { render :show, status: :ok, location: @recrutement }
      else
        format.html { render :edit }
        format.json { render json: @recrutement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recrutements/1
  # DELETE /recrutements/1.json
  def destroy
    @recrutement.destroy
    respond_to do |format|
      format.html { redirect_to recrutements_url, notice: 'Recrutement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recrutement
      @recrutement = Recrutement.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recrutement_params
      params.require(:recrutement).permit(:title, :content, :city, :role, :status, :matiere, :count_job)
    end
end
