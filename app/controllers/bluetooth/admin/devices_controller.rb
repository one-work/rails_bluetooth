module Bluetooth
  class Admin::DevicesController < Admin::BaseController

    def scan
      @jia_bo_printer = @jia_bo_app.jia_bo_printers.find_or_initialize_by(device_id: params[:result])
      @jia_bo_printer.organ = current_organ
      @jia_bo_printer.devices.find_or_initialize_by(aim: 'produce')
      @jia_bo_printer.devices.find_or_initialize_by(aim: 'receipt')
      @jia_bo_printer.save
    end
  end
end
