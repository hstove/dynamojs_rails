module DynamojsRails
  module Helpers
    SHORTHANDS = %w{pause delay speed center delay callback}
    # el is the html element type, like :span
    # options are the dynamo options, like w%{first second}
    def dynamo_tag el, options, config={}
      config.symbolize_keys
      first = options.shift
      config["data-lines"] = options.join(",")
      c = config[:class]
      if c.blank?
        c = "dynamo"
      else
        c += " dynamo"
      end
      config[:class] = c
      new_config = {}
      config.each do |key, val|
        if SHORTHANDS.include? key.to_s
          new_config["data-#{key}"] = val
        else
          new_config[key] = val
        end
      end
      content_tag el, first, new_config
    end
  end
end