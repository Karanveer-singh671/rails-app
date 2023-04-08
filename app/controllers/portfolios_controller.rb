class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(blog_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "portfolio item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  def blog_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

end
