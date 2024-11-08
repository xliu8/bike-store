class PagesController < ApplicationController
  def home
    @products = Product.all.page(params[:page]).per(10)
  end

  def about
    @page = Page.find_by(title: 'About')
  end

  def contact
    @page = Page.find_by(title: 'Contact')
  end

  

end
