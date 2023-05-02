%dw 2.0
output application/json
/*
in thise example i am going to add the BossName as of my expected o/p our input is Array so i have taken map function The map function is used to transform the data contained in an array It will  iterating over the elements in the array and applying a transformation to each element
*/
---
payload map(item, index)->{
"EmpName": item.name,
/* Here To get the boss name  we need to do filter operation. here iam going to equal the bossId which is there in the present item with the ID present in the item here we compared with the ID 
*/
"BossName": (payload filter $.ID == item.bossID).name[0]
}