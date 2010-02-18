class CurriculosController < ApplicationController
  # GET /curriculos
  # GET /curriculos.xml
  def index
    @curriculos = Curriculo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @curriculos }
    end
  end

  # GET /curriculos/1
  # GET /curriculos/1.xml
  def show
    @curriculo = Curriculo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @curriculo }
    end
  end

  # GET /curriculos/new
  # GET /curriculos/new.xml
  def new
    @curriculo = Curriculo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @curriculo }
    end
  end

  # GET /curriculos/1/edit
  def edit
    @curriculo = Curriculo.find(params[:id])
  end

  # POST /curriculos
  # POST /curriculos.xml
  def create
    @curriculo = Curriculo.new(params[:curriculo])

    respond_to do |format|
      if @curriculo.save
        flash[:notice] = 'Curriculo was successfully created.'
        format.html { redirect_to(@curriculo) }
        format.xml  { render :xml => @curriculo, :status => :created, :location => @curriculo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @curriculo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /curriculos/1
  # PUT /curriculos/1.xml
  def update
    @curriculo = Curriculo.find(params[:id])

    respond_to do |format|
      if @curriculo.update_attributes(params[:curriculo])
        flash[:notice] = 'Curriculo was successfully updated.'
        format.html { redirect_to(@curriculo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @curriculo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculos/1
  # DELETE /curriculos/1.xml
  def destroy
    @curriculo = Curriculo.find(params[:id])
    @curriculo.destroy

    respond_to do |format|
      format.html { redirect_to(curriculos_url) }
      format.xml  { head :ok }
    end
  end
end
