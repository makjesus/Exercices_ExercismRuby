class Attendee
  # Initialize the Attendee with a pass status
  def initialize(has_pass)
    @has_pass = has_pass
  end

  # Method to check if the attendee has a pass
  def has_pass?
    @has_pass
  end

  # Method to check if the attendee fits the ride
  def fits_ride?(required_min_height)
    height >= required_min_height
  end

  def calculate(value)
    result = value * 2
    debug(result) # This will show you the result value when the test fails
    result
  end

  private

  # Assuming there's a private method `height` that should be defined
  def height
    # Placeholder method for height; adjust as needed
    150
  end

  # Placeholder debug method for illustration
  def debug(result)
    puts "Debug: #{result}"
  end
end
