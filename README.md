# My_Linter_Capstone_Project
Building Custom Linter.

This custom Linter is built to be able to check for errors in codes within files with specificities for checking brackets/parenthesis, curly braces, and square brackets errors to determine whether they are correctly closed.
## Good code with its linter message.
![screenshot](assets/img/Screenshot_goodcode.png)
![screenshot](assets/img/Screenshot_goodmsg.png) 
## Poorly written code with the error message using this custom linter.
![screenshot](assets/img/Screenshot_badcode.png)
![screenshot](assets/img/Screenshot_badmsg.png)
## Built With
- Ruby
### technology/gem used
- colorize
- Rubocop
- Rspec
### Reqiurements
- Installed Ruby on your local machine(system).
- Basic to intermediate command line skills.
### Setup
- Clone the repository to your local machine first.
- Ensure required colorize and rubocop gems are installed.
### Run Test
Follow these steps on your computer terminal:
- After cloning the Repository, change directory to the project folder by running  ``` cd My_Linter_Capstone_project ```
- On project directory then run  ``` gem install colorize ```
- Then change to bin directoty by running ``` cd bin ```
- Run the program by typing ``` ruby main.rb ../test/test.rb ``` 
-  Ensure the file under testing is a ruby file with the .rb extension
### Basic instructions on how to use this linter.
 Run this custom linter basically by running ``` ruby main.rb ../test/test.rb ```.The test.rb ruby is the file to test (Do not forget to use the file relative path with preceding '../' after main.rb).
## Author
👤 Adesoji Adewumi
- Github: [@AdesojiCodeMaster](https://github.com/AdesojiCodeMaster)
- Linkedin: [@adesoji-adewumi-7752aba5/](https://www.linkedin.com/in/adesoji-adewumi-7752aba5/)
- Twitter: [@codemas22665735](https://twitter.com/codemas22665735)

## 🤝 Contributing
Suggestions, Contributions and feature requests would be appreciated!
Do not hesitate to make use of the [issues page](https://github.com/AdesojiCodeMaster/My_Linter_Capstone_project/issues).
## Show your support
Give a ⭐️ if you like this project!
## Acknowledgments
- Microverse
- GitHub
- TheOdinProject
## 📝 License
This project is [MIT](LICENSE) licensed.