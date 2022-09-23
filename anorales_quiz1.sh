#22/09/2022
#Systems Administration Quiz 1

#A) Prompt user to type two arguments
echo "Please type two arguments:"
read a b 

  #B) C) D) Ask user if they'd like to continue and respond
  echo "I am about to create a directory structure named $a"
  read -p "Do you want me to continue? (yes/no)" CONT 

  if [[ "$CONT" = "Yes" || "$CONT" = "yes" ]]; then
     echo "Creating directory structure..."
     mkdir "$a"
     mkdir -p  "$a/cmd/api"
     touch "$a/cmd/api/main.go"
     mkdir -p "$a/internals"
     mkdir -p "$a/migrations"
     mkdir -p "$a/remote"
     touch "$a/$go.mod"
     touch "$a/Makefile"
     go mod init "$a.$b"
     echo "
     //File: cmd/api/main.go
    
     package main
    
     import "fmt"
    
     func main(){
         fmt.Println("Hello World!")
         }" > "main.go"

    echo "I have created a *main.go* file for you to test the directory structure."
    echo "Type *go run ./cmd/api* at the root directory of your project to test your project."
    echo "Thank you." 
elif [ "$CONT" = "No" || "$CONT" = "no" ]]; then
	echo "Abort"
fi
