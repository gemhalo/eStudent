// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
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
            }, {
                region: 'east',
                title: 'East Side',
                collapsible: false,
                split: true,
                width: 200, // give east and west regions a width
                minSize: 150,
                maxSize: 400,
                margins: '0 5 0 0',
                layout: 'fit', // specify layout manager for items
                items:            // this TabPanel is wrapped by another Panel so the title will be applied
                new Ext.TabPanel({
                    border: false, // already wrapped so don't add another border
                    activeTab: 1, // second tab initially active
                    tabPosition: 'bottom',
                    items: [{
                        html: '<p>A TabPanel component can be a region.</p>',
                        title: 'A Tab',
                        autoScroll: true
                    }, new Ext.grid.PropertyGrid({
                        title: 'Property Grid',
                        closable: true,
                        source: {
                            "(name)": "Properties Grid",
                            "grouping": false,
                            "autoFitColumns": true,
                            "productionQuality": false,
                            "created": new Date(Date.parse('10/15/2006')),
                            "tested": false,
                            "version": 0.01,
                            "borderWidth": 1
                        }
                    })]
                })
            }, {
                region: 'west',
                id: 'west-panel', // see Ext.getCmp() below
                title: 'Menu Area',
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
                    contentEl: 'basic_setup',
                    title: 'Basic Setup',
                    border: false,
                    iconCls: 'nav' // see the HEAD section for style used
                },
                {
                    contentEl: 'west',
                    title: 'MU Forms',
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
                    title: 'Student Menu',
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

