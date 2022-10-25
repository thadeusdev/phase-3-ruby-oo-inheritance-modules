# require_relative './dance_module'
# require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Dancer
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
end

angelina = Dancer.new
p angelina.twirl
# => "I'm twirling!"
p angelina.jump
# => "Look how high I'm jumping!"

p Dancer.metadata
# => "This class produces objects that love to dance."