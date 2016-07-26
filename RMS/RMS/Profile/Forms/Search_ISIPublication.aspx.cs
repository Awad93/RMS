using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RMS.Profile.Forms
{
    public partial class Search_ISIPublication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["__LastName"] = "azzedin";
                Session["__FacultyID"] = 7040588;
            }
        }

        #region Button Events

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            DataTable table;
            string searchText = txtSearch.Value;

            if(rbList.SelectedValue == "title")
            {
                table = Publication_ISIController.searchISIPublicationsByAuthorsAndMissingKFUPMIDAndTitle(searchText, (Session["__LastName"]).ToString(), int.Parse((Session["__FacultyID"]).ToString()));
            }

            else if(rbList.SelectedValue == "wos")
            {
                table = Publication_ISIController.searchISIPublicationsByAuthorsAndMissingKFUPMIDAndWOS(int.Parse(searchText), (Session["__LastName"]).ToString(), int.Parse((Session["__FacultyID"]).ToString()));
            }

            else
            {
                table = Publication_ISIController.searchISIPublicationsByAuthorsAndMissingKFUPMIDAndYear(int.Parse(searchText), (Session["__LastName"]).ToString(), int.Parse((Session["__FacultyID"]).ToString()));
            }

            rptSearchResult.DataSource = table;
            rptSearchResult.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            foreach(RepeaterItem item in rptSearchResult.Items)
            {
                CheckBox cb = (CheckBox)item.FindControl("cbPublication");
                if (cb.Checked)
                {
                    string WOSNumber = ((HiddenField)item.FindControl("hfWosNumber")).Value;
                    string Authors = ((Literal)item.FindControl("ltrlAuthors")).Text;

                    int numberOfAuthors = Authors.Count(ch => ch == ';') + 1;

                    Publication_ISI_AuthorController.addISIPublicationAuthor(int.Parse((Session["__FacultyID"]).ToString()), WOSNumber, numberOfAuthors);
                }
            }
            
        }
        #endregion

        #region Repeater Event

        protected void rptSearchResult_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    ((HiddenField)(e.Item.FindControl("hfWosNumber"))).Value = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.WOS_Number)).ToString();
                    ((Literal)(e.Item.FindControl("ltrlTitle"))).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Paper_Title)).ToString();
                    ((Literal)(e.Item.FindControl("ltrlAuthors"))).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Authors)).ToString();
                    ((Literal)(e.Item.FindControl("ltrlSource"))).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Source)).ToString();
                    ((Literal)(e.Item.FindControl("ltrlYear"))).Text = (DataBinder.Eval(e.Item.DataItem, clsPublication_ISI.Publication_Year)).ToString();
                }
            }
            catch(Exception excp)
            {
                int i = -1;
            }
        }
        #endregion

        #region Radio Buttun List Event

        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbList.SelectedValue == "title")
            {
                txtSearch.Attributes["Type"] = "text";
                txtSearch.Attributes["placeholder"] = "Search by Title";
            }
            else if (rbList.SelectedValue == "wos")
            {
                txtSearch.Attributes["Type"] = "number";
                txtSearch.Attributes["placeholder"] = "Search by WOS Number";
            }
            else {
                txtSearch.Attributes["Type"] = "number";
                txtSearch.Attributes["placeholder"] = "Search by Year";
            }
            
        }
        #endregion
    }
}