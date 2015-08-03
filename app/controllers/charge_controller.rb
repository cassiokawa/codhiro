class ChargeController < ApplicationController
	
	before_action :authenticate_user!

	def free
		project = Project.find(params[:project_id])
		current_user.subscriptions.create(project: project)

		redirect_to project
	end


	def pay
		project = Project.find(params[:project_id])

		customer = Stripe::Customer.create(
		    :email => params[:stripeEmail],
		    :card  => params[:stripeToken]
		  )

		  charge = Stripe::Charge.create(
		    :customer    => customer.id,
		    :amount      => projec.price_in_cents,
		    :description => projec.name
		    :currency    => 'brl'
		  )

		  if charge
		  	current_user.subscription.create(project: project)
		  	redirect_to projec
		  end


		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to project
	end



end
