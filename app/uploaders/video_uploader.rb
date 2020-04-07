# class VideoUploader < CarrierWave::Uploader::Base
#   include CarrierWave::Video
#   include CarrierWave::Video::Thumbnailer
#
#   # For carrierwave_backgrounder
#   include ::CarrierWave::Backgrounder::Delay
#
#   # include CarrierWaveDirect::Uploader
#   # include CarrierWave::RMagick
#   # include CarrierWave::MiniMagick
#
#
#
#   # include CarrierWave::Video
#   #   include CarrierWave::Video::Thumbnailer
#
#     # For carrierwave_backgrounder
#     # include ::CarrierWave::Backgrounder::Delay
#
#     # version :rescaled do
#     #   process encode_video: [
#     #     :mp4,
#     #     resolution: "640x480", # Aspect ratio is preserved automatically
#     #     # Audio codec and custom are to fix: http://stackoverflow.com/questions/19800298/ffmpeg-carrierwave-video-always-returns-unknown-encoder-libfaac
#     #     audio_codec: "aac",
#     #     custom: "-strict experimental -q:v 5 -preset slow -g 30",
#     #     callbacks: { after_transcode: :set_success }
#     #   ]
#     # end
#     #
#     #
#     # version :thumb do
#     #   process thumbnail: [{format: 'png', quality: 10, size: 400, strip: true, logger: Rails.logger}]
#     #   def full_filename for_file
#     #     png_name for_file, version_name
#     #   end
#     # end
#     #
#     # def png_name for_file, version_name
#     #   %Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.png}
#     # end
#
#
#     # Choose what kind of storage to use for this uploader:
#
#     # storage :fog
#
#     # Override the directory where uploaded files will be stored.
#     # This is a sensible default for uploaders that are meant to be mounted:
#     # def store_dir
#     #   "system/carrierwave/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#     # end
#     # def store_dir
#     #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#     # end
#
#
#     version :rescaled do
#       process encode_video: [
#         :mp4,
#         resolution: "640x480", # Aspect ratio is preserved automatically
#         # Audio codec and custom are to fix: http://stackoverflow.com/questions/19800298/ffmpeg-carrierwave-video-always-returns-unknown-encoder-libfaac
#         audio_codec: "aac",
#         custom: "-strict experimental -q:v 5 -preset slow -g 30",
#         callbacks: { after_transcode: :set_success }
#       ]
#     end
#
#
#     version :thumb do
#       process thumbnail: [{format: 'png', quality: 10, size: 400, strip: true, logger: Rails.logger}]
#       def full_filename for_file
#         png_name for_file, version_name
#       end
#     end
#
#     def png_name for_file, version_name
#       %Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.png}
#     end
#
#
#     # Choose what kind of storage to use for this uploader:
#     storage :file
#     # storage :fog
#
#     # Override the directory where uploaded files will be stored.
#     # This is a sensible default for uploaders that are meant to be mounted:
#     # def store_dir
#     #   "system/carrierwave/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#     # end
#     def store_dir
#       "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#     end
#
#
#   end
