class VisitaDiariasController < ApplicationController
  before_filter :authenticate_usuario!
  # GET /rondas/1/visita_diarias
  # GET /rondas/1/visita_diarias.json
  def index
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diarias = @ronda.visita_diarias.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visita_diarias }
    end
  end

  # GET /ronda/1/visita_diarias/1
  # GET /ronda/1/visita_diarias/1.json
  def show
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diaria = VisitaDiaria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visita_diaria }
    end
  end

  # GET /ronda/1/visita_diarias/new
  # GET /ronda/1/visita_diarias/new.json
  def new
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diaria = @ronda.visita_diarias.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visita_diaria }
    end
  end

  # GET /ronda/1/visita_diarias/1/edit
  def edit
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diaria = VisitaDiaria.find(params[:id])
  end

  # POST /ronda/1/visita_diarias
  # POST /ronda/1/visita_diarias.json
  def create
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diaria = @ronda.visita_diarias.build(params[:visita_diaria])

    respond_to do |format|
      if @visita_diaria.save
        #format.html { redirect_to ronda_path(@ronda), notice: 'Visita diaria fue creada correctamente.' }
        format.html { redirect_to new_ronda_visita_diaria_path(@ronda), notice: 'Visita diaria fue creada correctamente.' }
        format.json { render json: @visita_diaria, status: :created, location: @visita_diaria }
      else
        format.html { render action: "new" }
        format.json { render json: @visita_diaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ronda/1/visita_diarias/1
  # PUT /ronda/1/visita_diarias/1.json
  def update
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diaria = VisitaDiaria.find(params[:id])

    respond_to do |format|
      if @visita_diaria.update_attributes(params[:visita_diaria])
        format.html { redirect_to ronda_path(@ronda), notice: 'Visita diaria fue actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visita_diaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ronda/1/visita_diarias/1
  # DELETE /ronda/1/visita_diarias/1.json
  def destroy
    seleccionarMenu(:rondas)
    @ronda = Ronda.find(params[:ronda_id])
    @visita_diaria = VisitaDiaria.find(params[:id])
    @visita_diaria.destroy

    respond_to do |format|
      format.html { redirect_to ronda_path(@ronda) }
      format.json { head :no_content }
    end
  end
end
