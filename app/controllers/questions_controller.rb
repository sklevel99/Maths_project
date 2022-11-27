class QuestionsController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @question = Question.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @question = Question.new(question_params)
    @question.save
    redirect_to topic_path(@topic)
  end

  def edit

  end

  def update

  end


  private

  def question_params
    params.require(:question).permit(:title, :mcq, :answer, :explanation)
  end

end
