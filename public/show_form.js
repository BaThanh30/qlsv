var show_form = new Ext.Window({
    url: '...',
    hidden: true,
    
    renderTo: document.body,
    frame: true,
    title: 'Lop Form',
    width: 300,
    height:200,
    layout: 'form',
    url: 'loph_form.submit',
    items: [{
        xtype: 'textfield',
        fieldLabel: 'Ma Lop',
        name: 'malop',
        id: 'loph_malop',
        allowBlank: false
    },{
        xtype: 'textfield',
        fieldLabel: 'Ten Giang vien',
        name: 'tengv',
        id: 'tengv',
        allowBlank: false

    }, {
        xtype: 'textfield',
        fieldLabel: 'Si so',
        name: 'siso',
        id: 'siso',
        allowBlank: false

    }, {
        xtype: 'textfield',
        fieldLabel: 'Ten Mon hoc',
        name: 'tenmh',
        id: 'tenmh',
        allowBlank: false

    }], 
    buttons:[{
         xtype: 'tbbutton',
            text: 'Create',
            handler: function() {
                loph_form.show();
            }, {
        xtype: 'tbbutton',
        text: 'Back',
        handler: function() {
            location.href = "/lophs";
        }

    }],

});