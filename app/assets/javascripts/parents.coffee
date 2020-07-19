$ ->
  el = document.getElementById("sortable_list")
  if el != null
    sortable = Sortable.create(el,
      delay: 200,
      onUpdate: (evt) ->
        $.ajax
          url: '/parents/' + $("#parent_id").val() + '/sort'
          type: 'post'
          data: { from: evt.oldIndex, to: evt.newIndex }
    )