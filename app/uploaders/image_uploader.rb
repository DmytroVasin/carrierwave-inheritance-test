class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "image/#{model.id}"
  end

  version :small do
    process resize_to_fill: [120, 120]
  end
end
