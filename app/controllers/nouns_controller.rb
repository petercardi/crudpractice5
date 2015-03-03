class NounsController < ApplicationController

  def index
    @nouns = Noun.all
  end

  def new
    @noun = Noun.new
  end

  def create
    noun_params = params.require(:noun).permit(:name, :popularity, :verbable)
    @noun = Noun.new(noun_params)
    @noun.save
    redirect_to nouns_path(@noun), notice: "Noun was learned successfully"
  end

  def show
    @noun = Noun.find(params[:id])
  end

  def edit
    @noun = Noun.find(params[:id])
  end

  def update
    noun_params = params.require(:noun).permit(:name, :popularity, :verbable)
    @noun = Noun.new(noun_params)
    @noun.update(noun_params)
    redirect_to nouns_path(@noun), notice: "Noun was refined successfully"
  end

  def destroy
    Noun.find(params[:id]).destroy
    redirect_to nouns_path, notice: "Noun was forgotten successfully"
  end

end
