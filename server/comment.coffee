do -> # To not pollute the namespace
  Meteor.publish 'comments-by-publication-and-paragraph', (publication, paragraph) ->
    Comments.find
      publication: publication
      paragraph: paragraph
