<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <ext:ResourceManager ID="ResourceManager1" runat="server"/>
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
</body>
</html>
