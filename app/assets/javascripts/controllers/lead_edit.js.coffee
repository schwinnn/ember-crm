App.LeadEditController = Ember.ObjectController.extend
  
  actions:
    
    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'lead'

    cancle: ->
      @get('model').rollback()
      @transitionToRoute 'lead'
