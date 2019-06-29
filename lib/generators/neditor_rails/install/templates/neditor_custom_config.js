//neditor custom config
(function () {
    window.CUSTOM_CONFIG = {
      // Insert your config code, more details on http://fex.baidu.com/ueditor/#start-config
      elementPathEnabled: false,
      wordCount:0,
      maximumWords:5000,
      pasteplain:true,
      initialFrameHeight:300,
      autoHeightEnabled: true,
      imageFieldName: 'upfile',
      autoFloatEnabled: false,
      // toolbars: [
      //      ['Source','Undo','Redo','Cleardoc','SearchReplace','InsertImage','WordImage','Bold','ForeColor','JustifyLeft',
      //      'JustifyCenter','JustifyRight','JustifyJustify','RemoveFormat','FormatMatch','AutoTypeSet','PastePlain',
      //      'FontSize','Preview','Link','FullScreen', 'PageBreak', 'InsertTable','Attachment','InsertVideo']
      // ]
    };
    jQuery.extend(window.UEDITOR_CONFIG, window.CUSTOM_CONFIG);
})();

UE.Editor.prototype.getActionUrl = function(action) {
    /* 按config中的xxxActionName返回对应的接口地址 */
    if (action == 'uploadimage' || action == 'uploadscrawl') {
        return 'http://a.b.com/upload.php';
    } else if (action == 'uploadvideo') {
        return 'http://a.b.com/video.php';
    } else {
        return this._bkGetActionUrl.call(this, action);
    }
}
