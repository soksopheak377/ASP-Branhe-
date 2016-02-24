<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>


   <form runat="server">
        <%--load page prosduct --%>
                    <TopBar>
                        <ext:Toolbar ID="Toolbar1" runat="server">
                            <Items>
                                <ext:ButtonGroup ID="ButtonGroup1" runat="server" Title="All Country"  Columns="3">
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
                                                            <Click Handler="addTab(#{TabPanel1}, 'idClt', 'http://www.ext.net', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem5" runat="server" Text="Thailand" Icon="FlagTh">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idGgl', 'http://forums.ext.net', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem9" runat="server" Text="China" Icon="FlagCh">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem10" runat="server" Text="Laos" Icon="FlagLa">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem11" runat="server" Text="Japan" Icon="FlagJp">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem12" runat="server" Text="Korea" Icon="FlagKr">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem13" runat="server" Text="Veitnam" Icon="FlagVn">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem14" runat="server" Text="English" Icon="FlagEngland">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem15" runat="server" Text="UAS" Icon="FlagUs">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem16" runat="server" Text="India" Icon="FlagIn">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                            
                                                    <ext:MenuSeparator />
                            
                                                    <ext:MenuItem ID="MenuItem17" runat="server" Text="Malayzy" Icon="FlagMl">
                                                        <Listeners>
                                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                                        </Listeners>
                                                    </ext:MenuItem>
                                                </Items>
                                            </Menu>
                                        </ext:MenuPanel>
                                        <ext:TabPanel ID="TabPanel2" runat="server" Region="Center" />
                                        <ext:Window ID="Window1" 
                                            runat="server" 
                                            Title="Collapsed Region Image" 
                                            Icon="Application"
                                            Width="1550" 
                                            Height="600"
                                            Border="true"
                                            Closable="true"
                                            X="0"
                                            Y="0"
                                            Plain="false"
                                            Layout="BorderLayout">
                                            <Items>
                                                <ext:Panel 
                                                    ID="WestPanel"
                                                    runat="server"
                                                    Region="West"
                                                    Collapsible="true" 
                                                    MinWidth="175" 
                                                    Split="true"                             
                                                    Width="175" 
                                                    Title="Navigation" 
                                                    Collapsed="true"
                                                    BodyPadding="5"
                                                    Html="Collapse Panel to see image.">
                                                    <Listeners>
                                                        <AfterRender Handler="this.setTitle('');" />
                                                        <BeforeCollapse Handler="this.setTitle('');" />
                                                        <BeforeExpand Handler="this.setTitle(this.initialConfig.title);" />
                                                    </Listeners>                
                                                </ext:Panel>
                                                <ext:Panel ID="Panel2" runat="server" Region="Center" Title="Center region" />
                                                <ext:Panel 
                                                    ID="SouthPanel"
                                                    runat="server"
                                                    Region="South"
                                                    Collapsible="true" 
                                                    MinHeight="100" 
                                                    Split="true"                            
                                                    Height="100" 
                                                    Title="Footer"
                                                    Collapsed="true">
                                                    <Listeners>
                                                        <AfterRender Handler="this.setTitle('');" />
                                                        <BeforeCollapse Handler="this.setTitle('');" />
                                                        <BeforeExpand Handler="this.setTitle(this.initialConfig.title);" />
                                                    </Listeners>   
                                                 </ext:Panel>
                                            </Items>
                                        </ext:Window>
                                    </Items>
                                </ext:ButtonGroup>
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                <%-- end load page product--%>
   </form>
