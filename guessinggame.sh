function guessinggame {

 nr_files=$(ls -1 | wc -l)
 correct_guess=0
 
 echo 'how many files are in the current directory?'
 
 while [[ $correct_guess -eq 0 ]]
 do
 
  read guess
 
  if [[ $guess -eq $nr_files ]]
  then
   echo "Congratulations, your guess is correct!"
   let correct_guess=1
  elif [[ $guess -gt $nr_files ]]
  then
   echo "Your guess is too high"
  else
   echo "Your guess is too low"
  fi
  
 done

}

guessinggames
