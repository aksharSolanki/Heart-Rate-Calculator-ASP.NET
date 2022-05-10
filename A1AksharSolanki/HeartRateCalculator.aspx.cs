using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A1AksharSolanki
{
    public partial class HeartRateCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string fName = txtFName.Text;
            string lName = txtLName.Text;
            int yearOfBirth = Convert.ToInt32(txtYears.Text);
            char sex = Convert.ToChar(rbListSex.SelectedValue);

            HeartRates person = new HeartRates(fName, lName, yearOfBirth, sex);

            lblPersonName.Text = person.firstName + " " + person.lastName;
            lblPersonAge.Text = person.calculateAge(yearOfBirth).ToString();
            if (person.sex.Equals('m'))
                lblPersonSex.Text = "Male";
            else
                lblPersonSex.Text = "Female";

            lblPersonMaxHR.Text = person.calculateMaxHeartRate(sex, yearOfBirth).ToString() + " beats per minute";
            lblPersonHRRange.Text = person.calculateTargetHeartRate(sex, yearOfBirth);

            changeVisibility(true);
            clearContent();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            changeVisibility(false);

            lblPersonName.Text = "";
            lblPersonAge.Text = "";
            lblPersonSex.Text = "";
            lblPersonMaxHR.Text = "";
            lblPersonHRRange.Text = "";

            clearContent();
        }

        protected void clearContent()
        {
            txtFName.Text = "";
            txtLName.Text = "";
            txtYears.Text = "";
            rbListSex.ClearSelection();
        }

        protected void changeVisibility(Boolean visible)
        {
            lblShowName.Visible = visible;
            lblShowAge.Visible = visible;
            lblShowSex.Visible = visible;
            lblShowMaxHR.Visible = visible;
            lblShowRangeHR.Visible = visible;
        }
    }
}