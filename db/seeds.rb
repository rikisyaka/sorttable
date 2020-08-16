
parent1 = Parent.create!(name: "Todo")
Child.create!(name:"task1",parent_id:parent1.id,memo:"test1",position:0)
Child.create!(name:"task2",parent_id:parent1.id,memo:"test2",position:1)
Child.create!(name:"task3",parent_id:parent1.id,memo:"test3",position:2)

parent2 = Parent.create!(name: "Doing")
Child.create!(name:"task4",parent_id:parent2.id,memo:"test1",position:0)
Child.create!(name:"task5",parent_id:parent2.id,memo:"test2",position:1)
Child.create!(name:"task6",parent_id:parent2.id,memo:"test3",position:2)

parent3 = Parent.create!(name: "Finish")
Child.create!(name:"task7",parent_id:parent3.id,memo:"test1",position:0)
Child.create!(name:"task8",parent_id:parent3.id,memo:"test2",position:1)
Child.create!(name:"task9",parent_id:parent3.id,memo:"test3",position:2)