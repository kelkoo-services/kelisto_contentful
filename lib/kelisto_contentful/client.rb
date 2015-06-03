require 'contentful'

module KelistoContentful
  def self.connect!(access_token: nil, space: nil)
    @client = Contentful::Client.new access_token: access_token,
                                     space: space,
                                     secure: true,
                                     dynamic_entries: :auto

    @content_types = []
    load_content_types
  end

  def self.client
    @client
  end

  def self.content_types
    @content_types
  end

  def self.load_content_types
    client.content_types.each do |content_type|
      @content_types << {
        name:        content_type.name,
        id:          content_type.id,
        description: content_type.description
      }

      self.instance_eval do
        normalized_method_name = content_type.name.downcase.gsub(/\s|-/,'_')
        define_singleton_method(normalized_method_name) {
          KelistoContentful::ContentType.new(client, content_type.id)
        }
      end
    end
  end
end
