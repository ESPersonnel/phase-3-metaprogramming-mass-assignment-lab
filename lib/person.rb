class Person
  # your code here
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", attributes[key])
    end
  end
end

lynn_attributes = {
  name: "Lynn",
  birthday: "01/29/1984",
  hair_color: "brown",
  eye_color: "brown",
  height: "5'11",
  weight: "160 lbs",
  handed: "right",
  complexion: "light",
  t_shirt_size: "large",
  wrist_size: "medium",
  glove_size: "medium",
  pant_length: "medium",
  pant_width: "medium"
}

lynn = Person.new(lynn_attributes)

dahmer_attributes = {
  name: "Dahmer",
  birthday: "01/29/1984",
  hair_color: "brown",
  eye_color: "brown",
  height: "5'11",
  weight: "160 lbs"
}

dahmer = Person.new(dahmer_attributes)
