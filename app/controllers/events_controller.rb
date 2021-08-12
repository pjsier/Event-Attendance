class EventsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
    before_action :set_event, only: [:show, :edit, :update, :destroy]
    layout 'event_layout'

    # GET /events
    # GET /events.json
    def index
        #@events = Event.all
        # Scope your query to the dates being shown:
        start_date = params.fetch(:event_date, Date.today).to_date
        @events = Event.where(event_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)        
    end

    # GET /events/1
    # GET /events/1.json
    def show
        @members = @event.members.all
    end

    # GET /event/new
    def new
        @event = Event.new
    end

    # GET /event/:id/edit
    def edit
    end

    # POST /event
    # POST /event.json
    def create
        @event = Event.new(event_params)
        if @event.save
            flash.notice = "The event record was created successfully."
            redirect_to @event
        else
            flash.now.alert = @event.errors.full_messages.to_sentence
            render :new
        end
    end

    # PATCH/PUT /events/id
    # PATCH/PUT /events/1.json
    def update
        if @event.update(event_params)
            flash.notice = "The event record was updated successfully."
            redirect_to @event
        else
            flash.now.alert = @event.errors.full_messages.to_sentence
            render :edit
        end
    end

    # DELETE /events/1
    # DELETE /events/1.json
    def destroy
        @event.destroy
        respond_to do |format|
        format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
        format.json { head :no_content }
        end
    end


    private
        # Use callbacks to share common setup or constraints between actions.
        def set_event
            @event = Event.find(params[:id])
        end
  
        # Only allow a list of trusted parameters through.
        def event_params
            params.require(:event).permit(:description, :event_date, :event_location, member_ids: [])
        end
  
      def catch_not_found(e)
        Rails.logger.debug("We had a not found exception.")
        flash.alert = e.to_s
        redirect_to events_path
      end 

end
