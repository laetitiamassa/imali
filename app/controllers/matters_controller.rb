class MattersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_matter, only: [:show, :edit, :update, :destroy]
  

  # GET /matters
  # GET /matters.json
  def index
    @matters = Matter.all
    @matter = Matter.new

    @invoices = Invoice.all
    @invoice = Invoice.new

    @prestations = Prestation.all
    @prestation = Prestation.new

    @payment = Payment.all
    @payment = Payment.new
  end

  # GET /matters/1
  # GET /matters/1.json
  def show


    @invoices = Invoice.all
    @invoice = Invoice.new

    @prestations = Prestation.all
    @prestation = Prestation.new

    @payment = Payment.all
    @payment = Payment.new
  end

  # GET /matters/new
  def new
    @matter = @client.matters.new
  end

  # GET /matters/1/edit
  def edit
  end

  # POST /matters
  # POST /matters.json
  def create
    @matter = Matter.new(matter_params)
    @client = Client.find(params[:matter][:client_id])

    respond_to do |format|
      if @matter.save
        format.html { redirect_to edit_matter_path(@matter), notice: 'Matter was successfully created.' }
        format.json { render :show, status: :created, location: @matter }
      else
        format.html { render :new }
        format.json { render json: @matter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matters/1
  # PATCH/PUT /matters/1.json
  def update
    respond_to do |format|
      if @matter.update(matter_params)
        format.html { redirect_to matters_path, notice: 'Matter was successfully updated.' }
        format.json { render :show, status: :ok, location: @matter }
      else
        format.html { render :edit }
        format.json { render json: @matter.errors, status: :unprocessable_entity }
      end
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter
      @matter = Matter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_params
      params.require(:matter).permit(:client_id, :opening_date, :closing_date, :description, :stage, :jurisdiction, :matter_value, :name)
    end
end
