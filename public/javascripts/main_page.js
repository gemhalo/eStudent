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
            new Ext.Panel({
                region: 'north',
                height: 80, // give north and south regions a height
                border: true,
		        contentEl: 'north',
                split: true,
             //   minSize: 40,
              //  maxSize: 40,
                margins: '0 0 0  0'

		       //headgr:false,
        //        autoEl: {
          //          tag: 'div',
       //             html:'<p>north - generally for menus, toolbars and/or advertisements</p>'
            //    }
            }), {
                // lazily created panel (xtype:'panel' is default)
                region: 'south',
                contentEl: 'south',
                split: true,
                height: 30,
                //minSize: 40,
                maxSize: 100,
                collapsible: true,
        		header: false,
                //title: 'Footer',
                margins: '0 0 0 5'
            },{
                region: 'east',
                id: 'east-panel', // see Ext.getCmp() below
                title: 'Notification Area',
                split: true,
                width: 200,
                minSize: 175,
                border: true,
                maxSize: 600,
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
		        contentEl:'west',
                id: 'west-panel', // see Ext.getCmp() below
                title: 'Navigation',
                split: true,
                width: 200,
                minSize: 200,
                maxSize: 240,
    		    activeOnTop: true,
                collapsible: false,
                activeItem:0,
                margins: '0 0 0 5',
 		        fill: true,
                hideBorders: true,
                layout: {
                    type: 'accordion',
                    animate: true
                },
                items: [
                {
                    contentEl: 'academics',
                    title: 'Academics',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },
                {
                    contentEl: 'courses',
                    title: 'Courses',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },
                {
                    contentEl: 'communications',
                    title: 'Communications',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },
                {
                    contentEl: 'settings',
                    title: 'Settings',
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
                deferredRender: true,
                activeTab: 0,     // first tab initially active
                items: [/*{
                    contentEl: 'center1',
                    title: 'Close Me',
                    closable: true,
                    autoScroll: true
                },*/ {
                    contentEl: 'center2',
                    //title: 'Details',
                    border: false,
                    header: false,
                    autoScroll: true,
                    overflow : 'auto'
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

