
Partial Class tourpackagedetail
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public PackagePricePP As String = ""
    Public GallaryImage As String = ""
    Public SliderImage As String = ""
    Public PackageId As String = "0"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                Dim PageName As String = ""
                If Not Request.QueryString("page") Is Nothing Then
                    PageName = Request.QueryString("page")
                    PageName = PageName.Replace("tourpackage-", "")
                    Dim dr As SqlDataReader = BLL.GetTourPackages("", PageName, 0)
                    While dr.Read
                        PackageId = dr("PackageId").ToString()
                        LitHead.Text = dr("MetaTags").ToString()
                        'Page.Title = dr("PackageName").ToString()
                        Page.MetaDescription = dr("ShortDesc").ToString()
                        Page.MetaKeywords = dr("PackageName").ToString()
                        LitTitle.Text = dr("PackageName").ToString()
                        LitPackageDays.Text = dr("PackageDays").ToString()
                        LitRoadMap.Text = dr("RoadMap").ToString()
                        LitPackagePricePP.Text = dr("PackagePricePP").ToString()
                        'LitWhatsappNumber.Text = dr("WhatsappNumber").ToString()
                        LitPackageItinerary.Text = dr("PackageItinerary").ToString()
                        LitPackageInclusion.Text = dr("PackageInclusion").ToString()
                        LitLocationEmbed.Text = dr("LocationEmbed").ToString()
                        LitPackageDetails.Text = dr("PackageDesc").ToString()
                        If dr("Image1").ToString() <> "" Then
                            SliderImage = "<div class='blog-grid ot-carousel' data-slide-show='1' data-lg-slide-show='1' data-md-slide-show='1' data-sm-slide-show='1'><div class='blog-img'><img src='images/tours/" & dr("Image1").ToString() & "'/></div></div>"
                        End If
                        If dr("Image2").ToString() <> "" Then
                            SliderImage += "<div class='blog-grid ot-carousel' data-slide-show='1' data-lg-slide-show='1' data-md-slide-show='1' data-sm-slide-show='1'><div class='blog-img'><img src='images/tours/" & dr("Image2").ToString() & "'/></div></div>"
                        End If
                        If dr("Image3").ToString() <> "" Then
                            SliderImage += "<div class='blog-grid ot-carousel' data-slide-show='1' data-lg-slide-show='1' data-md-slide-show='1' data-sm-slide-show='1'><div class='blog-img'><img src='images/tours/" & dr("Image3").ToString() & "'/></div></div>"
                        End If
                        If dr("Image4").ToString() <> "" Then
                            SliderImage += "<div class='blog-grid ot-carousel' data-slide-show='1' data-lg-slide-show='1' data-md-slide-show='1' data-sm-slide-show='1'><div class='blog-img'><img src='images/tours/" & dr("Image4").ToString() & "'/></div></div>"
                        End If
                        If dr("TourImg1").ToString() <> "" Then
                            GallaryImage = "<a Class='fancybox'  href='javascript:;'><span Class='img-holder'><img src='images/tours/" & dr("TourImg1").ToString() & "' class='mb-3' /></span></a>"
                        End If
                        If dr("TourImg2").ToString() <> "" Then
                            GallaryImage += "<a Class='fancybox'  href='javascript:;'><span Class='img-holder'><img src='images/tours/" & dr("TourImg2").ToString() & "' class='mb-3' /></span></a>"
                        End If
                        If dr("TourImg3").ToString() <> "" Then
                            GallaryImage += "<a Class='fancybox'  href='javascript:;'><span Class='img-holder'><img src='images/tours/" & dr("TourImg3").ToString() & "' class='mb-3' /></span></a>"
                        End If
                        If dr("TourImg4").ToString() <> "" Then
                            GallaryImage += "<a Class='fancybox'  href='javascript:;'><span Class='img-holder'><img src='images/tours/" & dr("TourImg4").ToString() & "' class='mb-3' /></span></a>"
                        End If
                        If dr("TourImg5").ToString() <> "" Then
                            GallaryImage += "<a Class='fancybox'  href='javascript:;'><span Class='img-holder'><img src='images/tours/" & dr("TourImg5").ToString() & "' class='mb-3' /></span></a>"
                        End If
                        If dr("TourImg6").ToString() <> "" Then
                            GallaryImage += "<a Class='fancybox'  href='javascript:;'><span Class='img-holder'><img src='images/tours/" & dr("TourImg6").ToString() & "' class='mb-3' /></span></a>"
                        End If


                        PackagePricePP = dr("PackagePricePP").ToString()
                        'ImgBlog.ImageUrl = "images/tours/actual/" & dr("ImageName").ToString()
                        ImgRoadMap.ImageUrl = "images/tours/" & dr("RoadMapImg").ToString()
                    End While
                End If

                'Dim website As String = System.Configuration.ConfigurationManager.AppSettings("url")
                'Dim pageurl As String = PageName
                'Dim username As String = System.Configuration.ConfigurationManager.AppSettings("UserName")
                'Dim IPAddress As String = Request.ServerVariables("REMOTE_ADDR")
                'If IPAddress <> "127.0.0.1" Then
                '    Dim IPLocation As String = BLL.IPLocation()
                '    Dim Location As String = geospilt(IPLocation, 4).ToString() & " - Latitude : " & geospilt(IPLocation, 8).ToString() & ", Longitude : " & geospilt(IPLocation, 9).ToString()
                '    BLL.SaveWebsiteHit(website, pageurl, username, IPAddress, Location)
                'End If
            End If
        Catch ex As Exception
            Response.Write(ex.ToString())
        End Try
    End Sub
    Public Function geospilt(ByVal IPLocation As String, ByVal Number As Integer) As String
        Dim location, ReturnData As String
        location = IPLocation
        Dim arr As Array
        arr = location.Split(";")
        ReturnData = arr(Number)
        Return ReturnData
    End Function
    Protected Sub btnSubmit3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            Try
                If validation.isMobileNumber(txtMobile.Text) Then
                    Dim pageurl As String = Request.UrlReferrer.ToString
                    Dim templateVars As New Hashtable()
                    templateVars.Add("Name", txtName.Text)
                    templateVars.Add("Mobile", txtMobile.Text)
                    templateVars.Add("Destination", ddlDestination.SelectedItem.Text)
                    templateVars.Add("Requirement", ddlRequirement.SelectedValue)
                    templateVars.Add("PageName", pageurl)
                    templateVars.Add("IPAddress", Request.ServerVariables("remote_addr"))
                    Email.SendEmail("ppc_email.htm", templateVars, System.Configuration.ConfigurationManager.AppSettings("email"), System.Configuration.ConfigurationManager.AppSettings("infoemail"), "Jay Tirupati Holiday")
                    txtName.Text = ""
                    txtMobile.Text = ""
                    Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "alert('Your details has been submited successfully. We will contact you as soon!!');window.location.href='/';", True)
                End If
            Catch ex As Exception
            End Try
        End If
    End Sub
End Class
