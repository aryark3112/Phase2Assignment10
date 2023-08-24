using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PrdCtg.Items.Add("Face Cream");
                PrdCtg.Items.Add("Face Wash");
                PrdCtg.Items.Add("Powder");
                PrdCtg.Items.Add("Face Mask");
            }
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
    }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblInfo.Visible = true;
            LblInfo.Text = "Registration Success!!!";
            LblInfo.Text += "<br/>Product Name: " + PrdName.Text;
            LblInfo.Text += "<br/>Category: " + PrdCtg.Text;
            LblInfo.Text += "<br/>Price: " + PrdPrice.Text;
            LblInfo.Text += "<br/>Description: " + PrdDes.Text;
            LblInfo.Text += "<br/>Release Date: " + PrdRdate.SelectedDate;
        }
    }
}