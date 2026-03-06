select options:
    - player options:
        - num players (default 2)
        - computer players (default 1)
            - computer player difficulty (each computer player can have different difficulties)
    - board size: 10x10 (default)
    - boat options:
        - number of boats (default 5)
        - boat sizes (default 5, 4, 3, 2, 1)
    - shot options:
        - n shots per turn, or shots per ship
        - toggle shoot until you miss
        - volley - all shots occur simultaneously (can result in tie)
        - option for alternative weapon types (shots hit multiple squares, not sure i want to actually build this)

create board (1 per player)

place ships on board

game loop
    player 1 turn
        shoot n shots at player 2 board
        if hit, add to hit list
    check for win
    player 2 turn
        shoot n shots at player 1 board
        if hit, add to hit list
    check for win
    check for loss
    check for draw
    check for tie
    check for game over
    check for game win
    check for game loss
    check for game draw
    check for game tie
    check for game over



ability to replay game, step over shots taken
assistant - suggest shot placement based on probabilities