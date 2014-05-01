require 'rho/rhoapplication'

class AppApplication < Rho::RhoApplication
  def initialize
    # Tab items are loaded left->right, @tabs[0] is leftmost tab in the tab-bar
    # Super must be called *after* settings @tabs!
    @tabs = nil
    #To remove default toolbar uncomment next line:
    #@@toolbar = nil
    super


    # Uncomment to set sync notification callback to /app/Settings/sync_notify.
    # Rho::RhoConnectClient.setObjectNotification("/app/Settings/sync_notify")
    Rho::RhoConnectClient.setNotification('*', "/app/Settings/sync_notify", '')

    
  end
end

# This class is a container for the MapQuest API key
class AppSetting
  def self.mapquest_key
    'ADD_KEY_HERE'
  end
end
