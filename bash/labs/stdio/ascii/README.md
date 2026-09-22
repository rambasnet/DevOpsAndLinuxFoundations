# Variables and Std IO

Possible points: 100

## Lab A: ASCII Art

Write a Bash script that displays some ASCII arts on to the Console/Terminal or standard output using variables and standard input/output. The ASCII art should include your name and the semester year.

## Type and fix the code

1. Create the directory structure similar to this lab as shown below:

```bash
ascii/
├── ascii.sh
├── Makefile
└── README.md
└── screenshots/
```

1. Type the contents provided in `ascii.sh` and fix all fixmes. Write #fixed# after each #fixme.
2. Run the script using the following command:

```bash
cd <lab folder>
ls
bash ascii.sh
```

The completed lab should produce an output that looks like the following:
a. Note: replace the placeholder < > with actual value/data.

```
   |\_/|       *****************************     (\_/)
  / @ @ \      *        ASCII Lab          *    (='.'=)
 ( > 0 < )     *       <Your Name>         *  ( " )_( " )
   >>x<<       *     <Semester Year>       *
  /  O  \      *        CSCI 210           *
               *****************************
```

Note: The figure on the right (looks like a mouse) uses both single ( ' ) and double quotes ( " ) and you must find a way to print both single and double quotes as shown.

3. All FIXMEs are worth equal points unless stated otherwise.

## Submission

1. Create screenshots of the completed program with the final output displayed on the Terminal and save it to the **screenshots** folder. (10 points)

2. When done, update your README file (10 points) as shown here: [https://github.com/rambasnet/CSXXX-rbasnet](https://github.com/rambasnet/CSXXX-rbasnet)

3. Add all the relevant source file(s), documents, and screenshots into the correct lab folder and do a final add, commit, and push before the due date.

```bash
$ git pull
$ git status
$ git add <each file in the red that is part of this lab>
$ git status
$ git commit -m "Final Submission"
$ git push
$ git status
```

- Check and make sure the files are actually pushed to your remote GitHub.
