# DevOps Lab - Arrays and Unittest

Possible Points: 100

Write a Bash script to solve the Kattis problemid findmaximum: [https://open.kattis.com/problems/findmaximum](https://open.kattis.com/problems/findmaximum). Note that the last part of the URL, e.g. `findmaximum` is the problem id. Read the problem statement carefully to design a correct solution.

## Kattis Setup

If not done before:

1. Create your account at [https://open.kattis.com](https://open.kattis.com). Change your university affiliation to Colorado Mesa University if you want to see your rank.
2. Setup kattis-cli for the Lab Codespace by clicking on and following [https://github.com/rambasnet/kattis-cli/blob/main/SETUP.md](https://github.com/rambasnet/kattis-cli/blob/main/SETUP.md)

## Download problem sample data and metadata

1. Change working directory to the current lab directory and execute the following Kattis command:

```bash
cd <current lab directory>
ls
kattis get <problemid>
ls
cd <problemid>
ls
kattis test
```

## Type and fix the code

1. Create the directory structure similar to this lab as shown below:

```bash
findmaximum/
├── data/
├── src/
│   ├── findmaximum.sh
│   └── utils.sh
├── tests/
│   └── test_utils.bats
├── Makefile
└── README.md
└── screenshots/
```

2. Type the contents provided src, tests, and Makefile, and fix all fixmes. Write #fixed# after each #fixme.
3. Follow best programming practices by using proper white spaces, comments, etc.

### Input and Output format

- Never prompt user telling what data to enter for Kattis problems. Kattis knows what to enter.
- Directly read the input. Print only the answer as displayed in the sample output.
- Print as asked: nothing less; nothing more!
- Kattis is a computer program that provides specific input and expects exact output – to a space to give the correct verdict.

## Whole program test with Kattis-cli

1. Test the whole program using Kattis-cli. While testing, provide input using the same format as described in the Input section and shown in input samples.
2. Add three new input and corresponding output files like the sample files inside data folder (10 points)
3. Test locally and submit to Kattis once all the tests pass

```bash
kattis test
kattis submit
```

## Unit testing with bats

- `tests` folder contains bats unit tests for the functions in `utils.sh`. The test function should call each function in the `utils.sh` file with sample inputs and check if the output is as expected.
- fix any issues if found. If any test fails, it should print an error message.

```bash
make bats
```

## Submission

1. Create at least 3 screenshots showing your local tests (kattis test and make bats) and the kattis submit final **Accept** verdict and save them to the **screenshots** folder. (10 points).
2. Update the `README.md` file (10 points) as shown here: [https://github.com/rambasnet/csXXX-rbasnet](https://github.com/rambasnet/CSXXX-rbasnet)

```bash
cd <main repo folder>
ls
git pull
git status
git add <each file in the red that is part of this lab>
git status
git commit -m "write brief description of what was done"
git push
git status
```

3. Make sure the files are actually pushed to your remote GitHub repo.
