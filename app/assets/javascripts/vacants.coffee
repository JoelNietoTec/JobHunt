# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  provinces = $('#province_select').html();
  districts = $('#district_select').html();
  $(document).ready ->
    country = $('#country_select :selected').val()
    options = $(provinces).filter("optgroup[label='#{country}']").html()
    if options
      $('#province_select').html(options)
    else
      $('#province_select').html("No Disponible")
    province = $('#province_select :selected').val()
    options2 = $(districts).filter("optgroup[label='#{province}']").html()
    if options2
      $('#district_select').html(options2)
    else
      $('#district_select').html("No Disponible")
  $('#country_select').change ->
    country = $('#country_select :selected').val()
    options = $(provinces).filter("optgroup[label='#{country}']").html()
    if options
      $('#province_select').html(options)
    else
      $('#province_select').html("No Disponible")
    province = $('#province_select :selected').val()
    options2 = $(districts).filter("optgroup[label='#{province}']").html()
    if options2
      $('#district_select').html(options2)
    else
      $('#district_select').html("No Disponible")
  $('#province_select').change ->
    province = $('#province_select :selected').val()
    options = $(districts).filter("optgroup[label='#{province}']").html()
    if options
      $('#district_select').html(options)
    else
      $('#district_select').html("No Disponible")
