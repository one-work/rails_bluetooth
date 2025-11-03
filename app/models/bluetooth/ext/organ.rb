module Bluetooth
  module Ext::Organ
    extend ActiveSupport::Concern

    included do
      has_many :bluetooth_devices, class_name: 'Bluetooth::Device'
    end

    def bluetooth_device
      bluetooth_devices.pluck(:name)[0]
    end
  end
end
