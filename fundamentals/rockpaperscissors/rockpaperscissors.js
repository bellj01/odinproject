let humanPoints = 0;
let compPoints = 0;

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
    return choice;
}

function playRound (userChoice, computerChoice) {
    pChoice.textContent = userChoice;
    cChoice.textContent = computerChoice;
    if ((userChoice === "rock" && computerChoice === "scissors") ||
                (userChoice === "paper" && computerChoice === "rock") ||
                (userChoice === "scissors" && computerChoice === "paper")) {
        humanPoints += 1;
        playerScore.textContent = humanPoints;
        }
       else if ((computerChoice === "rock" && userChoice === "scissors") ||
        (computerChoice === "paper" && userChoice === "rock") ||
        (computerChoice === "scissors" && userChoice === "paper")) {
            compPoints += 1;
            computerScore.textContent = compPoints;
        }
}


const buttons = document.querySelectorAll('button');

buttons.forEach((button) => {
    button.addEventListener('click', () => {
        let choice = button.id;
        playRound(choice, getComputerChoice());
        
        if(humanPoints === 5) {
            alert("You win!");
        }
        else if(compPoints === 5) {alert('The computer wins!');}

    })
}) 
