;; Patrol domain
;;

(define (domain patrol2)
  (:requirements :typing :action-costs)
  (:types
        location - object
        num - object
  )

  (:predicates
     (road ?l1 ?l2 - location)
     (at ?l - location)
     (next ?l1 ?l2 - location)
     (visited ?l - location)
     (origin ?l)
     (patrolling)
     (revealing)
     (succesor ?n1 ?n2 - num)
     (remaining-steps ?n - num)
  )

  (:functions
     (road-length ?l1 ?l2 - location) - number
     (unvisited-cost ?l - location) - number
     (total-cost) - number
  )

  (:action drive
    :parameters (?l1 ?l2 - location ?n1 ?n2 - num)
    :precondition (and
        (at ?l1)
        (road ?l1 ?l2)
        (patrolling)
        (remaining-steps ?n2)
        (succesor ?n1 ?n2)
      )
    :effect (and
        (not (at ?l1))
        (at ?l2)
        (visited ?l2)
        (not (remaining-steps ?n2))
        (remaining-steps ?n1)
        (increase (total-cost) (road-length ?l1 ?l2))
      )
  )

 (:action finish-patrol
     :parameters (?l - location)
     :precondition (and
         (at ?l)
         (origin ?l)
         (patrolling)
     )
     :effect (and
         (not (patrolling))
         (revealing)
     )
 )

 (:action check-visited-location
     :parameters (?l1 ?l2 - location)
     :precondition (and
         (revealing)
         (at ?l1)
         (next ?l1 ?l2)
         (visited ?l1)
     )
     :effect (and
         (at ?l2)
         (not (at ?l1))
         ;  (increase (total-cost) 0)

     )
 )

 (:action check-unvisited-location
     :parameters (?l1 ?l2 - location)
     :precondition (and
         (at ?l1)
         (next ?l1 ?l2)
         (not (visited ?l1))
         (revealing)
     )
     :effect (and
         (at ?l2)
         (not (at ?l1))
         (visited ?l1)
         (increase (total-cost) (unvisited-cost ?l1))
        ;  (increase (total-cost) 1)
     )
 )

)
