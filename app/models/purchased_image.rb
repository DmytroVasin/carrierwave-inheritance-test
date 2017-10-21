class PurchasedImage < ApplicationRecord
  mount_uploader :file, PurchasedImageUploader
end
