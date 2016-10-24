namespace :favicon do
  desc "Generate favicon assets"
  task generate: :environment do
    FaviconMaker.generate do
      BASE_IMAGE = "lynx_shield_negative_full.png"

      setup do
        template_dir  "app/assets/images"
        output_dir    "public"
      end

      from BASE_IMAGE do
        icon "apple-touch-icon-152x152-precomposed.png"
        icon "apple-touch-icon-144x144-precomposed.png"
        icon "apple-touch-icon-120x120-precomposed.png"
        icon "apple-touch-icon-114x114-precomposed.png"
        icon "apple-touch-icon-76x76-precomposed.png"
        icon "apple-touch-icon-72x72-precomposed.png"
        icon "apple-touch-icon-60x60-precomposed.png"
        icon "apple-touch-icon-57x57-precomposed.png"
        icon "apple-touch-icon-precomposed.png", size: "57x57"
        icon "apple-touch-icon.png", size: "57x57"
        icon "favicon-196x196.png"
        icon "favicon-160x160.png"
        icon "favicon-96x96.png"
        icon "favicon-32x32.png"
        icon "favicon-16x16.png"
        icon "favicon.png", size: "16x16"
        icon "favicon.ico", size: "64x64,32x32,24x24,16x16"
        icon "mstile-144x144", format: "png"
      end

      puts "Generating favicon assets..."
      # Verbose
      each_icon do |filepath|
        puts filepath
      end
    end
  end
end
