<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Rastaurant | Home</title>
    <link href="../../Style/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="../../Style/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="../../Style/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../../Style/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
    <script src="../../Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="../../Scripts/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <%--<ext:ResourceManager ID="ResourceManager1" runat="server"/>
    <ext:Viewport ID="Viewport1" runat="server" Layout="FitLayout">
        <Items>
            <ext:GridPanel ID="GridPanel1" runat="server" ForceFit="true" Border="false">
                <Store>
                    <ext:Store ID="store" runat="server" AutoLoad="false">
                        <Model>
                            <ext:Model ID="Model1" runat="server">
                                <Fields>
                                    <ext:ModelField Name="cat_id" />
                                    <ext:ModelField Name="cat_name" />
                                </Fields>
                            </ext:Model>
                        </Model>
                         <Parameters>
                            <ext:StoreParameter Name="search" Value="#{txt_search}.getValue()" Mode="Raw"/>
                        </Parameters>
                    </ext:Store>
                </Store>
                 <TopBar>
                    <ext:Toolbar ID="Toolbar1" runat="server">
                        <Items>
                            <ext:Button ID="btn_New" Text="Add New" runat="server" Icon="Add">
                                <Listeners>
                                    <Click Handler="#{frm}.getForm().reset();#{window}.show()" />
                                </Listeners>
                            </ext:Button>    
                            <ext:ToolbarFill ID="ToolbarFill1" runat="server" /> 
                                      
                        </Items>
                    </ext:Toolbar>
                </TopBar>
                <ColumnModel ID="ColumnModel1" runat="server">
                    <Columns>
                        <ext:RowNumbererColumn ID="col_no" runat="server" Text="Nº" MaxWidth="50"/>
                        <ext:Column ID="col_cat_name" runat="server" Text="Category Name" DataIndex="cat_name"/>
                        <ext:CommandColumn ID="CommandColumn3" runat="server" Border="false" MaxWidth="50">
                            <Commands>
                                <ext:GridCommand Icon="Pencil" ToolTip-Text="Edit" CommandName="edit" />
                            </Commands>
                            <Listeners>
                                <Command Handler="#{window}.show(); #{frm}.getForm().loadRecord(record)"/>                                                               
                            </Listeners>
                        </ext:CommandColumn> 
                    </Columns>
                </ColumnModel>
                <BottomBar>
                    <ext:PagingToolbar ID="PagingToolbar7" runat="server"></ext:PagingToolbar>
                </BottomBar>
            </ext:GridPanel>
        </Items>
    </ext:Viewport>
   <ext:Window runat="server" ID="window" Icon="Application" Title="Insurance Category" Width="400" Height="130" Collapsible="true" Modal="true" Hidden="true" Resizable="false" Closable="true">
        <Items>
            <ext:FormPanel runat="server" Method="POST" Layout="FormLayout" Padding="10" Border="false" BodyStyle="background:transparent" ID="frm">
                <Items>
                    <ext:TextField runat="server" ID="cat_id" Name="cat_id" Hidden="true"/>
                    <ext:TextField runat="server" ID="cat_name" Name="cat_name" AllowBlank="false" FieldLabel="Category Name" IndicatorText="*" IndicatorCls="indicator-color" LabelSeparator=""/>
                    <ext:TextField runat="server" ID="TextField1" Name="cat_name" AllowBlank="false" FieldLabel="Category Name" IndicatorText="*" IndicatorCls="indicator-color" LabelSeparator=""/>
                </Items>
            </ext:FormPanel>
        </Items>
        <Buttons> 
            <ext:Button runat="server" ID="btn_Save" Text="Save" Icon="Disk">
                    <DirectEvents>
                        <Click Url="/InsuranceCategory/save/" Type="Submit" Method="POST" CleanRequest="true" FormID="frm" IsUpload="true"
                                Before="if(!#{frm}.getForm().isValid()){
                                            Ext.Msg.alert('Missing Data','Please input all information!');
                                            return false;                                                   
                                        }else{
                                            return true;
                                        }"
                                Failure="Ext.Msg.show({title : 'Message', icon: Ext.MessageBox.ERROR, msg:  result.errorMessage, buttons:Ext.Msg.OK});"
                                Success="Ext.Msg.show({title : 'Message', icon: Ext.MessageBox.INFO, msg: result.result, buttons:Ext.Msg.OK});#{store}.load();#{window}.close();">
                           </Click>
                    </DirectEvents>
            </ext:Button>
            <ext:Button runat="server" ID="btn_cancel" Text="Cancel" Icon="Cancel">
                <Listeners>
                    <Click Handler="#{window}.close()" />
                </Listeners>
            </ext:Button>
        </Buttons>
    </ext:Window>
