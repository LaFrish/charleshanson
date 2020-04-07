class Submission < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_one_attached :clip
  has_one_attached :thumbnail


  # mount_uploader :video, VideoUploader
   # process_in_background :video

   # def set_success(format, opts)
   #   #self.success = true
   # end
   #
   # def thumbnail_url
   #   if video_processing
   #     ""
   #   else
   #     video.thumb.url
   #   end
   # end
   #
   # # All attachables should have the image_path method, this is sent to API
   # def image_path
   #   thumbnail_url
   # end
   #
   # def video_path
   #   # Serve the raw video until the processing is done.
   #   if video_processing
   #     video.url
   #   else
   #     video.rescaled.url
   #   end
   # end
   #
   # # version :rescaled do
   # #     process :encode
   # # end
   #
   # def encode
   #     movie = ::FFMPEG::Movie.new(current_path)
   #     tmp_path = File.join( File.dirname(current_path),   "tmpfile.mp4" )
   #     options = ""
   #     movie.transcode(tmp_path, options)
   #     File.rename tmp_path, current_path
   # end

  # after_save :enqueue_image

  # def image_name
  #   File.basename(image.path || image.filename) if image
  # end

  # has_one_attached :photo
  # , :styles => {  :thumb => "600x600#", :medium => "300x300#", :small => "160x160#"}
  # has_one_attached :video

  # has_destroyable_file :photo, :video
  # def enqueue_image
  #   ImageWorker.perform_async(id, key) if key.present?
  # end

  # class ImageWorker
  #   include Sidekiq::Worker
  #
  #   def perform(id, key)
  #     submission = Submission.find(id)
  #     submission.key = key
  #     submission.remote_image_url = submission.image.direct_fog_url(with_path: true)
  #     submission.save!
  #     submission.update_column(:image_processed, true)
  #   end
  # end

end
