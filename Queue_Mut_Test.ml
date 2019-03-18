open Queue_Mut;;


let q0 = empty 5;;
enqueue (3, q0);;
enqueue (4, q0);;
enqueue (5, q0);;
enqueue (7, q0);;
enqueue (8, q0);;
enqueue (9, q0);;
q0;;
dequeue q0;;
q0;;
dequeue q0;;
q0;;
dequeue q0;;
q0;;
dequeue q0;;
q0;;
first q0;;
dequeue q0;;
q0;;
enqueue (3, q0);;
enqueue (4, q0);;
enqueue (5, q0);;
enqueue (6, q0);;

enqueue (7, q0);;
enqueue (8, q0);;
first q0;;
first q0;;
dequeue q0;;
first q0;;




let q2 = enqueue(3, (empty 5));;

let q3 = enqueue(4, enqueue(3, (empty 5)));;

let q4 = dequeue(enqueue(4, enqueue(3, (empty 5))));;

let q5 = first(dequeue(enqueue(4, enqueue(3, (empty 5)))));;

let q6 = dequeue(dequeue(enqueue(4, enqueue(3, (empty 5)))));;

let q7 = first(dequeue(dequeue(enqueue(4, enqueue(3, (empty 5))))));;
