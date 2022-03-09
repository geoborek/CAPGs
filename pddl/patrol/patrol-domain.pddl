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
     (last ?l - location)
     (checked ?l - location)
     (visited ?l - location)
     (origin ?l)
     (revealing)
     (goal)
     (succesor ?n1 ?n2 - num)
     (max-steps ?n - num)
  )

  (:functions
     (road-length ?l1 ?l2 - location) - number
     (cost-check-unvisited-location ?l - location) - number
     (total-cost) - number
  )

  (:action drive
    :parameters (?l1 ?l2 - location ?n1 ?n2 - num)
    :precondition (and
        (at ?l1)
        (road ?l1 ?l2)
        (not (revealing))
        (max-steps ?n2)
        (succesor ?n1 ?n2)
      )
    :effect (and
        (not (at ?l1))
        (at ?l2)
        (visited ?l2)
        (not (max-steps ?n2))
        (max-steps ?n1)
        (increase (total-cost) (road-length ?l1 ?l2))
      )
  )

 (:action finish-patrol
     :parameters (?l - location)
     :precondition (and 
         (at ?l)
         (origin ?l)
         (not (revealing))
     )
     :effect (and 
         (revealing)
     )
 )
 
 (:action move
     :parameters (?l1 ?l2 - location)
     :precondition (and
         (revealing)
         (checked ?l1) 
         (at ?l1)
         (next ?l1 ?l2)
     )
     :effect (and 
         (at ?l2)
         (not (at ?l1))
     )
 )
 
 (:action check-visited-location
     :parameters (?l - location)
     :precondition (and 
         (at ?l)
         (visited ?l)
         (not (checked ?l))
         (revealing)
     )
     :effect (and 
         (checked ?l)
        ;  (increase (total-cost) 0)
     )
 )
  
 (:action check-unvisited-location
     :parameters (?l - location)
     :precondition (and 
         (at ?l)
         (not (visited ?l))
         (not (checked ?l))
         (revealing)
     )
     :effect (and 
         (checked ?l)
         (increase (total-cost) (cost-check-unvisited-location ?l))
     )
 )

 (:action finish-revealing
     :parameters (?l - location)
     :precondition (and 
         (at ?l)
         (last ?l)
         (checked ?l)
         (revealing)
     )
     :effect (and 
         (goal)
     )
 )
 
)
