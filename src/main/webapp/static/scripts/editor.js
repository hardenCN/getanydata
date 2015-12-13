
var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
    mode: 'markdown',
    lineNumbers: true,
    matchBrackets: false,
    theme: 'default',
    indentUnit: 4
});

var outer = $('#editor .CodeMirror'),
    output = $('#markdown'),
    oldText = '';

function update() {

    var text = editor.getValue();
    if (text === oldText) {
        return;

    } else {
        oldText = text;
    }

    var tokens = marked.lexer(text);
    output.html(marked.parser(tokens));
    prettyPrint();

}

var padding = 30,
    top = document.body.scrollTop;

$(window).bind('resize', function() {
    $('.CodeMirror-scroll').height(outer.height());
});
$('.CodeMirror-scroll').height(outer.height());


// Prevent overscrolling in the textarea from messing around with the body
// scroll value (and thus scrolling the markdown preview)
var scroll = $('#editor .CodeMirror-scrollbar');
outer.bind('mousewheel', function(e) {

    var maxScroll = (scroll[0].scrollHeight - scroll.height()),
        scrollTop = scroll[0].scrollTop;

    var dir = e.wheelDelta < 0 ? 1 : -1;
    if ((scrollTop <= 0 && dir === -1) || (scrollTop >= maxScroll && dir === 1)) {
        e.preventDefault();
        return false;
    }

});

$(document.body).bind('mousewheel', function(e) {
    top = document.body.scrollTop;
});

setInterval(update, 100);

$("#api-md-desc").hide();
$("#api-md-btn").hide();

$('#addHeads').bind("click",function(){
    editor.setValue(editor.getValue() +"\n#### HTTP-Heads\n"+"| 参数名  | 类型 | 必填 | 描述 | 默认值\n"
    +"|:---:| :---:|:----:|:-------:|:-----:|\n"
    +"|token|string|是|请求认证| 空|\n");
});
$('#addBody').bind("click",function(){
    editor.setValue(editor.getValue() +"\n"+"| 参数名  | 类型 | 必填 | 描述 | 默认值\n"
    +"|:------| ------:|:----:|:-------:|:-----:|\n"
    +"|token|string|是|请求认证| 空|\n");
});
$('#addUndo').bind("click",function(){
    editor.undo();
});
