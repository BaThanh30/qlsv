var loph_form = new Ext.Window({
    url: '...',
    hidden: true,

    renderTo: document.body,
    frame: true,
    title: 'User Form',
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
        text: 'Create Loph',

        listeners: {
            click: function() {
                var a = Ext.getCmp("malop").getValue();
                var b = Ext.getCmp("tengv").getValue();
                var c = Ext.getCmp("siso").getValue();
                var d = Ext.getCmp("tenmh").getValue();

                Ext.Ajax.request({
                    url: '/lophs',
                    method: 'POST',
                    params: {
                        malop: a,
                        tengv: b,
                        siso: c,
                        tenmh:d


                    },
                    success: function(response, opts) {
                        alert('success')
                        Ext.getCmp("myGrip").getStore().load();
                        Ext.getCmp("myGrip").getView().refresh();
                        loph_form.hide();
                        window.location.reload();

                    },
                    failure: function() {
                        alert('fail');
                    }

                });

            }
        }
    }, {
        xtype: 'tbbutton',
        text: 'Back',
        handler: function() {
            location.href = "/lophs";
        }

    }],

});