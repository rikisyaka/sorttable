$ ->
  el = document.getElementById("sortable_list")
  if el != null
    sortable = Sortable.create(el,
      delay: 200,
      placeholder: "ph1",
      onUpdate: (evt) ->
        $.ajax
          url: 'parents/index/sort' 
          type: 'patch'
          data: { from: evt.oldIndex, to: evt.newIndex }
         
          
          
    )