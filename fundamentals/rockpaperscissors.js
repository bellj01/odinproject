/*alert("HI")


let add7 = (num) => num + 7;
//alert(add7(3));

function multiply (a, b) {
    return a * b;
}
//alert(multiply(2,4));

function capitalize (str) {
    str = str.toLowerCase();
    firstLetter = str[0].toUpperCase();
    return firstLetter + str.slice(1);
}
//alert(capitalize("BoTH"));

function lastLetter (letter) {
    return letter.slice(-1);
}
alert(lastLetter("abcdz"));*/

function getRandomInt(max) {
    return Math.floor(Math.random() * max);
}


function getUserChoice () {
    let userInput = prompt("Rock, paper, or scissors?: ") 
    return userInput.toLowerCase();
}

function getComputerChoice () {

    const number = getRandomInt(3);
    let choice = '';
    if (number === 0 ) {
        choice = "rock";
    } else if (number == 1) {
        choice = "paper";
    } else if (number == 2) {
        choice = "scissors";
    }
    return "rock";
}

function playGame (userChoice, computerChoice) {
    if (userChoice === computerChoice) {
        alert("It's a draw!");
    } else if ((userChoice === "rock" && computerChoice === "scissors") ||
                (userChoice === "paper" && computerChoice === "rock") ||
                (userChoice === "scissors" && computerChoice === "paper")) {
        alert ("You win!");
        }
       else if ((computerChoice === "rock" && userChoice === "scissors") ||
        (computerChoice === "paper" && userChoice === "rock") ||
        (computerChoice === "scissors" && userChoice === "paper")) {
        alert ("You lose!");
}

}

//getUserChoice();

playGame(getUserChoice(), getComputerChoice());