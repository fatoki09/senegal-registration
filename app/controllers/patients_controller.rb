class PatientsController < ApplicationController

	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.new(patient_params)
	  
	  if @patient.save
	    redirect_to @patient
	  else
	    render 'new'
	  end
	end

	def edit
	  @patient = Patient.find(params[:id])
	end

	def show
	  @patient = Patient.find(params[:id])
	end

	def index
	  @patients = Patient.all
	end

	def update
	  @patient = Patient.find(params[:id])
	 
	  if @patient.update(params[:patient].permit(:name, :address, :phone_number, :interested))
	    redirect_to @patient
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @patient = Patient.find(params[:id])
	  @patient.destroy
	 
	  redirect_to patients_path
	end

private
  def patient_params
    params.require(:patient).permit(:name, :address, :phone_number, :interested)
  end

end
