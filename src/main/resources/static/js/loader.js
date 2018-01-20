var ashokLoader;
ashokLoader = ashokLoader || (function () {
var pleaseWaitDiv = $('<div class="animationload"><div class="osahanloading"></div></div><div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1>Processing...</h1></div><div class="modal-body"><div class="progress progress-striped active">111<div class="bar" style="width: 100%;">ass</div></div></div></div>');
return {
    showPleaseWait: function() {
     pleaseWaitDiv.modal();
    },
    hidePleaseWait: function () {
    pleaseWaitDiv.modal('hide');
    },

};
})();