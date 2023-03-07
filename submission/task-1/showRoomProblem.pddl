(define (problem showRoomProblem)
    (:domain showRoomDomain)
    (:objects
        room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
        inh1 inh2 inh3 inh4 inh5 inh6 inh7 inh8 inh9 inh10 - inhabitant
        t1000 t1015 t1030 t1045 t1100 t1115 t1130 t1145 t1200 t1215 - time
    )

    (:init
        (roomLocked room1)
        (roomLocked room2)
        (roomLocked room3)
        (roomLocked room4)
        (roomLocked room5)
        (roomLocked room6)
        (roomLocked room7)
        (roomLocked room8)
        (roomLocked room9)
        (roomLocked room10)

        (canArrive t1000 inh1 room1)

        (canArrive t1015 inh2 room2) ; Forces collision 
        (canArrive t1030 inh2 room2)

        (canArrive t1015 inh3 room3)

        (canArrive t1045 inh4 room4)

        (canArrive t1100 inh5 room5)

        (canArrive t1115 inh6 room6)

        (canArrive t1130 inh7 room7)

        (canArrive t1145 inh8 room8)

        (canArrive t1200 inh9 room9)

        (canArrive t1215 inh10 room10)
    )

    (:goal
        (and
            (inhabitantSetup inh1)
            (inhabitantSetup inh2)
            (inhabitantSetup inh3)
            (inhabitantSetup inh4)
            (inhabitantSetup inh5)
            (inhabitantSetup inh6)
            (inhabitantSetup inh7)
            (inhabitantSetup inh8)
            (inhabitantSetup inh9)
            (inhabitantSetup inh10)
        )
    )
)