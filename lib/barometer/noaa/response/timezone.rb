module Barometer
  class Noaa
    class Response
      class TimeZone < Barometer::WeatherService::Response::TimeZone
        private

        def time_zone
          payload.using(/ ([A-Z]*)$/).fetch('observation_time')
        end
      end
    end
  end
end
