
Partial Class explore
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public BannerImage As String = "banner-03.jpg"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()
            BindState()
        End If
    End Sub
    Sub BindState()
        ddlState.DataSource = BLL.BindState()

        ddlState.DataTextField = "State"
        ddlState.DataValueField = "State"
        ddlState.DataBind()
    End Sub
    Sub BindPlace(ByVal State As String)
        ddlPlace.DataSource = BLL.BindPlace(State)

        ddlPlace.DataTextField = "Place"
        ddlPlace.DataValueField = "Place"
        ddlPlace.DataBind()
    End Sub
    Protected Sub ddlState_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ddlState.SelectedIndexChanged
        ddlPlace.Items.Clear()
        BindPlace(ddlState.SelectedValue)
    End Sub
    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        BindData()
    End Sub
    Sub BindData()
        dtlBlogs.DataSource = BLL.ExecDataTableProc("Prc_GetBlogs", "@Type", 0, "@UserName", System.Configuration.ConfigurationManager.AppSettings("UserName"))
        dtlBlogs.DataBind()
    End Sub

End Class
