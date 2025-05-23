
Partial Class index
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindBanners()
            'BindTourCategory()
            BindGallery()
            BindThematiques()
            BindTourPackages()
            BindReview()
        End If
    End Sub
    Sub BindGallery()
        Dim dtlGallary As SqlDataReader = BLL.ExecDataReader("Select * from tbl_Gallary Where DeActivated=0 and Deleted=0")
        rptGallary.DataSource = dtlGallary
        rptGallary.DataBind()
    End Sub
    Sub BindBanners()
        Dim dtlBanners As DataTable = BLL.ExecDataTable("Select * from tblBanners Where Deactivated=0 Order by SNo")
        rptBindBanners.DataSource = dtlBanners
        rptBindBanners.DataBind()
    End Sub
    Sub BindThematiques()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select * from tbl_ProductCategory Where Deactivated=0 and ProductCategoryId in (17,18,19,20)")
        'dtlData.DataSource = rptData
        'dtlData.DataBind()
    End Sub
    Sub BindTourPackages()
        Dim rptData As DataTable = BLL.ExecDataTable("Select Top 6 * from tblTourPackages Where ShowOnHomePage=1 and Deactivated=0")
        dtlTourPackages.DataSource = rptData
        dtlTourPackages.DataBind()
    End Sub
    Sub BindReview()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select Top 5 *,convert(varchar(20),OnDate,106) Dated from tblReviews Where Deactivated=0 order by OnDate desc")
        RptReview.DataSource = rptData
        RptReview.DataBind()
    End Sub
    Protected Sub btn_contact_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_contact.Click
        Dim pageurl As String = Request.UrlReferrer.ToString
        Dim templateVars As New Hashtable()
        templateVars.Add("Name", txtName.Text)
        templateVars.Add("Mobile", txtMobileNumber.Text)
        templateVars.Add("Destination", ddlDestination.SelectedItem.Text)
        templateVars.Add("Duration", ddlDuration.SelectedValue)
        templateVars.Add("PageName", pageurl)
        templateVars.Add("IPAddress", Request.ServerVariables("remote_addr"))
        Email.SendEmail("index_email.htm", templateVars, System.Configuration.ConfigurationManager.AppSettings("email"), System.Configuration.ConfigurationManager.AppSettings("infoemail"), "Contact Enquiry From Website Jay Tirupati Holiday", System.Configuration.ConfigurationManager.AppSettings("bccemail"))
        BLL.ExecNonQueryProc("Prc_WebsiteQuery", "@Name", txtName.Text, "@ContactNo", txtMobileNumber.Text, "@Destination", ddlDestination.SelectedValue, "@Duration", ddlDuration.SelectedValue, "@PageName", pageurl, "@IP", Request.ServerVariables("remote_addr"))
        txtName.Text = ""
        txtMobileNumber.Text = ""
        'Response.Redirect("thankyou")
        'Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "alert('Vos coordonnées ont été soumises avec succès. Nous vous contacterons dès que possible !!');window.location.href='/';", True)
        Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "alert('Your details has been submited successfully. We will contact you as soon!!');window.location.href='/';", True)
    End Sub

End Class
