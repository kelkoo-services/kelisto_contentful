module KelistoContentful
  class ContentType < Hash
    def initialize(content_type_id)
      @id = content_type_id
    end

    def where(query = {})
      self["content_type"] = @id
      query.each { |name, value| self["fields.#{name}"] = value }
      self
    end

    def order_by(field_name)
      self["order"] = "fields.#{field_name}"
      self
    end

    def run!
      KelistoContentful.client.entries(self)
    end
  end
end
