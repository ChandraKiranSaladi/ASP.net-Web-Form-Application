using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class _Default : Page
{
    HtmlGenericControl BodyTag;
    protected void Page_Load(object sender, EventArgs e)
    {
        BodyTag = (HtmlGenericControl)Master.FindControl("BodyTag");
        UserInfoBoxControl userInfoBoxControl = (UserInfoBoxControl)LoadControl("~/UserInfoBoxControl.ascx");
        userInfoBoxControl.UserName = "John Doe";
        userInfoBoxControl.UserAge = 78;
        userInfoBoxControl.UserCountry = "Spain";
        phUserInfoBox.Controls.Add(userInfoBoxControl);
        HelloWorldLabel.Text = "Hello, " + TextInput.Text;

        if (Request.Cookies["BackgroundColor"] != null)
        {
            ColorSelector.SelectedValue = Request.Cookies["BackgroundColor"].Value;
            BodyTag.Style["background-color"] = ColorSelector.SelectedValue;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GreetButton_Click(object sender, EventArgs e)
    {

    }

    protected void TextInput_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GreetList_SelectedIndexChanged(object sender, EventArgs e)
    {
        HelloWorldLabel.Text = "Hello, " + GreetList.SelectedValue;
    }

    protected void MyEventUserControl_OKay(object sender, EventArgs e)
    {
        this.Title = MyEventUserControl.PageTitle;
    }

    protected void btnSubmitForm_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            btnSubmitForm.Text = "My form is valid!";
        }
    }

    protected void ColorSelector_IndexChanged(object sender, EventArgs e)
    {
        BodyTag.Style["background-color"] = ColorSelector.SelectedValue;
        HttpCookie cookie = new HttpCookie("BackgroundColor");
        cookie.Value = ColorSelector.SelectedValue;
        cookie.Expires = DateTime.Now.AddHours(1);
        Response.SetCookie(cookie);
    }
}