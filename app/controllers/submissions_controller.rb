class SubmissionsController < ApplicationController

  def index

    @submissions = Submission.all
    # @uploader = Submission.new.image
    # @uploader.success_action_redirect = new_image_url
  end

  def new

    @submission = Submission.new
  end

  def create
    @submission = Submission.create!(submission_params)

    redirect_to submission_path(@submission)
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

    redirect_to submission_path(@submission)
  end

  def destroy

    @submission = Submission.find(params[:id])
    @submission.destroy

    redirect_to submissions_path
  end

  private
    def submission_params
      params.require(:submission).permit(:user, :email, :caption, :image, :remote_image_url, :image_processed, :video, :thumbnail, :message, :created_at, :updated_at)
    end
end
