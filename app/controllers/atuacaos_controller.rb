class AtuacaosController < ApplicationController
  before_action :set_atuacao, only: %i[ show edit update destroy ]

  # GET /atuacaos or /atuacaos.json
  def index
    @atuacaos = Atuacao.all
  end

  # GET /atuacaos/1 or /atuacaos/1.json
  def show
  end

  # GET /atuacaos/new
  def new
    @atuacao = Atuacao.new
  end

  # GET /atuacaos/1/edit
  def edit
  end

  # POST /atuacaos or /atuacaos.json
  def create
    @atuacao = Atuacao.new(atuacao_params)

    respond_to do |format|
      if @atuacao.save
        format.html { redirect_to atuacao_url(@atuacao), notice: "Atuacao was successfully created." }
        format.json { render :show, status: :created, location: @atuacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atuacaos/1 or /atuacaos/1.json
  def update
    respond_to do |format|
      if @atuacao.update(atuacao_params)
        format.html { redirect_to atuacao_url(@atuacao), notice: "Atuacao was successfully updated." }
        format.json { render :show, status: :ok, location: @atuacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atuacaos/1 or /atuacaos/1.json
  def destroy
    @atuacao.destroy

    respond_to do |format|
      format.html { redirect_to atuacaos_url, notice: "Atuacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atuacao
      @atuacao = Atuacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atuacao_params
      params.require(:atuacao).permit(:ator_id, :filme_id, :nome_do_personagem)
    end
end
