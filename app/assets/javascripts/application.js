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
  }
);
     // p、div、ul、h1〜h6などのタグの初期値 block
     // block⇒要素が横までいっぱいに広がり、縦に並んでいく

$(".icon").on('click',function() {
  $(this).parents("div").find(".form-control").focus();
});

// $(function()は↓の略
// $(document).ready(function () {
// })
// application.jsがrailsを起動した際に読み込まれる為ページ遷移時に毎回loadするようにする
$(document).on('turbolinks:load', function() {
  function readURL(input) {
      // input.filesが1枚以上存在したら
    if (input.files && input.files[0]) {
      // FileReader=ファイルを非同期に読み込む
      var reader = new FileReader();
      // FileReader.onload= 読み込みが正常に完了した時に{}が発火
      reader.onload = function (e) {
      // inputを起点にの親divから.img_prevを探しsrcの値を取得
        $(input).parents("div").find(".img_prev").attr('src', e.target.result);
      }
    // readAsDataURL=ファイルを読み込むメソッド
      reader.readAsDataURL(input.files[0]);
    }
  }
    // .imageが変わったら
  $(".image").change(function(){
    // thisは何回も使用する変数なのでinputに変えている
    readURL(this);
  });
});

