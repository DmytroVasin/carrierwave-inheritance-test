desc 'Image creator'
task clear: :environment do
  Image.destroy_all
  PurchasedImage.destroy_all

  i = Image.new
  i.remote_file_url = 'https://pbs.twimg.com/profile_images/378800000610948072/e78dd2690291e9a76c2108c680182f19_bigger.jpeg'
  i.save


  pi = PurchasedImage.new
  pi.remote_file_url = 'https://pbs.twimg.com/profile_images/378800000610948072/e78dd2690291e9a76c2108c680182f19_bigger.jpeg'
  pi.save
end

