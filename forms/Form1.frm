#VisualFreeBasic_Form#  Version=5.3.6
Locked=0

[Form]
Name=Form1
ClassStyle=CS_VREDRAW,CS_HREDRAW,CS_DBLCLKS
ClassName=
WinStyle=WS_SYSMENU,WS_MINIMIZEBOX,WS_MAXIMIZEBOX,WS_CLIPSIBLINGS,WS_CLIPCHILDREN,WS_EX_WINDOWEDGE,WS_EX_CONTROLPARENT,WS_EX_LEFT,WS_EX_LTRREADING,WS_EX_RIGHTSCROLLBAR,WS_VISIBLE,WS_POPUP
Style=3 - 常规窗口
Icon=
Caption=Form1
StartPosition=0 - 手动
WindowState=0 - 正常
Enabled=True
Repeat=False
Left=0
Top=0
Width=842
Height=339
TopMost=False
Child=False
MdiChild=False
TitleBar=False
SizeBox=False
SysMenu=True
MaximizeBox=True
MinimizeBox=True
Help=False
Hscroll=False
Vscroll=False
MinWidth=0
MinHeight=0
MaxWidth=0
MaxHeight=0
NoActivate=False
MousePass=False
TransPer=0
TransColor=SYS,25
Shadow=0 - 无阴影
BackColor=&HFF000000
MousePointer=0 - 默认
Tag=
Tab=True
ToolTip=
ToolTipBalloon=False
AcceptFiles=False

[Image]
Name=Chars
Index=-1
Picture=
Stretch=0 - 自动适应
Percent=0
GrayScale=False
Enabled=True
Visible=True
Left=10
Top=10
Width=149
Height=204
Layout=0 - 不锚定
MousePointer=6 - 不可用禁止圈
Tag=
ToolTip=
ToolTipBalloon=False

[Label]
Name=Name_
Index=-1
Style=0 - 无边框
Caption=Label1
Enabled=True
Visible=True
ForeColor=SYS,8
BackColor=SYS,25
Font=微软雅黑,9,0
TextAlign=0 - 左对齐
Prefix=True
Ellipsis=False
Left=17
Top=233
Width=157
Height=36
Layout=0 - 不锚定
MousePointer=0 - 默认
Tag=
ToolTip=
ToolTipBalloon=False

[RichEdit]
Name=Text_Talk
Index=-1
Style=0 - 无边框
TextScrollBars=0 - 无滚动条
Text=llllllllllllllll
Enabled=True
Visible=True
MaxLength=0
Font=黑体,16
TextAlign=0 - 左对齐
Locked=False
HideSelection=True
Multiline=True
SaveSel=False
NoScroll=True
AutoHScroll=False
AutoVScroll=False
ContextMenu=True
LeftMargin=0
RightMargin=0
Left=163
Top=34
Width=656
Height=187
Layout=5 - 宽度和高度
MousePointer=0 - 默认
Tag=
Tab=False
ToolTip=
ToolTipBalloon=False
AcceptFiles=False

[Timer]
Name=Timer1
Index=-1
Interval=1
Enabled=True
Left=226
Top=4
Tag=


[AllCode]
'这是标准的工程模版，你也可做自己的模版。
'写好工程，复制全部文件到VFB软件文件夹里【template】里即可，子文件夹名为 VFB新建工程里显示的名称
'快去打造属于你自己的工程模版吧。
dIM shared IsPlaying as Boolean
Sub Form1_WM_Create(hWndForm As hWnd,UserData As Integer)  '完成创建窗口及所有的控件后，此时窗口还未显示。注：自定义消息里 WM_Create 此时还未创建控件和初始赋值。

  dim as integer  nScreenWidth, nScreenHeight
 nScreenWidth = GetSystemMetrics(SM_CXSCREEN)
 nScreenHeight = GetSystemMetrics(SM_CYSCREEN)
 MsgBox str(nScreenWidth) + "x" + str(nScreenHeight)
 movewindow hWndForm, 0, nScreenHeight / 2 + nScreenHeight / 10, nScreenWidth, nScreenHeight, true
 Me.FlashWindow
 
' Text_Talk.TextToolTipBalloonRtf = Text_Talk.Tag

End Sub

sub DoIt(pic as string, char as string, music as string = vbnullstring, hWndForm As hWnd)
   if IsPlaying and music <> vbnullstring then
      Shell("TASKKILL /F /IM ZERMP3PL.exe")
      IsPlaying = False
      sleep 700
      Shell("ZERMP3PL.exe " + music + " -1")
      IsPlaying = true
   elseif IsPlaying = false and music <> vbnullstring then
      Shell("ZERMP3PL.exe " + music + " -1")
      
      IsPlaying = true
   end if
   Chars.Picture = pic
   dim  as integer i
   
   
   
   for i = 0 to strlen(char)
      Text_Talk.Text = left(char, i)
      ZSleep 5000 * 100
      RefreshWindow hWndForm
   next i
   
End Sub

Sub Form1_Shown(hWndForm As hWnd,UserData As Integer)  '窗口完全显示后。UserData 来自显示窗口最后1个参数。
DoIt "C:\Program Files (x86)\360\360Safe\Config\advtools\AavanceTools_360PowerSaver.png","66666666666666666666666666666666666666666666","C:\\NewStuff.mp3",hWndForm

End Sub
sub ZSleep(ti as DWORD)
   DIM ti_ as DWORD
   
h : 
   ti_ += 1
   ASM nop
      ASM nop
         ASM nop
            ASM nop
               ASM nop
                  ASM nop
                     ASM nop
                        ASM nop
                           ASM nop
                              ASM nop
                                 ASM nop
                                    ASM nop
                                       ASM nop
                                          ASM nop
                                             ASM nop
                                                ASM nop
                                                   if ti_ > ti then
                                                      exit sub
                                                   End If
                                                   goto h
                                                   
                                                End Sub

Sub Form1_Text_Talk_EN_Update(hWndForm As hWnd, hWndControl As hWnd)  '文本被修改
   dim  as integer t
End Sub



