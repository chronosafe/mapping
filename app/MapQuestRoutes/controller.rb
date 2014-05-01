require 'rho/rhocontroller'

class MapQuestRoutesController < Rho::RhoController
  @layout = 'MapQuestRoutes/layout'

  def index
    @locations = [{type: :latlng, lat: 38.895211, lng: -77.036495},  { type: :address, street: '935 pennsylvania ave', city: 'washington', state: 'dc' }]
    render
  end

end
