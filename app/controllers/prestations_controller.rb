class PrestationsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_prestation, only: [:show, :edit, :update, :destroy]

  # GET /prestations
  # GET /prestations.json
  def index
    @prestations = Prestation.order("prestation_date DESC")
    @prestation = Prestation.new

    @matters = Matter.all
    @matter = Matter.new

    @invoices = Invoice.all
    @invoice = Invoice.new

    @payments = Payment.all
    @payment = Payment.new
  end

  # GET /prestations/1
  # GET /prestations/1.json
  def show
  end

  # GET /prestations/new
  def new
    @prestation = Prestation.new
  end

  # GET /prestations/1/edit
  def edit
  end

  # POST /prestations
  # POST /prestations.json
  def create
    @prestation = Prestation.new(prestation_params)
    @matter = Matter.find(params[:prestation][:matter_id])

    respond_to do |format|
      if @prestation.save
        format.html { redirect_to edit_prestation_path(@prestation), notice: 'Prestation was successfully created.' }
        format.json { render :show, status: :created, location: @prestation }
      else
        format.html { render :new }
        format.json { render json: @prestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestations/1
  # PATCH/PUT /prestations/1.json
  def update
    respond_to do |format|
      if @prestation.update(prestation_params)
        format.html { redirect_to prestations_path, notice: 'Prestation was successfully updated.' }
        format.json { render :show, status: :ok, location: @prestation }
      else
        format.html { render :edit }
        format.json { render json: @prestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestations/1
  # DELETE /prestations/1.json
  def destroy
    @prestation.destroy
    respond_to do |format|
      format.html { redirect_to prestations_url, notice: 'Prestation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def follow
    @prestation = Prestation.find(params[:format])
    @invoice = Invoice.find(params[:id])
    @prestation.follow(@invoice)
    redirect_to :back
  end

  def unfollow
    @invoice = Invoice.find(params[:format])
    @prestation = Prestation.find(params[:id])
    @prestation.stop_following(@invoice)
    redirect_to :back
  end

  def invoice_follow
    @invoice = Invoice.find(params[:format])
    @prestation = Prestation.find(params[:id])
    @invoice.follow(@prestation)
    redirect_to :back
  end

  def invoice_unfollow
    @invoice = Invoice.find(params[:format])
    @prestation = Prestation.find(params[:id])
    @invoice.stop_following(@prestation)
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestation
      @prestation = Prestation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestation_params
      params.require(:prestation).permit(:matter_id, :prestation_date, :details, :rate, :fixed_price, :amount, :code, :libelle, :rate_unit, :expense, :invoice_id)
    end
end
