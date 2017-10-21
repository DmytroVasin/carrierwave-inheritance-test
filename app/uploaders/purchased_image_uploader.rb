class PurchasedImageUploader < ImageUploader
  def store_dir
    "purchased_image/#{model.id}"
  end

  version :small do
    def store_dir
      "purchased_image/#{model.id}"
    end

    process resize_to_fill: [120, 120]
  end
end
