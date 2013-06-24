require 'spec_helper'
describe DynamojsRails::Helpers do
  include DynamojsRails::Helpers

  it "creates the correct type of html element" do
    html = dynamo_tag :span, %w{one two}
    # puts html
    html.should include("<span")
    html.should include("one</span>")
    html = dynamo_tag :h2, %w{one two}
    html.should include("<h2")
    html.should include("one</h2>")
  end

  it "sets the correct shorthand options" do
    html = dynamo_tag :span, %w{one two}, {
      center: true,
      speed: 100,
      delay: 1000,
      pause: true,
      callback: "dynamo_callback"
    }
    # puts html
    html.should include('data-center="true"')
    html.should include('data-speed="100"')
    html.should include('data-delay="1000"')
    html.should include('data-pause="true"')
    html.should include('data-callback="dynamo_callback"')
  end

  it "sets the .dynamo class" do
    html = dynamo_tag :span, %w{one two}
    html.should include('class="dynamo"')
    html = dynamo_tag :a, %w{one two}, class: 'btn'
    html.should include('class="btn dynamo"')
  end
end