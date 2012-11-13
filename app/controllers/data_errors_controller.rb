class DataErrorsController < ApplicationController
  # GET /data_errors
  # GET /data_errors.json
  def index
    @data_errors = DataError.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data_errors }
    end
  end

  def index_with_bug
    @q = DataError.ransack(params[:q])
    @data_errors = @q.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data_errors }
    end
  end
  # GET /data_errors/1
  # GET /data_errors/1.json
  def show
    @data_error = DataError.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @data_error }
    end
  end

  # GET /data_errors/new
  # GET /data_errors/new.json
  def new
    @data_error = DataError.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @data_error }
    end
  end

  # GET /data_errors/1/edit
  def edit
    @data_error = DataError.find(params[:id])
  end

  # POST /data_errors
  # POST /data_errors.json
  def create
    @data_error = DataError.new(params[:data_error])

    respond_to do |format|
      if @data_error.save
        format.html { redirect_to @data_error, notice: 'Data error was successfully created.' }
        format.json { render json: @data_error, status: :created, location: @data_error }
      else
        format.html { render action: "new" }
        format.json { render json: @data_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /data_errors/1
  # PUT /data_errors/1.json
  def update
    @data_error = DataError.find(params[:id])

    respond_to do |format|
      if @data_error.update_attributes(params[:data_error])
        format.html { redirect_to @data_error, notice: 'Data error was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @data_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_errors/1
  # DELETE /data_errors/1.json
  def destroy
    @data_error = DataError.find(params[:id])
    @data_error.destroy

    respond_to do |format|
      format.html { redirect_to data_errors_url }
      format.json { head :no_content }
    end
  end
end
