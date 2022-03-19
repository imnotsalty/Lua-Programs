bot = {"ROCK", "PAPER", "SCISSORS"}

math.randomseed(os.time())
player = nil
print("\nEnter 'exit' to exit.")
repeat
  io.write("Type your play(ROCK or PAPER or SCISSORS): ")
  player = io.read()
  io.write("\n")

  var = math.random(1, 3) --random value for index of bot table

  if(string.lower(player) == string.lower(bot[var])) then
    print("No one won, try again!\n")
  end

  --When the player plays rock.
  if(string.lower(player) == "rock") then

    if(bot[var] == "PAPER") then
      print("You lost! The bot played " .. bot[var] .. "\n")
    end

    if(bot[var] == "SCISSORS") then
      print("You won! The bot played " .. bot[var] .. "\n")
    end

  end

  --When the player plays paper.
  if(string.lower(player) == "paper") then

    if(bot[var] == "SCISSORS") then
      print("You lost! The bot played " .. bot[var] .. "\n")
    end

    if(bot[var] == "ROCK") then
      print("You won! The bot played " .. bot[var] .. "\n")
    end

  end

  --When the player plays scissors.
  if(string.lower(player) == "scissors") then

    if(bot[var] == "ROCK") then
      print("You lost! The bot played " .. bot[var] .. "\n")
    end

    if(bot[var] == "PAPER") then
      print("You won! The bot played " .. bot[var] .. "\n")
    end

  end

until(string.lower(player) == "exit")
