﻿
Partial Class web
    Inherits System.Web.UI.MasterPage
    Protected Sub btnSubmit3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            Try
                If validation.isMobileNumber(txtMobile.Text) Then
                    Dim pageurl As String = Request.UrlReferrer.ToString
                    Dim templateVars As New Hashtable()
                    templateVars.Add("Name", txtName.Text)
                    templateVars.Add("Mobile", txtMobile.Text)
                    templateVars.Add("Email", txtEmail.Text)
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

