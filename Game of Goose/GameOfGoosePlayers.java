// Let's play Game of Goose
public class GameOfGoosePlayers {
    public static void main(String... args) {
        System.out.println("Test class 'GameOfGoosePlayers'.");

        // Determine the number of Game of Goose players.
        int numberOfPlayers = 2;

        // Every player has to choose a colour fiche: black, white, green, yellow, red, blue.
        String colourFiche[] = {"Black", "White", "Green", "Yellow", "Red", "Blue"};

        System.out.println("Player 1, choose one of the following colours: black, white, green, yellow, red, blue");
        String fichePlayer1 = "Black";

        System.out.println("Player 2, choose one of the following colours: black, white, green, yellow, red, blue");
        String fichePlayer2 = "Blue";

        // Players are not allowed to use the same colour as their opponents.
        if (fichePlayer1 == fichePlayer2) {
            System.out.println("Player 2, choose one of the following colours: black, white, green, yellow, red, blue");
        }

// The Game of Goose has 64 fields. Every player begins at start: field 0.
        int black = 0;
        int blue = 0;

// Throw a dice. The player who throws the highest value may start the game.
        int initialThrowBlack = 3;
        int initialThrowBlue = 6;

//Game of Goose player blue has thrown the highest Dice value and thus may start the game.

        Boolean fichePlayer1IsAbleToMove = true;
        Boolean fichePlayer2IsAbleToMove = true;
        Boolean fichePlayer3IsAbleToMove = false;
        Boolean fichePlayer4IsAbleToMove = false;
        Boolean fichePlayer5IsAbleToMove = false;
        Boolean fichePlayer6IsAbleToMove = false;
    }
}








