<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true"></asp:ToolkitScriptManager>
       <asp:UpdatePanel runat="server" UpdateMode="Conditional"><ContentTemplate>
        <div>          <asp:UpdatePanel runat="server" UpdateMode="Conditional"><ContentTemplate>
        <asp:Panel ID="Panel1" runat="server">
        <div style="background-color:Background;height:300px;width:400px;">
    
        </div>
           <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server"
                CollapseControlID="Button1"
                 ExpandControlID="Button1"
                Collapsed="true"
                TargetControlID="Panel1"
               ></asp:CollapsiblePanelExtender>
           </asp:Panel>
           </ContentTemplate>
           <Triggers>
               <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
           </Triggers>
       </asp:UpdatePanel>

        <asp:Button ID="Button1" runat="server" Text="Button" />
            </div>
 
</ContentTemplate></asp:UpdatePanel>
    </form>
</body>
</html>
