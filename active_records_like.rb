module ActiveRecordsLike
  attr_reader :id
  @@counter = 0
  module ClassMethods
    def all
      ObjectSpace.each_object(self) { |x| p x }
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def save
    @@counter += 1
    self
  end

  def initialize(type)
    @id = @@counter
  end
end
