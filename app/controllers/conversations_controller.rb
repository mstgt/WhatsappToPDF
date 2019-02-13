class ConversationsController < ApplicationController
  def show
    @conversation=Conversation.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        content = @conversation.lines.map(&:content).join("\n")
        pdf = WickedPdf.new.pdf_from_string(content)
          send_data(pdf,                                  #3
          filename: 'download.pdf',                     #4
          type: 'application/pdf',                      #5
          disposition: 'attachment') 
        # render pdf: "my_pdf",   # Excluding ".pdf" extension.
        # template: "conversations/show.html.erb"
    
      end
    end
    
  end

  def index
  end 



  def new
      @conversation= Conversation.new    
  end

  def edit
    @conversation=Conversation.find(params[:id])
  end

  def update
    @conversation=Conversation.find(params[:id])
    @conversation.update(conversation_params)
  end

    def create
      convo = Conversation.create(content: params[:conversation][:content].open.read)
      
      #save each line
      convo.content.split("\n").each_with_index do |line, i|
        convo.lines.create(content: line, order: i)
      end

      redirect_to "/"
    end  


    def upload
        uploaded_io = params[:user][:picture]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
    end

end    