--%>


    <form id="Form1" runat="server">
        <ext:ResourceManager ID="ResourceManager2" runat="server" />
         <ext:TabPanel runat="server" Height="300" Width="1700">
            <Items>
                <ext:Panel runat="server" Title="Home" Icon="House">
                    <TopBar>
                        <ext:Toolbar runat="server">
                            <Items>
                                <ext:ButtonGroup runat="server" Title="Menu Selection" Columns="3">
                                    <Items>
                                        <ext:Button 
                                            runat="server" 
                                            Text="Table" 
                                            IconCls="add32" 
                                            Scale="Large" 
                                            IconAlign="Top"
                                            Icon="Table"
                                            Cls="x-btn-as-arrow"
                                            ArrowAlign="Bottom" 
                                            Height="100"
                                           
                                            Width="100"
                                            RowSpan="3"
                                            />
                                        <ext:SplitButton 
                                            runat="server" 
                                            Text="Menu" 
                                            IconCls="add32" 
                                            IconAlign="Top"
                                            ArrowAlign="Bottom" 
                                            Scale="Large"
                                            Height="100"
                                            Width="100"
                                            RowSpan="3">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem1" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem2" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem3" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem4" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem5" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem6" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem7" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                    <Items>
                                                        <ext:MenuItem ID="MenuItem8" runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                    </Items>
                                </ext:ButtonGroup>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                </ext:Panel>
                
                <ext:Panel runat="server" Title="Products" class="icon-customer">
                    <TopBar>
                        <ext:Toolbar runat="server">
                            <Items>
                                <ext:ButtonGroup runat="server" Title="All Products" Columns="3">
                                    <Items>
                                        <ext:Button 
                                            runat="server" 
                                            Text="Paste" 
                                            IconCls="add32" 
                                            Scale="Large" 
                                            IconAlign="Top"
                                            Cls="x-btn-as-arrow"
                                            RowSpan="3"
                                            />
                                        <ext:SplitButton 
                                            runat="server" 
                                            Text="Menu Button" 
                                            IconCls="add32" 
                                            IconAlign="Top"
                                            ArrowAlign="Bottom" 
                                            Scale="Large"
                                            RowSpan="3">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                        <ext:SplitButton runat="server" Text="Cut" IconCls="add16">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Cut Menu Item" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                    </Items>
                                </ext:ButtonGroup>
                                
                                <ext:ButtonGroup runat="server" Title="Customer" Columns="3">
                                    <Items>
                                        <ext:Button 
                                            runat="server" 
                                            Text="Paste" 
                                            IconCls="add32" 
                                            Scale="Large" 
                                            IconAlign="Top"
                                            Cls="x-btn-as-arrow" 
                                            RowSpan="3"
                                            />
                                        <ext:SplitButton 
                                            runat="server" 
                                            Text="Menu Button" 
                                            IconCls="add32" 
                                            IconAlign="Top"
                                            ArrowAlign="Bottom" 
                                            Scale="Large"
                                            RowSpan="3">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                        <ext:SplitButton runat="server" Text="Cut" IconCls="add16">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Cut Menu Item" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                    </Items>
                                </ext:ButtonGroup>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                </ext:Panel>
                
                <ext:Panel runat="server" Title="Customers" Icon="User" Width="50">
                    <TopBar>
                        <ext:Toolbar runat="server">
                            <Items>
                                <ext:ButtonGroup runat="server" Title="Clipboard" Columns="3">
                                    <Items>
                                        <ext:Button 
                                            runat="server" 
                                            Text="Paste" 
                                            IconCls="add32" 
                                            Scale="Large" 
                                            IconAlign="Top"
                                            Cls="x-btn-as-arrow" 
                                            RowSpan="3"
                                            />
                                        <ext:SplitButton 
                                            runat="server" 
                                            Text="Menu Button" 
                                            IconCls="add32" 
                                            IconAlign="Top"
                                            ArrowAlign="Bottom" 
                                            Scale="Large"
                                            RowSpan="3">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                        <ext:SplitButton runat="server" Text="Cut" IconCls="add16">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Cut Menu Item" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                    </Items>
                                </ext:ButtonGroup>
                                
                                <ext:ButtonGroup runat="server" Title="Other Actions" Columns="3">
                                    <Items>
                                        <ext:Button 
                                            runat="server" 
                                            Text="Paste" 
                                            IconCls="add32" 
                                            Scale="Large" 
                                            IconAlign="Top"
                                            RowSpan="3"
                                            Cls="x-btn-as-arrow" 
                                            />
                                        <ext:SplitButton 
                                            runat="server" 
                                            Text="Menu Button" 
                                            IconCls="add32" 
                                            IconAlign="Top"
                                            RowSpan="3"
                                            ArrowAlign="Bottom" 
                                            Scale="Large">
                                            <Menu>
                                                <ext:Menu runat="server">
                                                    <Items>
                                                        <ext:MenuItem runat="server" Text="Menu Button 1" />
                                                    </Items>
                                                </ext:Menu>
                                            </Menu>
                                        </ext:SplitButton>
                                    </Items>
                                </ext:ButtonGroup>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                </ext:Panel>
            </Items>
        </ext:TabPanel>
    </form>
</body>
</html>
