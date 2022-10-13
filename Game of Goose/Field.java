class Field {
    public static void main(String[] args) {
        System.out.println("Test class Field.");

        //the thrown dice value determines the initial field where the players go to during their turn.
        int dice1 = 1 | 2 | 3 | 4 | 5 | 6;
        int dice2 = 1 | 2 | 3 | 4 | 5 | 6;

        int diceThrowPlayer = dice1 + dice2;

        int field = diceThrowPlayer;

        //if a player throws 4 and 5 during the games first dice throw, the player succeeds to field 53.
        if (dice1 = 4; dice2 = 5; || dice1 = 5; dice2 = 4;) {

            field = 53;
        }

        //if a player throws 3 and 6 during the games first dice throw, the player succeeds to field 26.
        { else if (dice1 = 3; dice2 = 6; || dice1 = 6; dice2 = 3;)

            field = 26;

        } else {
            field = diceThrowPlayer;

        }
    }

    // Game of Goose has a total of 64 fields: 41 normal fields, 9 special fields, 14 goose fields.
    class normalField {
        int[] normalField = new int[] {1, 2, 3, 4, 7, 8, 10, 11, 12, 13, 15, 16, 17, 20, 21,
                22, 24, 25, 28, 29, 30, 33, 34, 35, 37, 38, 39, 40, 43, 44, 46,
                47, 48, 49, 51, 55, 56, 57, 60, 61, 62};
    }

    //0: start, 6: bridge, 19: inn, 31: pit, 42: thorn bush, 52: jail, 53:dices, 58: death, 63: finish
    class specialField {
        int[] specialField = new int[] {0, 6, 19, 31, 42, 52, 53, 58, 63};
    }

    // a Game of Goose player may use the dice value twice if a goose field is reached.
    // Goose fields are distinguished by the image of a goose.
    class gooseField {
        int [] gooseField = new int[] {5, 9, 14, 18, 23, 26, 27, 32, 36, 41, 45, 50, 54, 59};
    }
}
