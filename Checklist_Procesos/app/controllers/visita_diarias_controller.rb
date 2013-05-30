class VisitaDiariasController < ApplicationController
  before_filter :authenticate_usuario!
  # GET /visita_diarias
  # GET /visita_diarias.json
  def index
    @visita_diarias = VisitaDiaria.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visita_diarias }
    end
  end

  # GET /visita_diarias/1
  # GET /visita_diarias/1.json
  def show
    @visita_diaria = VisitaDiaria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visita_diaria }
    end
  end

  # GET /visita_diarias/new
  # GET /visita_diarias/new.json
  def new
    @visita_diaria = VisitaDiaria.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visita_diaria }
    end
  end

  # GET /visita_diarias/1/edit
  def edit
    @visita_diaria = VisitaDiaria.find(params[:id])
  end

  # POST /visita_diarias
  # POST /visita_diarias.json
  def create
    @visita_diaria = VisitaDiaria.new(params[:visita_diaria])

    respond_to do |format|
      if @visita_diaria.save
        format.html { redirect_to @visita_diaria, notice: 'Visita diaria fue creada correctamente.' }
        format.json { render json: @visita_diaria, status: :created, location: @visita_diaria }
      else
        format.html { render action: "new" }
        format.json { render json: @visita_diaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visita_diarias/1
  # PUT /visita_diarias/1.json
  def update
    @visita_diaria = VisitaDiaria.find(params[:id])

    respond_to do |format|
      if @visita_diaria.update_attributes(params[:visita_diaria])
        format.html { redirect_to @visita_diaria, notice: 'Visita diaria fue actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visita_diaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visita_diarias/1
  # DELETE /visita_diarias/1.json
  def destroy
    @visita_diaria = VisitaDiaria.find(params[:id])
    @visita_diaria.destroy

    respond_to do |format|
      format.html { redirect_to visita_diarias_url }
      format.json { head :no_content }
    end
  end
end
