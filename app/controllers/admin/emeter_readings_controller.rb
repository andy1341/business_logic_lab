# frozen_string_literal: true

module Admin
  class EmeterReadingsController < ApplicationController
    def create
      @form = Admin::EmeterReadingForm.new(EmeterReading.new, create_params)

      if @form.save
        render json: @form.object
      else
        render_errors @form.errors
      end
    end

    private

    def create_params
      params.permit(:date, :zone_1, :zone_2)
    end
  end
end
