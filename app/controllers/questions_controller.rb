class QuestionsController < ApplicationController
  def answer
    @new_question = params[:query]
    @new_answer = coach_answer(@new_question)
  end

  def ask
  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    answer = coach_answer(your_message)
    return "" if your_message == "I am going to work right now!".upcase
    if your_message.upcase == your_message
      return "I can feel your motivation!" + " " + answer
    else
      return answer
    end
  end
end
