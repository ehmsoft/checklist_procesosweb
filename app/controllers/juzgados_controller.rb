class JuzgadosController < ApplicationController
  before_filter :authenticate_usuario!
  # GET /juzgados
  # GET /juzgados.json
  def index
    seleccionarMenu(:juzgados)
    @juzgados = Juzgado.order(:ciudad_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @juzgados }
    end
  end

  # GET /juzgados/1
  # GET /juzgados/1.json
  def show
    seleccionarMenu(:juzgados)
    @juzgado = Juzgado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @juzgado }
    end
  end

  # GET /juzgados/new
  # GET /juzgados/new.json
  def new
    seleccionarMenu(:juzgados)
    @juzgado = Juzgado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @juzgado }
    end
  end

  # GET /juzgados/1/edit
  def edit
    seleccionarMenu(:juzgados)
    @juzgado = Juzgado.find(params[:id])
  end

  # POST /juzgados
  # POST /juzgados.json
  def create
    seleccionarMenu(:juzgados)
    @juzgado = Juzgado.new(params[:juzgado])

    respond_to do |format|
      if @juzgado.save
        format.html { redirect_to @juzgado, notice: 'Juzgado fue creado satisfactoriamente.' }
        format.json { render json: @juzgado, status: :created, location: @juzgado }
      else
        format.html { render action: "new" }
        format.json { render json: @juzgado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /juzgados/1
  # PUT /juzgados/1.json
  def update
    seleccionarMenu(:juzgados)
    @juzgado = Juzgado.find(params[:id])

    respond_to do |format|
      if @juzgado.update_attributes(params[:juzgado])
        format.html { redirect_to @juzgado, notice: 'Juzgado fue actualizado satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @juzgado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juzgados/1
  # DELETE /juzgados/1.json
  def destroy
    seleccionarMenu(:juzgados)
    @juzgado = Juzgado.find(params[:id])
    @juzgado.destroy

    respond_to do |format|
      format.html { redirect_to juzgados_url }
      format.json { head :no_content }
    end
  end
end
