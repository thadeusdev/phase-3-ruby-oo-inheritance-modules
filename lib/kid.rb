# require_relative './dance_module'
# require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Kid
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
end

buster = Kid.new
p buster.jump
# => "Look how high I'm jumping!"
p buster.take_a_bow
# => "Thank you, thank you. It was a pleasure to dance for you all."

p Kid.metadata
# => "This class produces objects that love to dance."