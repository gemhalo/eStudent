 Ext.onReady(function(){
    
        // NOTE: This is an example showing simple state management. During development,
        // it is generally best to disable state management as dynamically-generated ids
        // can change across page loads, leading to unpredictable results.  The developer
        // should ensure that stable state ids are set for stateful components in real apps.
        Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
        
        var viewport = new Ext.Viewport({
            layout: 'border',
            items: [
            // create instance immediately
            new Ext.BoxComponent({
                region: 'north',
                height: 66, // give north and south regions a height
                autoEl: {
                    tag: 'div',
                    //html:'<p>north - generally for menus, toolbars and/or advertisements</p>'
                }
            }), {
                // lazily created panel (xtype:'panel' is default)
                region: 'south',
                contentEl: 'south',
                split: true,
                height: 100,
                minSize: 100,
                maxSize: 200,
                collapsible: true,
                //title: 'Footer',
                margins: '0 0 0 0'
            },{ 
                region: 'east',
                id: 'east-panel', // see Ext.getCmp() below
                title: 'Notification Area',
                split: true,
                width: 200,
                minSize: 175,
                maxSize: 400,
                collapsible: true,
                activeItem:0,
                margins: '0 0 0 5',
                layout: {
                    type: 'accordion',
                    animate: true
                },
	        items: [
	           {
                    contentEl: 'notification_area',
                    title: 'Notifications',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                  }   
   		]
              
	    }, {
                region: 'west',
                id: 'west-panel', // see Ext.getCmp() below
                title: 'Menu Area',
                split: true,
                width: 200,
                minSize: 175,
                maxSize: 400,
    		activeOnTop: false,
                collapsible: false,
                activeItem:0,
                margins: '0 0 0 5',
 		fill: false,        
                layout: {
                    type: 'accordion',
                    animate: true 
                },
                items: [
                {
                    contentEl: 'basic_setup',
                    title: 'Courses',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },
                {
                    contentEl: 'west',
                    title: 'Academics',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },
                /*{
                    contentEl: 'west_south',
                    title: 'Navigation',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },*/
                {
                    contentEl: 'student_menu',
                    title: 'Services',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                }
                
                /*{
                    id:'mu_forms',
                    title: 'Forms Menu',
                    //html: '<p>Some settings in here.</p>',
                    border: false,
                    iconCls: 'settings'
                }*/]
            },
            // in this instance the TabPanel is not wrapped by another panel
            // since no title is needed, this Panel is added directly
            // as a Container
            new Ext.TabPanel({
                region: 'center', // a center region is ALWAYS required for border layout
                deferredRender: false,
                activeTab: 0,     // first tab initially active
                items: [/*{
                    contentEl: 'center1',
                    title: 'Close Me',
                    closable: true,
                    autoScroll: true
                },*/ {
                    contentEl: 'center2',
                    title: 'Details',
                    autoScroll: true
                }]
            })]
        });
        // get a reference to the HTML element with id "hideit" and add a click listener to it 
        Ext.get("hideit").on('click', function(){
            // get a reference to the Panel that was created with id = 'west-panel' 
            var w = Ext.getCmp('west-panel');
            // expand or collapse that Panel based on its collapsed property state
            w.collapsed ? w.expand() : w.collapse();
        });
    });
