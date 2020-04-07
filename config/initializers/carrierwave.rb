CarrierWave.configure do |config|

config.validate_unique_filename = false
config.validate_filename_format = false
config.validate_remote_net_url_format = false # this is important

config.permissions = 0666
config.directory_permissions = 0777
config.storage = :file



  # config.fog_credentials = {
  #   provider: "AWS",
  #   aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
  #   aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
  # }
  # config.fog_directory = ENV["ch100"]
# end
# CarrierWave.configure do |config|


  # config.validate_unique_filename = true
  # config.validate_filename_format = true
  # config.validate_remote_net_url_format = true
end
