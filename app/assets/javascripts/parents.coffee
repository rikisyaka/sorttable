$ ->
  el = document.getElementById("todo")
  console.log("hey")
  if el != null
    sortable = Sortable.create(el,
      delay: 200,
      onUpdate: (evt) ->
        $.ajax
          url: '/parents/' + $("#parent_id").val() + '/sort'
          type: 'post'
          data: { from: evt.oldIndex, to: evt.newIndex }
    )

  el = document.getElementById("doing")
  console.log("hey2")
  if el != null
    sortable = Sortable.create(el,
      delay: 200,
      onUpdate: (evt) ->
        $.ajax
          url: '/parents/' + $("#parent_id2").val() + '/sort'
          type: 'post'
          data: { from: evt.oldIndex, to: evt.newIndex }
    )