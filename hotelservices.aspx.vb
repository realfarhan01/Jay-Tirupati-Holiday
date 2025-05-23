
Partial Class hotelservices
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindState()
            BindHotelType()
            BindData()
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
    Sub BindHotelType()
        ddlHotelType.DataSource = BLL.BindHotelType()

        ddlHotelType.DataTextField = "HotelType"
        ddlHotelType.DataValueField = "HotelType"
        ddlHotelType.DataBind()
    End Sub
    Sub BindData()
        Dim rptData As SqlDataReader = BLL.GetHotels(ddlState.SelectedValue, ddlPlace.SelectedValue, ddlHotelType.SelectedValue, 0)
        dtlData.DataSource = rptData
        dtlData.DataBind()
    End Sub

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        BindData()
    End Sub

End Class
