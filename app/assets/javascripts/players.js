// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Create the Nystra Namespace
if(typeof Nystra === "undefined") {
    var Nystra = {};
}

Nystra.initialize_player_form = function(){
    $('#traits-next').bind('click', function () {
        //store traits
        $("#player_mental").val($("#mental").val());
        $("#player_physical").val($("#physical").val());
        $("#player_social").val($("#social").val());
        //move to next screen
        $("#traits").hide();
        $("#race").show();
    });

    $('#race-next').bind('click', function () {
        //store race and prof
        $("#player_race_id").val($("#race-select").val());
        $("#player_profession_id").val($("#profession-select").val());
        //move to next screen
        $("#race").hide();
        $("#name").show();
    });

    $('#race-back').bind('click', function () {
        //store race and prof
        $("#player_race_id").val($("#race-select").val());
        $("#player_profession_id").val($("#profession-select").val());
        //move to previous screen
        $("#race").hide();
        $("#traits").show();
    });
    $('#create-player').bind('click', function () {
        //store traits
        $("#player_name").val($("#name-input").val());
        // TODO set the sprite
        $("input:submit[name='commit']").click();
    });

    $('#name-back').bind('click', function () {
        //store traits
        $("#player_name").val($("#name-input").val());
        //move to previous screen
        $("#race").show();
        $("#name").hide();
    });

    $('.trait-slider').bind('change', function () {
       Nystra.set_player_points();
    });
}

Nystra.set_player_points = function(){
    var MAX_PLAYER_POINTS = 225;
    var mental = parseInt($("#mental").val());
    var physical = parseInt($("#physical").val());
    var social = parseInt($("#social").val());
    var used_points = mental + physical + social
    var current_points = MAX_PLAYER_POINTS - used_points;
    $("#player_points").html(current_points);
    if (current_points < 0){
        $(".submit-button").hide();
        $("#player_points").css("color","red");
    }
    else{
        $(".submit-button").show();
        $("#player_points").css("color","#ced0c6");
    }
}
