$START_OPTIONS = { :session_store => "memory" }

require File.join(File.dirname(__FILE__), "..", "..", "spec_helper")
require File.join(File.dirname(__FILE__), "session_spec")
require File.join(File.dirname(__FILE__), "controllers", "sessions")

require "merb-core/dispatch/session/memory"

describe Merb::MemorySession do
  
  before do 
    @session_class = Merb::MemorySession
    @session = @session_class.generate
  end
  
  it_should_behave_like "All session-store backends"
  
end

describe Merb::MemorySession, "mixed into Merb::Controller" do

  before(:all) do
    @session_class = Merb::MemorySession
    @session = @session_class.generate
  end
  
  it_should_behave_like "All session-stores mixed into Merb::Controller"

end