using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengePostageCalculatorHelperMethods
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkRadios();
        }

        private int getSquare()
        {
            int width = 0;
            int height = 0;

            if (widthTextBox.Text == "" || heightTextBox.Text == "")
                return 0;

            width = int.Parse(widthTextBox.Text);
            height = int.Parse(heightTextBox.Text);
            
            return width * height;
        }

        private int getLength()
        {
            int length = 0;

            if (lengthTextBox.Text == "")
                length = 1;
            else
            length = int.Parse(lengthTextBox.Text);

            return length;
        }
        
        private void displayResult(string shipping, double ratio)
        {
            if (widthTextBox.Text == "" || heightTextBox.Text == "")
                resultLabel.Text = "";

            else
                resultLabel.Text = String.Format("Your parcel will cost {0:C} to ship.",
                getSquare() * getLength() * ratio);
        }

        private void checkRadios()
        {
            if (groundRadio.Checked)
                displayResult("Ground", 0.15);
            else if (airRadio.Checked)
                displayResult("Air", 0.25);
            else if (nextRadio.Checked)
                displayResult("Next", 0.45);
            else return;
        }
        
    }
}