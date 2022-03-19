Animal = {}
Animal.__index = Animal

Animal.name = ""
Animal.species = ""
Animal.age = 0
function Animal.new(species)
  local instance = setmetatable({}, Animal)
  instance.species = species
  return instance
end

function Animal:set_name(name)
  self.name = name or "Jimmy"
end

function Animal:set_age(age)
  self.age = age or 10
end

function Animal:display()
  return {self.name, self.age, self.species}
end

--creating dog object of type Animal
local dog = Animal.new("dog")
dog:set_name("Happy")
dog:set_age(12)

dogTable = dog:display()
print("Name: "    .. dogTable[1])
print("Age: "     .. dogTable[2])
print("Species: " .. dogTable[3])
--[[for k, v in ipairs(dogTable) do
  print(k .. v)
end]]

--creating parrot object of type Animal
local parrot = Animal.new("parrot")
parrot:set_name("yani")
parrot:set_age(8)

parrotTable = parrot:display()
print("Name: "    .. parrotTable[1])
print("Age: "     .. parrotTable[2])
print("Species: " .. parrotTable[3])
--[[for k, v in ipairs(parrotTable) do
  print(k .. v)
end]]
