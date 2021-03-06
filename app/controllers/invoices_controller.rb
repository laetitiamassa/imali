class InvoicesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]

  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = Invoice.order("invoice_duedate ASC")
    @invoice = Invoice.new
    
    @matters = Matter.order("updated_at DESC")
    @matter = Matter.new

    @clients = Client.order("updated_at DESC")

    @prestations = Prestation.all
      @prestation = Prestation.new

      @payments = Payment.all
      @payment = Payment.new

      
      
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "Facture #{@invoice.invoice_number}", :layout => 'pdf.html.erb'
      end
    end

  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoices/1/edit
  def edit
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)
    @matter = Matter.find(params[:invoice][:matter_id])

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to edit_invoice_path(@invoice), notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to invoices_path, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:matter_id, :invoice_number, :invoice_date, :invoice_duedate)
    end
end
