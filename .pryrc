def method_source(object, name)
  object.method(name).source_location
end

def instance_methods(object)
  object.methods - Object.methods
end
