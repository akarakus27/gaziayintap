class OnTaraf::FaydalariController < ApplicationController
  def index
      @Faydalars = Faydalar.all()
  end
end
