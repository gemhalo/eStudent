class MainApp < Netzke::Basepack::GridPanel

  def configuration
    #define the javascript layout here
    sup = super
    sup.merge(
#var viewport = new Ext.Viewport({
#    layout: 'border',
      items: [
        # create instance immediately
        #new Ext.BoxComponent(
        {
          :region: 'north',
          :height: 32, #// give north and south regions a height
          :autoEl: {
            :tag: 'div',
            :html:'<p>north - generally for menus, toolbars and/or advertisements</p>'
          }
        }
        #)
        ,{
        #// lazily created panel (xtype:'panel' is default)
          :region: 'south',
          :contentEl: 'south',
          :split: true,
          :height: 100,
          :minSize: 100,
          :maxSize: 200,
          :collapsible: true,
          :title: 'South',
          :margins: '0 0 0 0'
        },
        {
          :region: 'east',
          :title: 'East Side',
          :collapsible: true,
          :split: true,
          :width: 225, #// give east and west regions a width
          :minSize: 175,
          :maxSize: 400,
          :margins: '0 5 0 0',
          :layout: 'fit', #// specify layout manager for items
          :items:           # // this TabPanel is wrapped by another Panel so the title will be applied
          new Ext.TabPanel({
            :border: false, #// already wrapped so don't add another border
            :activeTab: 1, #// second tab initially active
            :tabPosition: 'bottom',
            :items: [{
              :html: '<p>A TabPanel component can be a region.</p>',
              :title: 'A Tab',
              :autoScroll: true
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
        title: 'West',
        split: true,
        width: 200,
        minSize: 175,
        maxSize: 400,
        collapsible: true,
        margins: '0 0 0 5',
        layout: {
        type: 'accordion',
        animate: true
        },
        items: [{
        contentEl: 'west',
        title: 'Navigation',
        border: false,
        iconCls: 'nav' // see the HEAD section for style used
        }, {
        title: 'Settings',
        html: '<p>Some settings in here.</p>',
        border: false,
        iconCls: 'settings'
        }]
        },
        // in this instance the TabPanel is not wrapped by another panel
        // since no title is needed, this Panel is added directly
        // as a Container
        new Ext.TabPanel({
        region: 'center', // a center region is ALWAYS required for border layout
        deferredRender: false,
        activeTab: 0,     // first tab initially active
        items: [{
        contentEl: 'center1',
        title: 'Close Me',
        closable: true,
        autoScroll: true
        }, {
        contentEl: 'center2',
        title: 'Center Panel',
        autoScroll: true
        }]
        })]
        });
)
  end

  def menu
    ["->", :about.action]
  end


  # Overrides Ext.Component#initComponent to set the click event on the nodes
  js_method :init_component, <<-JS
    function(){
      Netzke.classes.MainApp.superclass.initComponent.call(this);
      this.navigation.on('click', function(e){
        if (e.attributes.component) {
          this.appLoadComponent(e.attributes.component);
        }
      }, this);
    }
  JS

  # Overrides SimpleApp#process_history, to initially select the node in the navigation tree
  js_method :process_history, <<-JS
    function(token){
      if (token) {
        var node = this.navigation.root.findChild("component", token, true);
        if (node) node.select();
      }
      #{js_full_class_name}.superclass.processHistory.call(this, token);
    }
  JS

end

