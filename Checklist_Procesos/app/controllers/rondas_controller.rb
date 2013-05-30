class RondasController < ApplicationController
  before_filter :authenticate_usuario!
  # GET /rondas
  # GET /rondas.json
  def index
    @rondas = Ronda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rondas }
    end
  end

  # GET /rondas/1
  # GET /rondas/1.json
  def show
    @ronda = Ronda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ronda }
    end
  end

  # GET /rondas/new
  # GET /rondas/new.json
  def new
    @ronda = current_usuario.rondas.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ronda }
    end
  end

  # GET /rondas/1/edit
  def edit
    @ronda = Ronda.find(params[:id])
  end

  # POST /rondas
  # POST /rondas.json
  def create
    @ronda = current_usuario.rondas.build(params[:ronda])

    respond_to do |format|
      if @ronda.save
        format.html { redirect_to @ronda, notice: 'Ronda creada satisfactoriamente.' }
        format.json { render json: @ronda, status: :created, location: @ronda }
      else
        format.html { render action: "new" }
        format.json { render json: @ronda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rondas/1
  # PUT /rondas/1.json
  def update
    @ronda = Ronda.find(params[:id])

    respond_to do |format|
      if @ronda.update_attributes(params[:ronda])
        format.html { redirect_to @ronda, notice: 'Ronda actualizada satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ronda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rondas/1
  # DELETE /rondas/1.json
  def destroy
    @ronda = Ronda.find(params[:id])
    @ronda.destroy

    respond_to do |format|
      format.html { redirect_to rondas_url }
      format.json { head :no_content }
    end
  end
end
