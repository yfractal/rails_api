# require "stack_frames"
require 'net/http'
require 'uri'

class ApiController < ActionController::API
  # STACK_FRAMES_BUFFER = StackFrames::Buffer.new(100)
  def index
    # STACK_FRAMES_BUFFER.capture
    # STACK_FRAMES_BUFFER.each do |frame|
    #   puts [ frame.path, frame.lineno, frame.method_name ].join(",")
    # end
    # sleep 1
    uri = URI.parse("https://jsonplaceholder.typicode.com/posts/1")
    response = Net::HTTP.get_response(uri)
    head 200
  end
end
