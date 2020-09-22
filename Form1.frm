VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3495
   ClientLeft      =   2865
   ClientTop       =   1680
   ClientWidth     =   2895
   LinkTopic       =   "Form1"
   ScaleHeight     =   3495
   ScaleWidth      =   2895
   Begin VB.CommandButton Command1 
      Caption         =   "Install AntiDebugger Thread"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim ThreadID As Long

'For usefull test... compile this example and open the exe in some debugger (like ADA, OLLY, etc). Debug this code before install the "Antidebugger"... then debug again after install the "Antidebugger"
ThreadID = InstallAntiDebugger
If ThreadID <> 0 Then
    MsgBox "Anti Debugger installed in the thread " & ThreadID, vbInformation
Else
    MsgBox "Error!", vbCritical
End If
End Sub


Private Sub Form_Load()

End Sub


