PDFKit.configure do |config|
  if RAILS_ENV == 'development'
    config.wkhtmltopdf = 'D:\path\to\your\wkhtmltopdf' #this bit i'm not sure about
  else
    config.wkhtmltopdf = "#{RAILS_ROOT}/lib/wkhtmltopdf"
  end
end

