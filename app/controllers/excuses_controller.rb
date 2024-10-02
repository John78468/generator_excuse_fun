class ExcusesController < ApplicationController

  def index
    @excuses = Excuse.all
  end

  def new
    @excuse = Excuse.new

  end

  def create
    @excuse = Excuse.create(excuse_params)
    if @excuse.save
      redirect_to excuses_path, notice: 'Excuse ajoutée !'
    else
      render :new
    end
  end

  def random
    part1 = Excuse.pluck(:part1).sample
    part2 = Excuse.pluck(:part2).sample
    part3 = Excuse.pluck(:part3).sample
    @excuse = "#{part1} #{part2} #{part3}"
  end

  private

  def excuse_params
    params.require(:excuse).permit(:category, :part1, :part2, :part3)
  end
end
