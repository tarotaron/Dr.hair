// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets


// カーソルが上に乗った時
$(".hover").hover(
	function() {
    $(this).css('display', 'block');
     // p、div、ul、h1〜h6などのタグの初期値 block
     // block⇒要素が横までいっぱいに広がり、縦に並んでいく
  });


$(function() {
function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
$('#img_prev').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
    }
}
$("#image").change(function(){
    readURL(this);
  });
  });

$("#icon").on('click',function() {
    console.log('on.click');
    $("#comment_form").focus();
    });


$(function() {
    //送信ボタンを無効化 .prop=formに多く使用
    $('#confirm').prop("disabled", true);
    // .change=中身が変更された際にイベント処理を実行
    $('#comment_form').change(function () {
        //変数let=変更不可
        let flag = true;
        $('#comment_form').each(function(e) {
            //もし必須項目が空なら
            if ($('required').eq(e).val() === "") {
                flag = false;
            }
        });
        if (flag) {
            $('#confirm').prop("disabled", false);
        }
        else {
            $('#confirm').prop("disabled", true);
        }
    });
});





