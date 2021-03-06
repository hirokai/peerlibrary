do -> # To not pollute the namespace
  Template.admin.arXivPDFs = ->
    ArXivPDFs.find {},
      sort:
        processingStart: -1
      limit: 5

  Template.adminButtons.events
    'click button.sync-arxhiv-pdf-cache': (e) ->
      Meteor.call 'sync-arxhiv-pdf-cache'
    'click button.sync-arxhiv-metadata': (e) ->
      Meteor.call 'sync-arxhiv-metadata'
    'click button.sync-local-pdf-cache': (e) ->
      Meteor.call 'sync-local-pdf-cache'
    'click button.process-pdfs': (e) ->
      Meteor.call 'process-pdfs'
    'click button.dummy-comments': (e) ->
      Meteor.call 'dummy-comments'
    'click button.dummy-notes': (e) ->
      Meteor.call 'dummy-notes'
