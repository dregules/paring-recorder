class PairsController < ApplicationController
  def index
    @time = Time.new
    start_date = Time.new(2015,7,20,1,00,00)
    @week_number = ((@time - start_date)/(60*60*24*7)+1).to_i
    @students = ['Chris','Diego','Tommy', 'Pablo', 'Bingo', 'Bango', "Pongo", 'Dipsy', 'Bilbo', 'Frodo', 'Timmy', 'Margaret', 'Sally McNally', 'Sandra', 'Bob', 'Saddam']
    @pairs = Pair.all
    @paired_students = []
    @pairs.each do |pair|
      @paired_students << pair.studentOne
      @paired_students << pair.studentTwo
    end
    @dates = ["Monday Week 9", "Tuesday Week 9", "Wednesday Week 9","Thursday Week 9","Friday Week 9"]
    @available_students = @students - @paired_students
  end
  def create
    if params[:pair][:studentOne] == params[:pair][:studentTwo]
      flash[:notice] = "one MUST NOT pair with oneself"
    else
      @pair = Pair.create(pair_params)
    end
    redirect_to pairs_path
  end

  def pair_params
    params.require(:pair).permit(:studentOne, :studentTwo, :pairingDate)
  end

  def destroy
    @pair = Pair.find(params[:id])
    @pair.destroy
    flash[:notice] = "you deleted a pair"
    redirect_to pairs_path
  end

end
