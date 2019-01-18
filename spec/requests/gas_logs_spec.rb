require 'rails_helper'

RSpec.describe "GasLogs", type: :request do
  describe "GET /gas_logs" do
    it "works! (now write some real specs)" do
      get gas_logs_path
      expect(response).to have_http_status(200)
    end
  end
end
