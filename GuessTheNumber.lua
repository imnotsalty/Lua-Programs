math.randomseed(os.time())
Answer = math.random(1, 50)
while (true) do
  print("Enter your guess(range is b/w 1 and 50): ")
  guess = tonumber(io.read())
  if (Answer > guess) then
    print("You are getting close; try a bigger number!")
  elseif (Answer < guess) then
    print("You are getting close; try a smaller number!")
  else
    print("You guessed right!!! The mystery number is indeed " .. guess)
    break
  end
end
