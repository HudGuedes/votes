class CountVotesController < ApplicationController

  before_action :authenticate_user!

  def vote
    if CountVote.create(id_votante: current_user.id, id_candidate: params[:id])
      redirect_to root_path, flash: { notice: 'Voto computado com sucesso' }
    else
      redirect_to root_path, flash: { error: 'Erro ao computar o voto' }
    end
  end
end
