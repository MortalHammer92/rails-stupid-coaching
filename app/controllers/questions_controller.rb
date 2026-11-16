class QuestionsController < ApplicationController
  # affiche le formulaire : rien à préparer
  def ask
  end

  def answer
    # lire la question envoyée par le formulaire (?question=...)
    @question = params[:question]

    # choisir la réponse du coach selon la question
    @answer = if @question == "I am going to work"
                "Great!"
    elsif @question.end_with?("?")
                "Silly question, get dressed and go to work!"
    else
                "I don't care, get dressed and go to work!"
    end
  end
end
