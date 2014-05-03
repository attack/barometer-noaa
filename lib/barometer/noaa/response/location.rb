module Barometer
  class Noaa
    class Response
      class Location < Barometer::WeatherService::Response::Location
        private

        def latitude
          payload.fetch('location', 'point', '@latitude')
        end

        def longitude
          payload.fetch('location', 'point', '@longitude')
        end
      end
    end
  end
end
