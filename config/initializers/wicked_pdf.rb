# WickedPDF Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `render :pdf` call.
#
# To learn more, check out the README:
#
# https://github.com/mileszs/wicked_pdf/blob/master/README.md

 #WickedPdf.config = {
        # Path to the wkhtmltopdf executable: This usually isn't needed if using
        # one of the wkhtmltopdf-binary family of gems.
        # exe_path: '/usr/local/bin/wkhtmltopdf',
        #   or
        # exe_path: Gem.bin_path('wkhtmltopdf-binary', 'wkhtmltopdf')
   #exe_path: 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
        #exe_path: 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
        # Layout file to be used for all PDFs
        # (but can be overridden in `render :pdf` calls)
        # layout: 'pdf.html',
 #}


if Rails.env.production?
  wkhtmltopdf_path = "#{Rails.root}/bin/wkhtml_production.deb"
else
  # Linux (check your processor for Intel x86 or AMD x64)
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-i386"
  # OS X
  #wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-0.9.9-OS-X.i386"            
  # Windows
  wkhtmltopdf_path = 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
end
wkhtmltopdf_path = "#{Rails.root}/bin/wkhtml_production.deb"
 WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
