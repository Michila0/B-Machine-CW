/* Battleships
 * Author: ASUS
 * Creation date: 30/11/2024
 */
MACHINE
    Battleships
SETS
    PLAYER = {Player1, Player2}
CONSTANTS
    grid_size
PROPERTIES
    grid_size = 10
VARIABLES
    warship_positions
INVARIANT
    warship_positions: PLAYER --> POW1(1..grid_size * 1..grid_size) &
    !p.(p:PLAYERcard(warship_positions(p) =3) &
    !p1, p2.(p1:PLAYER & p2:PLAYER & p1 /= p2 => warship_positions(p1) /\         warship_positions(p2) = {})
INITIALISATION
    warship_positions := {Player1 |-> {}, Player2 |-> {}}
OPERATIONS
   PlaceWarship(player, x, y) =
   PRE
    people: PEOPLE
       

END
