<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Rastaurant | Home</title>
    <link href="../../Style/css/style.css" rel="stylesheet" type="text/css" />
    <style>
        .add32 {
            background-image : url(images/add32.gif) !important;
        }
        
        .add16 {
            background-image : url(images/add16.gif) !important;
        }
        
        .add24 {
            background-image : url(images/add24.gif) !important;
        }
       .icon-customer
        {
            background-image="../../Images/Amazon-Kindle-icon.png"
        }
    </style>
    <script runat="server">
    protected void UpdateTimeStamp(object sender, DirectEventArgs e)
    {
        X.Msg.Notify("The Server Time is: ", DateTime.Now.ToLongTimeString()).Show();
    }
</script>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        this.storedatgride.DataSource = this.Jobs;
        this.storedatgride.DataBind();

        this.storedata.DataSource = this.Jobs1;
        this.storedata.DataBind();

        this.storeloaddatabase.DataSource = this.Data;
        this.storeloaddatabase.DataBind();
    }
    
    private List<Job> Jobs
    {
        get
        {
            List<Job> jobs = new List<Job>();

            for (int i = 1; i <= 1000; i++)
            {
                jobs.Add(new Job(
                            i, 
                            "Task" + i.ToString(), 
                            DateTime.Today.AddDays(i), 
                            DateTime.Today.AddDays(i + i), 
                            (i%3 == 0)));
            }

            return jobs;
        }
    }

    public class Job
    {
        public Job(int id, string name, DateTime start, DateTime end, bool completed)
        {
            this.ID = id;
            this.Name = name;
            this.Start = start;
            this.End = end;
            this.Completed = completed;
        }

        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
        public bool Completed { get; set; }
    }


    private object[] Data
    {
        get
        {
            return new object[]
            {
                new object[] { "3m Co", 71.72, 0.02, 0.03, "9/1 12:00am" },
                new object[] { "Alcoa Inc", 29.01, 0.42, 1.47, "9/1 12:00am" },
                new object[] { "Altria Group Inc", 83.81, 0.28, 0.34, "9/1 12:00am" },
                new object[] { "American Express Company", 52.55, 0.01, 0.02, "9/1 12:00am" },
                new object[] { "American International Group, Inc.", 64.13, 0.31, 0.49, "9/1 12:00am" },
                new object[] { "AT&T Inc.", 31.61, -0.48, -1.54, "9/1 12:00am" },
                new object[] { "Boeing Co.", 75.43, 0.53, 0.71, "9/1 12:00am" },
                new object[] { "Caterpillar Inc.", 67.27, 0.92, 1.39, "9/1 12:00am" },
                new object[] { "Citigroup, Inc.", 49.37, 0.02, 0.04, "9/1 12:00am" },
                new object[] { "E.I. du Pont de Nemours and Company", 40.48, 0.51, 1.28, "9/1 12:00am" },
                new object[] { "Exxon Mobil Corp", 68.1, -0.43, -0.64, "9/1 12:00am" },
                new object[] { "General Electric Company", 34.14, -0.08, -0.23, "9/1 12:00am" },
                new object[] { "General Motors Corporation", 30.27, 1.09, 3.74, "9/1 12:00am" },
                new object[] { "Hewlett-Packard Co.", 36.53, -0.03, -0.08, "9/1 12:00am" },
                new object[] { "Honeywell Intl Inc", 38.77, 0.05, 0.13, "9/1 12:00am" },
                new object[] { "Intel Corporation", 19.88, 0.31, 1.58, "9/1 12:00am" },
                new object[] { "International Business Machines", 81.41, 0.44, 0.54, "9/1 12:00am" },
                new object[] { "Johnson & Johnson", 64.72, 0.06, 0.09, "9/1 12:00am" },
                new object[] { "JP Morgan & Chase & Co", 45.73, 0.07, 0.15, "9/1 12:00am" },
                new object[] { "McDonald\"s Corporation", 36.76, 0.86, 2.40, "9/1 12:00am" },
                new object[] { "Merck & Co., Inc.", 40.96, 0.41, 1.01, "9/1 12:00am" },
                new object[] { "Microsoft Corporation", 25.84, 0.14, 0.54, "9/1 12:00am" },
                new object[] { "Pfizer Inc", 27.96, 0.4, 1.45, "9/1 12:00am" },
                new object[] { "The Coca-Cola Company", 45.07, 0.26, 0.58, "9/1 12:00am" },
                new object[] { "The Home Depot, Inc.", 34.64, 0.35, 1.02, "9/1 12:00am" },
                new object[] { "The Procter & Gamble Company", 61.91, 0.01, 0.02, "9/1 12:00am" },
                new object[] { "United Technologies Corporation", 63.26, 0.55, 0.88, "9/1 12:00am" },
                new object[] { "Verizon Communications", 35.57, 0.39, 1.11, "9/1 12:00am" },
                new object[] { "Wal-Mart Stores, Inc.", 45.45, 0.73, 1.63, "9/1 12:00am" }
            };
        }
    }
