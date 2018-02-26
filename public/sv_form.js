var sv_form = new Ext.Window({
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
        fieldLabel: 'Ma lop hoc',
        name: 'malop',
        id: 'sinhvien_loph_id',
        
        allowBlank: false
    },{
        xtype: 'textfield',
        fieldLabel: 'Ho ten',
        name: 'hoten',
        id: 'sinhvien_hoten',
        allowBlank: false

    },{
        xtype: 'textfield',
        fieldLabel: 'Nam sinh',
        name: 'namsinh',
        id: 'sinhvien_namsinh',
        allowBlank: false

    },{
        xtype: 'textfield',
        fieldLabel: 'Dia chi',
        name: 'diachi',
        id: 'sinhvien_diachi',
        allowBlank: false

    }], 
    buttons:[{
        xtype: 'tbbutton',
        text: 'Create Sinhvien',

        listeners: {
            click: function() {
                var a = Ext.getCmp("sinhvien_loph_id").getValue();
                var b = Ext.getCmp("sinhvien_hoten").getValue();
                var c = Ext.getCmp("sinhvien_namsinh").getValue();
                var d = Ext.getCmp("sinhvien_diachi").getValue();

                Ext.Ajax.request({
                    url: '/sinhviens',
                    method: 'POST',
                    params: {
                        malop: a,
                        hoten: b,
                        namsinh: c,
                        daichi: d
                    },
                    success: function(response, opts) {
                        
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
            location.href = "/sinhviens";
        }

    }],

});