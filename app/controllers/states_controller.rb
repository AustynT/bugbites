class StatesController < ApplicationController
  before_action :set_state, only: [:show,:edit,:update,:destroy]

  def index
    @states = State.all
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    
    if @state.save
      redirect_to @state, notice: "You've created a state"
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def destroy
    @state.destroy
    redirect_to states_path
  end

  private

  def set_state
    @state = State.find(params[:id])
  end

  def state_params
    params.require(:state).permit(:name, :country_id)
  end

end
