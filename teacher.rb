class Teacher < Person
def initialize(specilization)
    super()
    @specilization = specilization
end
def can_use_services
    true
end