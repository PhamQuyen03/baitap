/*!
 * froala_editor v2.3.4 (https://www.froala.com/wysiwyg-editor)
 * License https://froala.com/wysiwyg-editor/terms/
 * Copyright 2014-2016 Froala Labs
 */

!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof module&&module.exports?module.exports=function(b,c){return void 0===c&&(c="undefined"!=typeof window?require("jquery"):require("jquery")(b)),a(c),c}:a(jQuery)}(function(a){"use strict";a.extend(a.FE.POPUP_TEMPLATES,{"file.insert":"[_BUTTONS_][_UPLOAD_LAYER_][_PROGRESS_BAR_]"}),a.extend(a.FE.DEFAULTS,{fileUploadURL:"https://i.froala.com/upload",fileUploadParam:"file",fileUploadParams:{},fileUploadToS3:!1,fileUploadMethod:"POST",fileMaxSize:10485760,fileAllowedTypes:["*"],fileInsertButtons:["fileBack","|"],fileUseSelectedText:!1}),a.FE.PLUGINS.file=function(b){function c(){var a=b.$tb.find('.fr-command[data-cmd="insertFile"]'),c=b.popups.get("file.insert");if(c||(c=s()),e(),!c.hasClass("fr-active")){b.popups.refresh("file.insert"),b.popups.setContainer("file.insert",b.$tb);var d=a.offset().left+a.outerWidth()/2,f=a.offset().top+(b.opts.toolbarBottom?0:a.outerHeight());b.popups.show("file.insert",d,f,a.outerHeight())}}function d(){var a=b.popups.get("file.insert");a||(a=s()),a.find(".fr-layer.fr-active").removeClass("fr-active").addClass("fr-pactive"),a.find(".fr-file-progress-bar-layer").addClass("fr-active"),a.find(".fr-buttons").hide(),f("Uploading",0)}function e(a){var c=b.popups.get("file.insert");c&&(c.find(".fr-layer.fr-pactive").addClass("fr-active").removeClass("fr-pactive"),c.find(".fr-file-progress-bar-layer").removeClass("fr-active"),c.find(".fr-buttons").show(),a&&b.popups.show("file.insert",null,null))}function f(a,c){var d=b.popups.get("file.insert");if(d){var e=d.find(".fr-file-progress-bar-layer");e.find("h3").text(a+(c?" "+c+"%":"")),e.removeClass("fr-error"),c?(e.find("div").removeClass("fr-indeterminate"),e.find("div > span").css("width",c+"%")):e.find("div").addClass("fr-indeterminate")}}function g(a){d();var c=b.popups.get("file.insert"),e=c.find(".fr-file-progress-bar-layer");e.addClass("fr-error"),e.find("h3").text(a)}function h(a,c,d){b.edit.on(),b.events.focus(!0),b.selection.restore(),b.html.insert('<a href="'+a+'" id="fr-inserted-file" class="fr-file">'+(c||b.selection.text())+"</a>");var e=b.$el.find("#fr-inserted-file");e.removeAttr("id"),b.popups.hide("file.insert"),b.undo.saveStep(),b.events.trigger("file.inserted",[e,d])}function i(c){try{if(b.events.trigger("file.uploaded",[c],!0)===!1)return b.edit.on(),!1;var d=a.parseJSON(c);return d.link?d:(n(z,c),!1)}catch(e){return n(B,c),!1}}function j(c){try{var d=a(c).find("Location").text(),e=a(c).find("Key").text();return b.events.trigger("file.uploadedToS3",[d,e,c],!0)===!1?(b.edit.on(),!1):d}catch(f){return n(B,c),!1}}function k(a){var c=this.status,d=this.response,e=this.responseXML,f=this.responseText;try{if(b.opts.fileUploadToS3)if(201==c){var g=j(e);g&&h(g,a,d||e)}else n(B,d||e);else if(c>=200&&300>c){var k=i(f);k&&h(k.link,a,d||f)}else n(A,d||f)}catch(l){n(B,d||f)}}function l(){n(B,this.response||this.responseText||this.responseXML)}function m(a){if(a.lengthComputable){var b=a.loaded/a.total*100|0;f("Uploading",b)}}function n(a,c){b.edit.on(),g(b.language.translate("Something went wrong. Please try again.")),b.events.trigger("file.error",[{code:a,message:F[a]},c])}function o(){b.edit.on(),e(!0)}function p(a){if(b.events.trigger("file.beforeUpload",[a])===!1)return!1;if("undefined"!=typeof a&&a.length>0){var c=a[0];if(c.size>b.opts.fileMaxSize)return n(C),!1;if(b.opts.fileAllowedTypes.indexOf("*")<0&&b.opts.fileAllowedTypes.indexOf(c.type.replace(/file\//g,""))<0)return n(D),!1;var e;if(b.drag_support.formdata&&(e=b.drag_support.formdata?new FormData:null),e){var f;if(b.opts.fileUploadToS3!==!1){e.append("key",b.opts.fileUploadToS3.keyStart+(new Date).getTime()+"-"+(c.name||"untitled")),e.append("success_action_status","201"),e.append("X-Requested-With","xhr"),e.append("Content-Type",c.type);for(f in b.opts.fileUploadToS3.params)b.opts.fileUploadToS3.params.hasOwnProperty(f)&&e.append(f,b.opts.fileUploadToS3.params[f])}for(f in b.opts.fileUploadParams)b.opts.fileUploadParams.hasOwnProperty(f)&&e.append(f,b.opts.fileUploadParams[f]);e.append(b.opts.fileUploadParam,c);var g=b.opts.fileUploadURL;b.opts.fileUploadToS3&&(g="https://"+b.opts.fileUploadToS3.region+".amazonaws.com/"+b.opts.fileUploadToS3.bucket);var h=b.core.getXHR(g,b.opts.fileUploadMethod);h.onload=function(){k.call(h,b.opts.fileUseSelectedText?null:c.name)},h.onerror=l,h.upload.onprogress=m,h.onabort=o,d(),b.edit.off();var i=b.popups.get("file.insert");i&&i.off("abortUpload").on("abortUpload",function(){4!=h.readyState&&h.abort()}),h.send(e)}}}function q(c){b.events.$on(c,"dragover dragenter",".fr-file-upload-layer",function(){return a(this).addClass("fr-drop"),!1},!0),b.events.$on(c,"dragleave dragend",".fr-file-upload-layer",function(){return a(this).removeClass("fr-drop"),!1},!0),b.events.$on(c,"drop",".fr-file-upload-layer",function(d){d.preventDefault(),d.stopPropagation(),a(this).removeClass("fr-drop");var e=d.originalEvent.dataTransfer;if(e&&e.files){var f=c.data("instance")||b;f.file.upload(e.files)}},!0),b.events.$on(c,"change",'.fr-file-upload-layer input[type="file"]',function(){if(this.files){var d=c.data("instance")||b;d.file.upload(this.files)}a(this).val("")},!0)}function r(){e()}function s(a){if(a)return b.popups.onHide("file.insert",r),!0;var c="";c='<div class="fr-buttons">'+b.button.buildList(b.opts.fileInsertButtons)+"</div>";var d="";d='<div class="fr-file-upload-layer fr-layer fr-active" id="fr-file-upload-layer-'+b.id+'"><strong>'+b.language.translate("Drop file")+"</strong><br>("+b.language.translate("or click")+')<div class="fr-form"><input type="file" name="'+b.opts.fileUploadParam+'" accept="/*" tabIndex="-1"></div></div>';var e='<div class="fr-file-progress-bar-layer fr-layer"><h3 class="fr-message">Uploading</h3><div class="fr-loader"><span class="fr-progress"></span></div><div class="fr-action-buttons"><button type="button" class="fr-command" data-cmd="fileDismissError" tabIndex="2">OK</button></div></div>',f={buttons:c,upload_layer:d,progress_bar:e},g=b.popups.create("file.insert",f);return q(g),g}function t(c){return a(c).hasClass("fr-file")?b.events.trigger("file.unlink",[c]):void 0}function u(c){var e=c.originalEvent.dataTransfer;if(e&&e.files&&e.files.length){var f=e.files[0];if(f&&"undefined"!=typeof f.type&&f.type.indexOf("image")<0&&(b.opts.fileAllowedTypes.indexOf(f.type)>=0||b.opts.fileAllowedTypes.indexOf("*")>=0)){b.markers.remove(),b.markers.insertAtPoint(c.originalEvent),b.$el.find(".fr-marker").replaceWith(a.FE.MARKERS),b.popups.hideAll();var g=b.popups.get("file.insert");return g||(g=s()),b.popups.setContainer("file.insert",a(b.opts.scrollableContainer)),b.popups.show("file.insert",c.originalEvent.pageX,c.originalEvent.pageY),d(),p(e.files),c.preventDefault(),c.stopPropagation(),!1}}}function v(){b.events.on("drop",u),b.events.$on(b.$win,"keydown",function(c){var d=c.which,e=b.popups.get("file.insert");e&&d==a.FE.KEYCODE.ESC&&e.trigger("abortUpload")}),b.events.on("destroy",function(){var a=b.popups.get("file.insert");a&&a.trigger("abortUpload")})}function w(){b.events.disableBlur(),b.selection.restore(),b.events.enableBlur(),b.popups.hide("file.insert"),b.toolbar.showInline()}function x(){v(),b.events.on("link.beforeRemove",t),s(!0)}var y=1,z=2,A=3,B=4,C=5,D=6,E=7,F={};return F[y]="File cannot be loaded from the passed link.",F[z]="No link in upload response.",F[A]="Error during file upload.",F[B]="Parsing response failed.",F[C]="File is too large.",F[D]="File file type is invalid.",F[E]="Files can be uploaded only to same domain in IE 8 and IE 9.",{_init:x,showInsertPopup:c,upload:p,insert:h,back:w,hideProgressBar:e}},a.FE.DefineIcon("insertFile",{NAME:"file-o"}),a.FE.RegisterCommand("insertFile",{title:"Upload File",undo:!1,focus:!0,refreshAfterCallback:!1,popup:!0,callback:function(){this.popups.isVisible("file.insert")?(this.$el.find(".fr-marker")&&(this.events.disableBlur(),this.selection.restore()),this.popups.hide("file.insert")):this.file.showInsertPopup()},plugin:"file"}),a.FE.DefineIcon("fileBack",{NAME:"arrow-left"}),a.FE.RegisterCommand("fileBack",{title:"Back",undo:!1,focus:!1,back:!0,refreshAfterCallback:!1,callback:function(){this.file.back()},refresh:function(a){this.opts.toolbarInline?(a.removeClass("fr-hidden"),a.next(".fr-separator").removeClass("fr-hidden")):(a.addClass("fr-hidden"),a.next(".fr-separator").addClass("fr-hidden"))}}),a.FE.RegisterCommand("fileDismissError",{title:"OK",callback:function(){this.file.hideProgressBar(!0)}})});