class OnTaraf::UrunResimleriController < ApplicationController
  def index
      @Uruns = Urun.all()
  end
end
