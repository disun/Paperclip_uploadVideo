class VidsController < ApplicationController
  # GET /vids
  # GET /vids.json
  def index
    @vids = Vid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vids }
    end
  end

  # GET /vids/1
  # GET /vids/1.json
  def show
    @vid = Vid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vid }
    end
  end

  # GET /vids/new
  # GET /vids/new.json
  def new
    @vid = Vid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vid }
    end
  end

  # GET /vids/1/edit
  def edit
    @vid = Vid.find(params[:id])
  end

  # POST /vids
  # POST /vids.json
  def create
    @vid = Vid.new(params[:vid])

    respond_to do |format|
      if @vid.save
        format.html { redirect_to @vid, notice: 'Vid was successfully created.' }
        format.json { render json: @vid, status: :created, location: @vid }
      else
        format.html { render action: "new" }
        format.json { render json: @vid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vids/1
  # PUT /vids/1.json
  def update
    @vid = Vid.find(params[:id])

    respond_to do |format|
      if @vid.update_attributes(params[:vid])
        format.html { redirect_to @vid, notice: 'Vid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vids/1
  # DELETE /vids/1.json
  def destroy
    @vid = Vid.find(params[:id])
    @vid.destroy

    respond_to do |format|
      format.html { redirect_to vids_url }
      format.json { head :no_content }
    end
  end
end
