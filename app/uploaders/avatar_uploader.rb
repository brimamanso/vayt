class AvatarUploader < CarrierWave::Uploader::Base
    # Include RMagick or MiniMagick support:
    # include CarrierWave::RMagick
    # include CarrierWave::MiniMagick
  
    #storage :fog if Rails.env.production?
  
    # Choose what kind of storage to use for this uploader:
    storage :fog
    # storage :fog

end