class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.create!(submission_params)
    @submission.save

    redirect_to @submission
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    @submission.update(submission_params)

    redirect_to submissions_path(@submission)
  end
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy

    redirect_to submissions_path
  end

  private
    def submission_params
      params.require(:submission).permit(:caption, :photo, :video, :message, :created_at, :updated_at)
    end
end
