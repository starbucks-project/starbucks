(function($){
    $.fn.ezMark=function(options){
        options=options||{};
        var defaultOpt={
            checkboxCls:    
            options.checkboxCls||'ez-checkbox',
            checkedCls:options.checkedCls||'ez-checked',
            selectedCls:options.selectedCls||'ez-selected',
            hideCls:'ez-hide'
        };
        return this.each(function(){
            var $this=$(this);
            var wrapTag='<div class="'+defaultOpt.checkboxCls+'">'

            if($this.attr('type')=='checkbox'){
                $this.addClass(defaultOpt.hideCls).wrap(wrapTag).change(function(){
                    if($(this).is(':checked')){$(this).parent().addClass(defaultOpt.checkedCls);
                    }   else    {
                        $(this).parent().removeClass(defaultOpt.checkedCls);
                    }
                });
                if($this.is(':checked')){
                    $this.parent().addClass(defaultOpt.checkedCls);
                }
            }   
        });}})(jQuery);