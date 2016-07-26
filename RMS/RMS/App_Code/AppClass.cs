using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace App_Code
{
    public static class AppClass
    {
        public enum BootstrapAlertType
        {
            Plain,
            Success,
            Information,
            Warning,
            Danger,
            Primary
        }

        public static void BootstrapAlert(Label MsgLabel, string Message, BootstrapAlertType MessageType = BootstrapAlertType.Plain, bool Dismissable = false
            , bool isBlockMessage = true)
        {
            string style = null;
            string icon = null;
            switch (MessageType)
            {
                case BootstrapAlertType.Plain:
                    style = "default";
                    icon = "";
                    break;
                case BootstrapAlertType.Success:
                    style = "success";
                    icon = "check";
                    break;
                case BootstrapAlertType.Information:
                    style = "info";
                    icon = "info-circle";
                    break;
                case BootstrapAlertType.Warning:
                    style = "warning";
                    icon = "warning";
                    break;
                case BootstrapAlertType.Danger:
                    style = "danger";
                    icon = "remove";
                    break;
                case BootstrapAlertType.Primary:
                    style = "primary";
                    icon = "info";
                    break;
            }

            if ((!MsgLabel.Page.IsPostBack | MsgLabel.Page.IsPostBack) & Message == null)
            {
                MsgLabel.Visible = false;
            }
            else
            {
                MsgLabel.Visible = true;
                MsgLabel.CssClass = "text-center alert alert-" + style;
                if (Dismissable == true)
                    MsgLabel.CssClass += " alert-dismissible fade in font2 ";
                if (isBlockMessage == true)
                    MsgLabel.CssClass += " col-lg-12 ";
                MsgLabel.Text = "<i class='fa fa-" + icon + "'></i>&nbsp;&nbsp;" + Message;
                if (Dismissable == true)
                {
                    MsgLabel.Text += "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>";
                }
                MsgLabel.Focus();
                Message = "";
            }
        }

    }
}