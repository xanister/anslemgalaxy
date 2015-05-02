class Admin::FaqsController < Admin::AdminController
  def index
    @faqs = Faq.all
  end

  def new
    @faqs = Faq.new
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def create
    @faq = Faq.new(faq_params)
    if @faq.save
      respond_to do |format|
        format.html { redirect_to edit_admin_faq_path(@faq) }

      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  def update
    @faq = Faq.find(params[:id])

    if @faq.update(faq_params)
      respond_to do |format|
        format.html { redirect_to edit_admin_faq_path(@faq) }
      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private
  def faq_params
    params.require(:faq).permit(:question, :answer, :image, :video, :visible)
  end
end
