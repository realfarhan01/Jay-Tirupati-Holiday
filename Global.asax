<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12
        ' Code that runs on application startup
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        'If Not (Context.Request.IsSecureConnection) Then
        '    Response.Redirect(Context.Request.Url.ToString().Replace("http:", "https:"))
        'End If
        Dim originalPath As String = HttpContext.Current.Request.Path.ToLower()
        Dim sPath As String = System.Web.HttpContext.Current.Request.Url.AbsolutePath.ToLower()
        Dim PageName As String = sPath.Replace("/", "")
        Dim originalPathAcurate As String = HttpContext.Current.Request.Path
        Dim sPathAcurate As String = System.Web.HttpContext.Current.Request.Url.AbsolutePath
        Dim PageNameAcurate As String = sPathAcurate.Replace("/", "")
        Dim CallPage As String = ""
        If Not originalPath.Contains(".jpg") AndAlso Not originalPath.Contains(".png") AndAlso Not originalPath.Contains(".jpeg") Then
            If originalPath.Contains("/contact") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "contact.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/domestic-tour") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "domestic-tour.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/webadmin") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "webadmin.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/international-tour") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "international-tour.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/hotelservices") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "hotelservices.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "blogdetail.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("explore-") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "destination.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("blogs") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "blogs.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tourpackages") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "TourPackageCategories.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("explore") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "explore.aspx")
                Context.RewritePath(CallPage, False)
                'ElseIf originalPath.Contains("departures") And Not originalPath.Contains("-blog") And Not originalPath.Contains("tourdepartures") Then
                '    CallPage = originalPathAcurate.Replace(PageNameAcurate, "departures-new.aspx")
                '    Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tour-packages") And Not originalPath.Contains("-blog") Then
                'GetAccentedStr = HttpUtility.UrlEncode(PageName)
                'originalPathAcurate = HttpUtility.UrlEncode(originalPathAcurate)
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "tourpackages.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tourpackage-") And Not originalPath.Contains("-blog") Then
                'PageName = HttpUtility.UrlEncode(PageName)
                'originalPathAcurate = HttpUtility.UrlEncode(originalPathAcurate)
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "tourpackagedetail.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tourdeparture-") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "tourdeparturedetail.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("activity-") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "activities.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("exploredestinations") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "exploredestinations.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("flights-booking") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "flights-booking.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("cabservices") And Not originalPath.Contains("-blog") And Not originalPath.Contains("custom") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "cabservices.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("visa") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "visa.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("legal-information") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "legal-information.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("terms-conditions") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "terms-conditions.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("foreign-exchange") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "foreign-exchange.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("confidentiality-clause") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "confidentiality-clause.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("india-tour") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "india-tour.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("thematics") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "thematics.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("privacy-policy") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "activities.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("about-us") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "activities.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
                'Else
                '    CallPage = originalPathAcurate.Replace(PageNameAcurate, "index.aspx")
                '    Context.RewritePath(CallPage, False)
            End If
        End If
    End Sub

</script>