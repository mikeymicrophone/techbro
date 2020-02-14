class BenefactorsController < ApplicationController
  before_action :set_benefactor, only: [:show, :edit, :update, :destroy]

  # GET /benefactors
  # GET /benefactors.json
  def index
    @benefactors = Benefactor.all
  end

  # GET /benefactors/1
  # GET /benefactors/1.json
  def show
  end

  # GET /benefactors/new
  def new
    @benefactor = Benefactor.new
  end

  # GET /benefactors/1/edit
  def edit
  end

  # POST /benefactors
  # POST /benefactors.json
  def create
    @benefactor = Benefactor.new(benefactor_params)

    respond_to do |format|
      if @benefactor.save
        format.html { redirect_to @benefactor, notice: 'Benefactor was successfully created.' }
        format.json { render :show, status: :created, location: @benefactor }
      else
        format.html { render :new }
        format.json { render json: @benefactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benefactors/1
  # PATCH/PUT /benefactors/1.json
  def update
    respond_to do |format|
      if @benefactor.update(benefactor_params)
        format.html { redirect_to @benefactor, notice: 'Benefactor was successfully updated.' }
        format.json { render :show, status: :ok, location: @benefactor }
      else
        format.html { render :edit }
        format.json { render json: @benefactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefactors/1
  # DELETE /benefactors/1.json
  def destroy
    @benefactor.destroy
    respond_to do |format|
      format.html { redirect_to benefactors_url, notice: 'Benefactor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefactor
      @benefactor = Benefactor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def benefactor_params
      params.require(:benefactor).permit(:moniker)
    end
end
