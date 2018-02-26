var user_js = {
  init : function() {
    this.dateTimePicker();
  },

  dateTimePicker: function(){
    $(document).ready(function($) {

      $('.datetimepicker').datetimepicker({
        defaultDate: new Date(),
      });
    });
  }
};
user_js.init();