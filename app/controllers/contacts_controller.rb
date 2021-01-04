class ContactsController < ApplicationController
  before_action :set_contact, only: %i(show update destroy)

  # GET /contacts
  def index
    @contacts ||= Contact.all

    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact, status: :created, location: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
  end

  private
    def set_contact
      @contact = Contact.includes(:address, :phones).find(params[:id])
    end

    def contact_params
      params.require(:contact).
        permit(:name, :email, :kind_id, :remark, 
          address_attributes: [:street, :neighborhood, :state, :country], 
          phones_attributes: [:phone_number, :kind_phone_id]
        )
    end
end
