using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private string pageTitle;
    public event EventHandler OKay;

    protected void btnUpdatePageTitle_Click(object sender, EventArgs e)
    {
        this.pageTitle = txtPageTitle.Text;
        if (OKay != null)
            OKay(this, EventArgs.Empty);
    }

    public string PageTitle
    {
        get { return pageTitle; }
    }


}