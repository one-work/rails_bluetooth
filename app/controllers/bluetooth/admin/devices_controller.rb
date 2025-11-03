module Bluetooth
  class Admin::DevicesController < Admin::BaseController

    def scan
      name, _ = params[:result].split('&')
      @device = Device.new(device_params)
      @device.name = name
      @deivce.save
    end

    private
    def device_params
      p = params.fetch(:device, {})
      p.merge! default_params
    end

  end
end
