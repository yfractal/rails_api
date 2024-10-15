require "stack_frames"

class ApiController < ActionController::API
  STACK_FRAMES_BUFFER = StackFrames::Buffer.new(100)
  def index
    STACK_FRAMES_BUFFER.capture
    STACK_FRAMES_BUFFER.each do |frame|
      puts [ frame.path, frame.lineno, frame.method_name ].join(",")
    end
    sleep 1
    head 200
  end
end
