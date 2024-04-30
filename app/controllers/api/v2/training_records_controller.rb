# app/controllers/api/v2/training_records_controller.rb
    class Api::V2::TrainingRecordsController < ApplicationController
      def create
        @training_record = TrainingRecord.new(training_record_params)

        if @training_record.save
          render json: @training_record, status: :created
        else
          render json: @training_record.errors, status: :unprocessable_entity
        end
      end

      private

        def training_record_params
          params.require(:training_record).permit(:menu, :date)
        end
    end


# # current_user.training_sessions.new!(start_date: Date.today)