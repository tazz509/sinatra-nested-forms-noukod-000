class Ship
  attr_reader :name, :weight, :height

SHIPS = []

 def initialize(params)
   @name = params[:name]
   @weight = params[:weight]
   @height = params[:height]
   SHIPS << self
 end

 def self.all
   SHIPS
 end

end
