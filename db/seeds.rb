
parent1 = Parent.create!(name: "task1")
Child.create!(name:"child1",parent_id:parent1.id,memo:"test1",position:0)
Child.create!(name:"child2",parent_id:parent1.id,memo:"test2",position:1)
Child.create!(name:"child3",parent_id:parent1.id,memo:"test3",position:2)