
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim user As ForumUserServiceNS.ForumUser = Nothing
        Dim svc As ForumUserServiceNS.ForumUserServiceClient = New ForumUserServiceNS.ForumUserServiceClient()
        user = svc.GetForumUser(DropDownList1.SelectedValue)

        Dim txtName As String = "User.txt"
        Dim fileValue As String = GenerateUserText(user)

        Dim fileValueByteValues(fileValue.Length) As Byte
        'convert string value to bytes
        fileValueByteValues = System.Text.Encoding.ASCII.GetBytes(fileValue)

        'write in the response the header & stream
        With Response
            .AddHeader("Content-disposition", "attachment;filename=" & txtName)
            .ContentType = "application/octet-stream"
            .BinaryWrite(fileValueByteValues)
            .End()
        End With

    End Sub

    Private Function GenerateUserText(user As ForumUserServiceNS.ForumUser) As String
        Return "UserID: " & user.UserID & vbCrLf & "UserName: " & user.UserName & vbCrLf &
            "Password: " & user.Password & vbCrLf & "Email: " & user.Email & vbCrLf &
            "First Name: " & user.FirstName & vbCrLf & "Last Name: " & user.LastName & vbCrLf &
            "Phone: " & user.Phone
    End Function

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim fs As System.IO.FileStream = Nothing

        fs = System.IO.File.Open("d:\ShutterDowner.zip", IO.FileMode.Open)

        Dim bytes(fs.Length) As Byte
        fs.Read(bytes, 0, fs.Length)


        With Response
            .AddHeader("Content-disposition", "attachement;filename=ShutterDowner.zip")
            .ContentType = "application/octet-stream"
            .BinaryWrite(bytes)
            .End()
        End With
    End Sub
End Class