</script>


<script runat="server">    
    private List<Job1> Jobs1
    {
        get
        {
            List<Job1> jobs1 = new List<Job1>();

            for (int i = 1; i <= 1000; i++)
            {
                jobs1.Add(new Job1(
                            i, 
                            "Xzondev" + i.ToString(), 
                            DateTime.Today.AddDays(i), 
                            DateTime.Today.AddDays(i + i), 
                            (i%3 == 0)));
            }

            return jobs1;
        }
    }

    public class Job1
    {
        public Job1(int id, string name, DateTime start, DateTime end, bool completed)
        {
            this.ID = id;
            this.Name = name;
            this.Start = start;
            this.End = end;
            this.Completed = completed;
        }

        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
        public bool Completed { get; set; }
    }
</script>
<script runat="server">
    public static string TEST_HTML_1 = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas gravida nibh, quis porttitor felis  
                    venenatis id. Nam sodales mollis quam eget venenatis. Aliquam metus lorem, tincidunt ut egestas imperdiet, convallis  
                    lacinia tortor. Mauris accumsan, nisl et sodales tristique, massa dui placerat erat, at venenatis tortor libero nec  
                    tortor. Pellentesque quis elit ac dolor commodo tincidunt. Curabitur lorem eros, tincidunt quis viverra id, lacinia  
                    sed nisl. Quisque viverra ante eu nisl consectetur hendrerit.";

    public static string TEST_HTML_2 = @"<b>This tab is scrollable.</b><br /><br /> 
                    Aenean sit amet quam ipsum. Nam aliquet ullamcorper lorem, vel commodo neque auctor quis. Vivamus ac purus in  
                    tortor tempor viverra eget a magna. Nunc accumsan dolor porta mauris consequat nec mollis felis mattis. Nunc ligula nisl,  
                    tempor ut pellentesque et, viverra eget tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sodales  
                    rhoncus massa, sed lobortis risus euismod at. Suspendisse dictum, lectus vitae aliquam egestas, quam diam consequat augue,  
                    non porta odio ante a dui. Vivamus lacus mi, ultrices sed feugiat elementum, ultrices et lectus. Donec aliquet hendrerit magna,  
                    in venenatis ante faucibus ut. Duis non neque magna. Quisque iaculis luctus nibh, id pellentesque lorem egestas non. Phasellus  
                    id risus eget felis auctor scelerisque. Fusce porttitor tortor eget magna pretium viverra. Sed tempor vulputate felis aliquam  
                    scelerisque. Quisque eget libero non lectus tempus varius eu a tortor. 
                    <br /><br /> 
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas gravida nibh, quis porttitor felis  
                    venenatis id. Nam sodales mollis quam eget venenatis. Aliquam metus lorem, tincidunt ut egestas imperdiet, convallis  
                    lacinia tortor. Mauris accumsan, nisl et sodales tristique, massa dui placerat erat, at venenatis tortor libero nec  
                    tortor. Pellentesque quis elit ac dolor commodo tincidunt. Curabitur lorem eros, tincidunt quis viverra id, lacinia  
                    sed nisl. Quisque viverra ante eu nisl consectetur hendrerit.";
</script>




<script>
            var addTab = function (tabPanel, id, url, menuItem) {
                var tab = tabPanel.getComponent(id);

                if (!tab) {
                    tab = tabPanel.add({ 
                        id       : id, 
                        title    : url, 
                        closable : true,
                        menuItem : menuItem,
                        loader   : {
                            url      : url,
                            renderer : "frame",
                            loadMask : {
                                showMask : true,
                                msg      : "Loading " + url + "..."
                            }
                        }
                    });

                    tab.on("activate", function (tab) {
                        #{MenuPanel1}.setSelection(tab.menuItem);
                    });
                }
            
                tabPanel.setActiveTab(tab);
            }
        </script>
    </ext:XScript>



