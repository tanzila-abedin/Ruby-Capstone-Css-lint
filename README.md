# Ruby-Capstone-Css-lint
 An Unique project written in Ruby that detects style errors within the CSS file, and provides detailed feedback on how to rectify the errors. 
 
 **List of  ERROR detected!**

 ![image](./assets/error-ss.png)


 **All CHECKS passed!**

 ![image](./assets/noerror.png)


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
- Start the linter by typing ```ruby main.rb``` in the terminal**
- On main.rb file type file path '../assets/style.css' to run errors OR
- For a corrected stylesheet with no error type file path '../assets/noerr.css'
- You may add CSS file inside 'assets folder' and change file path name accordingly inside main.rb file(line-5) to run linters. 

## Run Test
To test the code run the following commands on your terminal from the root directory:
  - gem install rspec
  - rspec

## Implemented Checks
- Checks for camelcasing for  two or more word name for selectors
- Checks for multiple selector presence on the smae line
- Checks for double OPENING & CLOSING braces
- Checks for double OPENING & CLOSING bracket
- Checks for space after colon for each declaration
- Checks for a semicolon at the end of each declaration
- checks for use of invalid hexcode

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
section {
  color: pink
  }

```

> **Good code:**

```
section {
  color: pink;
  }

```

### ***Invalid Hex-code***
*- There should be valid name of colors or hexcode *

> **Bad code:**
```
a { 
  color: #00; 
}


```

> **Good code:**

```
a {
  font-weight: #0rgj;
  }

a {
  font-weight: #eee;
  }

```

## Authors

???? **Tanzila**

![Tanzila's GitHub stats](https://github-readme-stats.vercel.app/api?username=tanzila-abedin&count_private=true&theme=dark&show_icons=true)

- GitHub: [@githubhandle](https://github.com/tanzila-abedin)
- Twitter: [@twitterhandle](https://twitter.com/TanzilaAbedin)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/tanzila-abedin-331440b2/)



## ???? License

This project is [MIT](LICENSE) licensed.
