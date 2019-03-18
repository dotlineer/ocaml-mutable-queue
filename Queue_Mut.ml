type 'a t = {ar: 'a option array; mutable f: int; mutable r: int}
exception Empty of string
exception Full of string

let empty initLength = {ar = Array.make (initLength + 1) None; f = 0; r = 0}

let isEmpty queue = 
  queue.f = queue.r
  
let isFull queue =
  let arLen = Array.length (queue.ar) in
  ((arLen + queue.f - queue.r) mod arLen = 1)
  
  
let enqueue (newEl, queue) =
  if (not (isFull queue)) then (
    queue.ar.(queue.r) <- Some newEl;
    queue.r <- (queue.r+1);
    let arLen = Array.length (queue.ar) in
    if (queue.r >= arLen) then queue.r <- (queue.r mod arLen)
  )
  else
    raise (Full "Full queue")


let dequeue queue =
  queue.ar.(queue.f) <- None;
  if (not (isEmpty queue)) then queue.f <- (queue.f + 1) mod (Array.length (queue.ar))
  

let first queue =
  if (isEmpty queue) then raise (Empty "Empty queue!")
  else (
    match queue.ar.(queue.f) with
      Some v -> v
    | None -> failwith "implementation error!"
  )
