# Ruby-Capstone-Css-lint


## Intructions


## Built With
- Ruby

## Getting Started
To get a local copy up and running follow these simple example steps.
### Prerequisites
- Text editor
- GitHub
- Git
- Ruby
- Ruby installed.
- colorize gem

### Install
- Install Atom or Microsoft Visual Studio text editor(preferred) to view the code on your local machine.
- Install Git.

## Getting Started
To get a local copy, up and running follow these simple steps.
Clone repository from github to your local drive by following these steps:
- Open Terminal
- Change the directory to the location you want the cloned directory
- You can clone the repository by writing in the terminal:
- `git clone  https://github.com/tanzila-abedin/Ruby-Capstone-Css-lint.git.
- Press Enter to create your local clone
- Run `cd Ruby-Capstone-Css-lint `** in the terminal
- Make sure you have ruby installed locally, run `ruby -v`**
- If the output does not show a ruby version, install ruby by running `sudo apt install ruby`**
- Lastly install colorize gem by running `gem install colorize`**

## Run the linters on CSS
 Kindly save the style sheet file in the assets folder,then follow these steps. 
 A file is present for testing
- Go to bin the folder by running `cd bin`** in the terminal 
- To start the linter by typing ```ruby main.rb``` in the terminal**
- Enter the file path '../assets/style.css'

## Implemented Checks
- Checks for camelcasing for  two or more word name for selectors
- Checks for multiple selector presence on the smae line
- Checks for double OPENING & CLOSING braces
- Checks for double OPENING & CLOSING bracket
- Checks for space after colon for each declaration
- Checks for a semicolon at the end of each declaration
- checks for use of invalid hexcode
- checks for missing grid template area input
- check for valid font-weight input

 ### Example Checks
### ***Selector name check***
*- Two or more word name for Selectors  should be separated using hyphen .*

> **Bad code:**
```

.IdeaGem {
     padding: 0;
}
```

> **Good code:**

```

.Idea-Gem {
     padding: 0;
}
```

### ***Selectors on newline***
*- Each selectors are places on a new line .*

> **Bad code:**
```
#idea .gem nav {
     padding: 0;
}

```

> **Good code:**

```
#idea {
     padding: 0;
}
.gem {
     padding: 0;
}
nav {
     padding: 0;
}
```

### ***Double braces***
*- There should single opening and closing braces after every selectors*

> **Bad code:**
```

h2 {
   margin-bottom: 0;
}}

```

> **Good code:**

```
h1 {
   margin: 0;
}
```

### ***Double brackets***
*- There should single opening and closing braces for per property values*

> **Bad code:**
```

img {
     background-color: rgb(143, 112, 112));
}


```

> **Good code:**

```

img {
     background-color: rgb(143, 112, 112);
}

```

### ***Space after colon***
*- The should be space after colon when declation properties of every selectors .*

> **Bad code:**
```
nav {
  width:7rem;
}
```

> **Good code:**

```
nav {
  width: 7rem;
}
```

### ***End Semi-colon***
*- There should semi-colon at the end of every property value declaration*

> **Bad code:**
```
.section{
  font:1rem;
}

```

> **Good code:**

```
.section {
  font: 1rem;
}

```

### ***Bracket check***
*- Opening bracket '{' should be on seperate line from closing bracket and code*

> **Bad code:**
```
.section {font-size: 2rem;}


```

> **Good code:**

```
.section {
font-size: 2rem;
}

```

### ***Bracket check end***
*- The closing bracket is always on a seperate line on its own*

> **Bad code:**
```
.top -footer {
  font: pink;
}.bottom-footer
```

> **Good code:**

```
.top-footer {
  font: pink;
}

.bottom-footer
```

### ***Empty space check***
*- There should be no trailing spaces at the end of lines*

> **Bad code:**
```
.social-icons a { 
  padding: 8rem;
  color: black;
  background-color: #11111115;
  border: 1rem solid #fff;
  border-radius: 50em;
}
```

> **Good code:**

```
.social-icons a {
  padding: 8rem;
  color: black;
  background-color: #11111115;
  border: 1rem solid #fff;
  border-radius: 50em;
}
```

### ***Ending check check ***
*- The end of a line with a colon should have a semi-colon ';'*

> **Bad code:**
```
p {
  font: pink
  }
```

> **Good code:**

```
p {
  font: pink;
}
```

## Testing
To test the code run the following commands on your terminal from the root directory:
  - gem install rspec
  - rspec



## Authors

👤 **Tanzila**

![Tanzila's GitHub stats](https://github-readme-stats.vercel.app/api?username=tanzila-abedin&count_private=true&theme=dark&show_icons=true)

- GitHub: [@githubhandle](https://github.com/tanzila-abedin)
- Twitter: [@twitterhandle](https://twitter.com/TanzilaAbedin)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/tanzila-abedin-331440b2/)



## 📝 License

This project is [MIT](LICENSE) licensed.