</head>
<body>

     <form id="Form1" runat="server" >
        <ext:ResourceManager ID="ResourceManager2" runat="server" />
         <ext:TabPanel runat="server" Height="900" Width="1580" Top="80">
            <Items>
                <ext:Panel runat="server" Title="Home" Icon="House">
                    <TopBar>
                        <ext:Toolbar runat="server">
                            <Items>
                                <ext:ButtonGroup runat="server" Title="Menu Selection" Columns="3">
                                    <Items>
                                        <ext:Button  runat="server" Text="Table" IconCls="add32" IconAlign="Top" Icon="Table"  Cls="x-btn-as-arrow" ArrowAlign="Bottom"  Height="70" Width="100">
                                             <%--<Listeners>
                                               <Click Handler="#{grid_load_db}.getForm().reset();#{winLoad_data}.show()" />--%>
                                            <DirectEvents>
                                                <Click OnEvent="UpdateTimeStamp">
                                                    <Confirmation ConfirmRequest="true" Title="Title" Message="Sample Confirmation Message..." />
                                                </Click>
                                            </DirectEvents>
                                            <%--</Listeners>--%>
                                        </ext:Button>
                                        <ext:SplitButton 
                                            runat="server" 
                                            Text="Menu" 
                                            IconCls="add32" 
                                            Icon="Book"
                                            IconAlign="Top"
                                            Height="70"
                                            Width="100">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem ID="Foods" runat="server" Text="Foods" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="Beers" runat="server" Text="Beers" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="Sweets" runat="server" Text="Sweets" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="Coffee" runat="server" Text="Coffee" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="Rices" runat="server" Text="Rices" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                    </Items>
                                </ext:ButtonGroup>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>

                    <Items>
                        <ext:Button ID="btn_add" runat="server" Icon="Add" Text="Add New">
                            <%--<DirectEvents>
                                <Click OnEvent="UpdateTimeStamp">
                                    <Confirmation ConfirmRequest="true"  Title="Title" Message="Sample Confirmation Message..."/>
                                </Click>
                            </DirectEvents>--%>

                            <Listeners>
                                <Click Handler="#{frmaddnew}.getForm().reset();#{win_frm_addnew}.show()"/>
                            </Listeners>
                        </ext:Button>

                        <ext:ComboBox ID="txtsearch" 
                                    runat="server" 
                                    DisplayField="Common" 
                                    ValueField="Common"
                                    TypeAhead="false"
                                    PageSize="10"
                                    Region="North"
                                    HideBaseTrigger="true"
                                    MinChars="0"
                                    TriggerAction="Query">
                                    <ListConfig  LoadingText="Searching...">
                                        <ItemTpl ID="ItemTpl1" runat="server">
                                            <Html>
                                                <div class="search-item">
							                        <h3><span>${Price}</span>{Common}</h3>
							                        {Botanical}
						                        </div>
                                            </Html>
                                        </ItemTpl>
                                    </ListConfig>
                          </ext:ComboBox>
                    </Items>
                    <Items>
                        <ext:GridPanel runat="server" ID="loaddata_gridview" Header="false" Border="false" ColumnLines="true">
                            <Store>
                                <ext:Store ID="storedatgride" runsat="server" PageSize="15">
                                    <Model>
                                        <ext:Model ID="loaddb_gride" runat="server" IDProperty="ID">
                                            <Fields>
                                                <ext:ModelField Name="ID" />
                                                <ext:ModelField Name="Name" />
                                                <ext:ModelField Name="Start" Type="Date" />
                                                <ext:ModelField Name="End" Type="Date" />
                                                <ext:ModelField Name="Completed" Type="Boolean" />
                                            </Fields>
                                        </ext:Model>
                                    </Model>
                                </ext:Store>    
                            </Store>
                          <ColumnModel runat="server">
                            <Columns>
                                <ext:Column ID="Column1" runat="server" 
                                    Text="ID" 
                                    Width="80" 
                                    Sortable="true" 
                                    DataIndex="ID" 
                                    />
                                <ext:Column ID="Column2" runat="server" 
                                    Text="Job Name" 
                                    Sortable="true" 
                                    DataIndex="Name"
                                    Flex="1" 
                                    />
                                <ext:DateColumn ID="DateColumn1" runat="server" 
                                    Text="Start" 
                                    Width="120" 
                                    Sortable="true" 
                                    DataIndex="Start"
                                    Format="yyyy-MM-dd"
                                    />
                                <ext:DateColumn ID="DateColumn2" runat="server" 
                                    Text="End" 
                                    Width="120" 
                                    Sortable="true" 
                                    DataIndex="End"
                                    Format="yyyy-MM-dd"
                                    />
                                <ext:CommandColumn  ID="Column3" runat="server" Border="false" Width="45"  Text="Edit">
                                   
                                    <Commands>
                                        <ext:GridCommand Icon="Pencil" ToolTip-Text="Edit" CommandName="Edit" />
                                    </Commands>
                                    <Listeners>
                                        <Command Handler="#{frmaddnew}.getForm().reset();#{win_frm_addnew}.show()" />
                                    </Listeners>

                                </ext:CommandColumn>
                                <ext:CommandColumn  ID="CommandColumn2" runat="server" Border="false" Width="50" Text="Delete">
                                    <Commands>
                                        <ext:GridCommand Icon="ApplicationDelete" ToolTip-Text="Delete" CommandName="Delete" />
                                    </Commands>
                                    <Listeners>
                                        <Command Handler="#{frmdelete}.getForm().reset();#{win_delete}.show()" />
                                    </Listeners>
                                </ext:CommandColumn>
                            </Columns>
                          </ColumnModel>
                          <View>
                                <ext:GridView ID="GridView1" runat="server" LoadMask="false" />
                          </View>
                          <BottomBar>
                                <ext:PagingToolbar ID="PagingToolbar1" 
                                    runat="server" 
                                    DisplayInfo="true"
                                    DisplayMsg="Displaying Jobs {0} - {1} of {2}"
                                    />
                            </BottomBar>
                        </ext:GridPanel>
                    </Items>
                </ext:Panel>
                <%--load page prosduct --%>
                <ext:Panel runat="server" Title="Country" class="icon-customer" Icon="Book">
                    <TopBar>
                        <ext:Toolbar runat="server">
                            <Items>
                                <ext:ButtonGroup runat="server" Title="All Country"  Columns="3">
                                    <Items>
                                        <%--<ext:TabPanel ID="TabPanel2" 
                                            runat="server" 
                                            Width="1560"
                                            Height="600"
                                            Margins="0 0 20 0">
                                            <Defaults>
                                                <ext:Parameter Name="bodyPadding" Value="10" Mode="Raw" />
                                                <ext:Parameter Name="autoScroll" Value="true" Mode="Raw" />
                                            </Defaults>
                                            <Items>
                                                <ext:Panel ID="Panel1" 
                                                    runat="server" 
                                                    Title="Active Tab" 
                                                    Html="<%# TEST_HTML_1  %>" 
                                                    AutoDataBind="true" />

                                                <ext:Panel ID="Panel2"
                                                    runat="server" 
                                                    Title="Inactive Tab" 
                                                    Html="<%# TEST_HTML_2  %>" 
                                                    AutoDataBind="true" />

                                                <ext:Panel ID="Panel3" runat="server" Title="Disabled Tab" Disabled="false" />
                                            </Items>
                                        </ext:TabPanel>--%>

                                        <ext:MenuPanel 
                                            ID="MenuPanel1" 
                                            runat="server" 
                                            Width="150" 
                                            Region="West">
                                            <Menu ID="Menu2" runat="server">
                                                <Items>                                                
                                                    <ext:MenuItem ID="MenuItem4" runat="server" Text="Cambodia" Icon="FlagKh">
                                                        <Listeners>
                                                            <Click Handler="#{flagkh}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem5" runat="server" Text="Thailand" Icon="FlagTh">
                                                        <Listeners>
                                                            <Click Handler="#{flagthia}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem9" runat="server" Text="China" Icon="FlagCh">
                                                        <Listeners>
                                                            <Click Handler="#{flagchina}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem10" runat="server" Text="Laos" Icon="FlagLa">
                                                        <Listeners>
                                                            <Click Handler="#{flaglaos}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem11" runat="server" Text="Japan" Icon="FlagJp">
                                                        <Listeners>
                                                            <Click Handler="#{flagjapan}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem12" runat="server" Text="Korea" Icon="FlagKr">
                                                        <Listeners>
                                                            <Click Handler="#{flagKorea}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem13" runat="server" Text="Veitnam" Icon="FlagVn">
                                                        <Listeners>
                                                            <Click Handler="#{flagvietnam}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem14" runat="server" Text="English" Icon="FlagEngland">
                                                        <Listeners>
                                                            <Click Handler="#{flagenglish}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem15" runat="server" Text="UAS" Icon="FlagUs">
                                                        <Listeners>
                                                            <Click Handler="#{flagusa}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem16" runat="server" Text="India" Icon="FlagIn">
                                                        <%--<Listeners>
                                                            <Click Handler="#{load_flag}.show();" />
                                                        </Listeners>--%>
                                                        <Listeners>
                                                            <Click Handler="#{flagindia}.show();" />
                                                        </Listeners>
                                                        <%--<DirectEvents>
                                                            <Click OnEvent="UpdateTimeStamp">
                                                                <Confirmation ConfirmRequest="true" Title="Title" Message="Sample Confirmation Message..." />
                                                            </Click>
                                                        </DirectEvents>--%>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem17" runat="server" Text="Malayzy" Icon="FlagMl">
                                                        <Listeners>
                                                            <Click Handler="#{flagmalazy}.show();" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                                                </Items>
                                            </Menu>
                                        </ext:MenuPanel>
                                        <ext:TabPanel ID="TabPanel2" runat="server" Region="Center" />
                                        
                                        <ext:TabPanel ID="TabPanel3" runat="server" Width="1390">
                                            <Items>
                                                <ext:GridPanel runat="server" ID="GridPanel1" Icon="Database" Title="Load Database" Width="800" Height="400" ColumnLines="true">
                                                    <Store>
                                                        <ext:Store ID="storeloaddatabase" runat="server">
                                                            <Model>
                                                                <ext:Model ID="Model2" runat="server">
                                                                    <Fields>
                                                                        <ext:ModelField Name="company" />
                                                                        <ext:ModelField Name="price" Type="Float" />
                                                                        <ext:ModelField Name="change" Type="Float" />
                                                                        <ext:ModelField Name="pctChange" Type="Float" />
                                                                        <ext:ModelField Name="lastChange" Type="Date" DateFormat="M/d hh:mmtt" />
                                                                    </Fields>
                                                                </ext:Model>
                                                            </Model>
                                                        </ext:Store>
                                                    </Store>
                                               </ext:GridPanel>
                                            </Items>
                                            <Items>
                                                <ext:Panel ID="flagkh" 
                                                    runat="server" 
                                                    Title="Short Text" 
                                                    Hidden="true"
                                                    BodyPadding="6">
                                                    <Content>
                                                       Khmer Tabpenel
                                                    </Content>
                                                </ext:Panel>

                                                <%--load flag--%>
                                                <ext:Panel ID="flagthia" 
                                                    runat="server" 
                                                    Title="Short Text"
                                                    Header="false" 
                                                    Hidden="true"
                                                    BodyPadding="6">
                                                    <Content>
                                                       Thailand Tabpenel
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagchina"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed metus nibh, sodales
                                                        a, porta at, vulputate eget, dui. Pellentesque ut nisl. Maecenas tortor turpis,
                                                        interdum non, sodales non, iaculis ac, lacus. Vestibulum auctor, tortor quis iaculis
                                                        malesuada, libero lectus bibendum purus, sit amet tincidunt quam turpis vel lacus.
                                                        In pellentesque nisl non sem. Suspendisse nunc sem, pretium eget, cursus a, fringilla
                                                        vel, urna.<br />
                                                        <br />
                                                        Aliquam commodo ullamcorper erat. Nullam vel justo in neque porttitor laoreet. Aenean
                                                        lacus dui, consequat eu, adipiscing eget, nonummy non, nisi. Morbi nunc est, dignissim
                                                        non, ornare sed, luctus eu, massa. Vivamus eget quam. Vivamus tincidunt diam nec
                                                        urna. Curabitur velit.
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flaglaos"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        Laos country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagjapan"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        Japan country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagKorea"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        Korea country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagvietnam"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        Vietnam country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagenglish"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        English country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagusa"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        USA country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagindia"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        India country
                                                    </Content>
                                                </ext:Panel>
                                                <ext:Panel ID="flagmalazy"
                                                    runat="server" 
                                                    Hidden="true"
                                                    Title="Long Text" 
                                                    BodyPadding="6">
                                                    <Content>
                                                        India country
                                                    </Content>
                                                </ext:Panel>
                                            </Items>
                                        </ext:TabPanel>
                                    </Items>
                                </ext:ButtonGroup>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                </ext:Panel>
                <%-- end load page product--%>


                <%-- load form add new--%>
                <ext:Window ID="win_frm_addnew" runat="server" Icon="Add" Title="Create New User" Width="500" Height="250" Hidden="true" Resizable="false" Modal="true" Collapsible="true" Closable="true">
                    <Items>
                        <ext:FormPanel runat="server" ID="frmaddnew" BodyStyle="background:transparent" Method="POST" Layout="FormLayout" padding="10" border="false">
                            <Items>
                                <ext:TextField runat="server" ID="vendor_id" Name="vender_id" Hidden="true"/>
                                <ext:TextField runat="server" ID="vendor_name" Name="vender_name" AllowBlank="false" FieldLabel="Vendor Name" IndicatorText="*" IndicatorCls="indicator-color" LabelSeparator=""/>
                                <ext:TextField runat="server" ID="phone" Name="phone" AllowBlank="false" FieldLabel="Phone" IndicatorText="*" IndicatorCls="indicator-color" LabelSeparator=""/>
                                <ext:TextField runat="server" ID="email" Name="email" AllowBlank="false" FieldLabel="Email" IndicatorText="*" IndicatorCls="indicator-color" LabelSeparator=""/>
                                <ext:TextArea runat="server" ID="address" Name="address" FieldLabel="Address" LabelSeparator=""/>
                            </Items>
                        </ext:FormPanel>
                    </Items>     
                    <Buttons> 
                        <ext:Button runat="server" ID="btn_Save" Text="Save" Icon="Disk">
                                <DirectEvents>
                                    <Click Url="/InsurVendorProfile/save/" Type="Submit" Method="POST" CleanRequest="true" FormID="frm" IsUpload="true"
                                            Before="if(!#{frm}.getForm().isValid()){
                                                        Ext.Msg.alert('Missing Data','Please input all information!');
                                                        return false;                                                   
                                                    }else{
                                                        return true;
                                                    }"
                                            Failure="Ext.Msg.show({title : 'Message', icon: Ext.MessageBox.ERROR, msg:  result.errorMessage, buttons:Ext.Msg.OK});"
                                            Success="Ext.Msg.show({title : 'Message', icon: Ext.MessageBox.INFO, msg: result.result, buttons:Ext.Msg.OK});#{store}.load();#{win_vendor_profile}.close();">
                                       </Click>
                                </DirectEvents>
                        </ext:Button>
                        <ext:Button runat="server" ID="btn_cancel" Text="Cancel" Icon="Cancel">
                            <Listeners>
                                <Click Handler="#{win_frm_addnew}.close()" />
                            </Listeners>
                        </ext:Button>
                    </Buttons>          
                </ext:Window>     
                

                <ext:Window ID="load_flag" runat="server" Icon="FlagId" Title="India Country" Resizable="false" Width="300" Height="150" Collapsed="true" Closable="true" Hidden="true" Modal="true">
                    <Items>
                        <ext:FormPanel runat="server" Icon="FlagId" ID="frmflagid" BodyStyle="background:transparent" Method="POST" Layout="FormLayout" Padding="10" border="false">
                            
                        </ext:FormPanel>
                    </Items>
                </ext:Window>

                
                <ext:Window ID="win_delete" runat="server" Icon="Delete" Title="Create New User" Width="500" Height="100" Hidden="true" Resizable="false" Modal="true" Collapsible="true" Closable="true">
                    <Items>
                        <ext:FormPanel runat="server" ID="frmdelete" BodyStyle="background:transparent" Method="POST" Layout="FormLayout" padding="10" border="false">
                            
                        </ext:FormPanel>
                    </Items>     
                    <Buttons> 
                    <ext:Button runat="server" ID="btn_confirm" Text="Confirm" Icon="Accept">
                        <Listeners>
                            <Click Handler="#{win_delete}.close()" />
                        </Listeners>
                    </ext:Button>
                        <ext:Button runat="server" ID="Button2" Text="Cancel" Icon="Cancel">
                            <Listeners>
                                <Click Handler="#{win_delete}.close()" />
                            </Listeners>
                        </ext:Button>
                    </Buttons>          
                </ext:Window> 
                
                           
                <ext:Panel runat="server" Title="Customers" Icon="User" Width="50">
                    <TopBar>
                        <ext:Toolbar runat="server">
                            <Items>
                                <ext:MenuPanel 
                                    ID="mnpanel1" 
                                    runat="server" 
                                    Width="200" 
                                    top="0"
                                    Region="West">
                                    <Menu ID="Menu1" runat="server">
                                        <Items>
                                            <ext:MenuItem ID="MenuItem1" runat="server" Text="Order Item" Icon="Bell">
                                                <Listeners>
                                                    <Click Handler="addTab(#{TabPanel1}, 'idClt', 'http://www.ext.net', this);" />
                                                </Listeners>
                                            </ext:MenuItem>
                            
                                            <ext:MenuSeparator />
                            
                                            <ext:MenuItem ID="MenuItem2" runat="server" Text="View Detail" Icon="Report">
                                                <Listeners>
                                                    <Click Handler="addTab(#{TabPanel1}, 'idGgl', 'http://forums.ext.net', this);" />
                                                </Listeners>
                                            </ext:MenuItem>
                            
                                            <ext:MenuSeparator />
                            
                                            <ext:MenuItem ID="MenuItem3" runat="server" Text="Check Out" Icon="Lock">
                                                <Listeners>
                                                    <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                </Listeners>
                                            </ext:MenuItem>
                                        </Items>
                                    </Menu>
                                </ext:MenuPanel>
                                <ext:TabPanel ID="TabPanel1" runat="server" Region="Center" />
                            </Items>


                            <Items>
                                <ext:GridPanel runat="server" ID="loaddata_customer" Header="false" Border="false" ColumnLines="true"  Height="600" Width="1350">
                                    <Store>
                                        <ext:Store ID="storedata" runsat="server" PageSize="20">
                                            <Model>
                                                <ext:Model ID="load_customerdata" runat="server" IDProperty="ID">
                                                    <Fields>
                                                        <ext:ModelField Name="ID" />
                                                        <ext:ModelField Name="Name" />
                                                        <ext:ModelField Name="Start" Type="Date" />
                                                        <ext:ModelField Name="End" Type="Date" />
                                                        <ext:ModelField Name="Completed" Type="Boolean" />
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
                                        </ext:Store>    
                                    </Store>
                                  <ColumnModel ID="ColumnModel1" runat="server">
                                    <Columns>
                                        <ext:Column ID="Column4" runat="server" 
                                            Text="ID" 
                                            Width="80" 
                                            Sortable="true" 
                                            DataIndex="ID" 
                                            />
                                        <ext:Column ID="Column5" runat="server" 
                                            Text="Job Name" 
                                            Sortable="true" 
                                            DataIndex="Name"
                                            Flex="1" 
                                            />
                                        <ext:DateColumn ID="DateColumn3" runat="server" 
                                            Text="Start" 
                                            Width="120" 
                                            Sortable="true" 
                                            DataIndex="Start"
                                            Format="yyyy-MM-dd"
                                            />
                                        <ext:DateColumn ID="DateColumn4" runat="server" 
                                            Text="End" 
                                            Width="120" 
                                            Sortable="true" 
                                            DataIndex="End"
                                            Format="yyyy-MM-dd"
                                            />
                                        <ext:CommandColumn  ID="CommandColumn1" runat="server" Border="false" Width="100">
                                            <Commands>
                                                <ext:GridCommand Icon="Pencil" ToolTip-Text="Edit" CommandName="Edit" />
                                            </Commands>
                                            <Listeners>
                                                <Command Handler="#{frmaddnew}.getForm().reset();#{win_frm_addnew}.show()" />
                                            </Listeners>
                                    
                                            <Commands>
                                                <ext:GridCommand Icon="ApplicationDelete" ToolTip-Text="Delete" />
                                            </Commands>
                                            <Listeners>
                                                <Command Handler="#{frmaddnew}.getForm().reset();#{win_frm_addnew}.show()" />
                                            </Listeners>
                                        </ext:CommandColumn>
                                    </Columns>
                                  </ColumnModel>
                                  <View>
                                        <ext:GridView ID="GridView2" runat="server" LoadMask="false" />
                                  </View>
                                  <BottomBar>
                                        <ext:PagingToolbar ID="PagingToolbar2" 
                                            runat="server" 
                                            DisplayInfo="true"
                                            DisplayMsg="Displaying Jobs1 {0} - {1} of {2}"
                                            />
                                    </BottomBar>
                                </ext:GridPanel>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                </ext:Panel>
            </Items>
        </ext:TabPanel>
    </form>
</body>
</html>
