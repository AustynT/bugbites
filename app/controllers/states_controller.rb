class StatesController < ApplicationController
  def index
    @states = State.all
  end
  def new
    @states = States.new
  end

  def create
    @states = States.new(states_params)
  end

  def show
    @state = State.find(params[:id])
  end

  def edit
    @state = State.find(params[:id])
  end

  def destroy
    @state.destroy
    redirect_to states_path
  end

  private

  def state_params
    params.require(:state).permit(:name)
  end

end
