//= require jquery3
//= require popper
//= require bootstrap-sprockets

$(document).on('turbolinks:load', function(){ $.rails.refreshCSRFTokens(); });
