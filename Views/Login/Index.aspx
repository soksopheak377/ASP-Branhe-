<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login | Form</title>
    <script runat="server">
    protected void btnLogin_Click(object sender, DirectEventArgs e)
    {
        this.Window1.Hide();

        string template = "<br /><b>LOGIN SUCCESS</b><br /><br />Username: {0}<br />Password: {1}";
        string username = this.txtUsername.Text;
        string password = this.txtPassword.Text;

        username = "Admin";  password = "9090";
        this.lblMessage.Html = string.Format(template, username, password);
    }
</script>
</head>
<body>
    <form id="Form1" runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server" />        
        <ext:Label ID="lblMessage" runat="server" />
        
        <ext:Window 
            ID="Window1" 
            runat="server" 
            Closable="false"
            Resizable="false"
            Height="150" 
            Icon="Lock" 
            Title="Login"
            Draggable="false"
            Width="350"
            Modal="true"
            BodyPadding="5"
            Layout="FormLayout">
            <Items>
               <ext:FormPanel runat="server" Method="POST" Layout="FormLayout" Padding="5" Border="false" BodyStyle="background:transparent" ID="frm">
                <Items>
                     <ext:TextField ID="txtUsername" runat="server" FieldLabel="Username" AllowBlank="false" BlankText="Your username is required." Text="" />
                     <ext:TextField ID="txtPassword" runat="server" InputType="Password" FieldLabel="Password" AllowBlank="false" BlankText="Your password is required." Text="" />
                </Items>
               </ext:FormPanel>
            </Items>
                    <Buttons>
                        <ext:Button ID="btnLogin" runat="server" Text="Login" Icon="Accept">                                                   <%-- <Listeners>
                        <Click Handler="
                            if (!#{txtUsername}.validate() || !#{txtPassword}.validate()) {
                                Ext.Msg.alert('Error','The Username and Password fields are both required');
                                // return false to prevent the btnLogin_Click Ajax Click event from firing.
                                return false; 
                            }" />
                    </Listeners>--%>
                            <DirectEvents>
                              <%--  <Click OnEvent="btnLogin_Click">
                                    <EventMask ShowMask="true" Msg="Verifying..." MinDelay="500" />
                                </Click>--%>
                                <Click Url="/Dashboard/Login/"  Before="if(!#{frm}.getForm().isValid()){
                                            Ext.Msg.alert('Missing Data','Please input all information!');
                                            return false;                                                   
                                        }else{
                                            return true;
                                        }"
                                Failure="Ext.Msg.show({title : 'Message', icon: Ext.MessageBox.ERROR, msg: 'Error', buttons:Ext.Msg.OK});"
                                Success="Ext.Msg.show({title : 'Message', icon: Ext.MessageBox.INFO, msg: 'Success', buttons:Ext.Msg.OK});">
                                    <ExtraParams>
                                        <ext:Parameter Name="user_name" Value="#{txtUsername}.getValue()" Mode="Raw" />
                                        <ext:Parameter Name="password" Value="#{txtPassword}.getValue()" Mode="Raw" />
                                    </ExtraParams>
                                </Click>
                            </DirectEvents>
                        </ext:Button>
                    </Buttons>
            
        </ext:Window>
    </form>
</body>
</html>
