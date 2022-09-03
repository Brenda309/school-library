require './decorator'

class Capitalized_decorator < Decorator
    
end
def correct_name
    @nameable.correct_name.capitalize
 end

end
