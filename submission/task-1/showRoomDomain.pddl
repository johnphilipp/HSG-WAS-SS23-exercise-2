(define (domain showRoomDomain)
    (:requirements :typing)
    (:types
        room inhabitant time - object
    )
    (:predicates
        (canArrive ?t - time ?inh - inhabitant ?r - room)
        (inhabitantSetup ?inh - inhabitant)
        (roomLocked ?r - room)
        (atRoom ?r - room ?t - time)
        (roomOccupied ?r - room)
    )

    (:action unlock
        :parameters (?t - time ?r - room)
        :precondition (and (roomLocked ?r) (not (roomOccupied ?r)))
        :effect (and (not (roomLocked ?r)) (atRoom ?r ?t))
    )

    (:action join
        :parameters (?t - time ?r - room)
        :precondition (and (not (roomOccupied ?r)) (atRoom ?r ?t) (not (roomLocked ?r)))
        :effect (and (roomOccupied ?r))
    )

    (:action showRoom
        :parameters (?t - time ?inh - inhabitant ?r - room)
        :precondition (and (atRoom ?r ?t) (canArrive ?t ?inh ?r) (not (roomLocked ?r)) (roomOccupied ?r))
        :effect (and (inhabitantSetup ?inh) (roomLocked ?r) (not (roomOccupied ?r)) (not (atRoom ?r ?t)))
    )
)