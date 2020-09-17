console.log("node_index<%ok%>")
target_array = document.getElementsByClassName("wait")
array_length = target_array.length

function spawn_card(){
  target = target_array[Math.round(Math.random()*target_array.length)]
  target.classList.remove("wait")
  target.classList.add("drift")
}

for(i=1;i<=5;i++){  
  target = target_array[Math.round(Math.random()*target_array.length)]
  target.classList.remove("wait")
  target.classList.add("drift")
}  

delay = 2000
for(i=1;i<=array_length;i++){  
  delay += 2000
  setTimeout(spawn_card,delay)
}  
console.log("node_index<%ok%>")
