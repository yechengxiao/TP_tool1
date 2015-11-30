object checkInOut_modify_F: TcheckInOut_modify_F
  Left = 0
  Top = 0
  Caption = #32771#21220#20462#25913
  ClientHeight = 368
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan1: TPanel
    Left = 0
    Top = 21
    Width = 422
    Height = 347
    Align = alClient
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 426
    object lbl_badgenumber: TLabel
      Left = 219
      Top = 59
      Width = 48
      Height = 13
      Caption = #20154#21592#32534#21495
    end
    object lbl_check_time: TLabel
      Left = 19
      Top = 59
      Width = 48
      Height = 13
      Caption = #32771#21220#26085#26399
    end
    object lbl_work_num: TLabel
      Left = 243
      Top = 143
      Width = 24
      Height = 13
      Caption = #24037#26102
    end
    object lbl_type_: TLabel
      Left = 43
      Top = 143
      Width = 24
      Height = 13
      Caption = #31867#22411
    end
    object lbl_memo: TLabel
      Left = 43
      Top = 180
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object lbl_czy: TLabel
      Left = 31
      Top = 302
      Width = 36
      Height = 13
      Caption = #25805#20316#21592
    end
    object lbl_name: TLabel
      Left = 243
      Top = 21
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object lbl_change_time: TLabel
      Left = 219
      Top = 302
      Width = 48
      Height = 13
      Caption = #25805#20316#26085#26399
    end
    object lbl_bm: TLabel
      Left = 43
      Top = 21
      Width = 24
      Height = 13
      Caption = #37096#38376
    end
    object lbl_msg: TLabel
      Left = 243
      Top = 162
      Width = 84
      Height = 13
      Caption = #35831#20551#22635#36127#25968#65311#65311
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbEdt_badgenumber: TDBEdit
      Left = 273
      Top = 51
      Width = 121
      Height = 21
      Color = clScrollBar
      DataField = 'badgenumber'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 3
    end
    object dbEdt_ckTime: TDBEdit
      Left = 73
      Top = 51
      Width = 121
      Height = 21
      Color = clScrollBar
      DataField = 'check_time'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 2
    end
    object dbEdt_work_num: TDBEdit
      Left = 273
      Top = 135
      Width = 121
      Height = 21
      DataField = 'work_num'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 6
      OnKeyPress = dbEdt_work_numKeyPress
    end
    object dbCbb_type: TDBComboBox
      Left = 73
      Top = 135
      Width = 121
      Height = 21
      DataField = 'type2'
      DataSource = checkInOutF.dSource_ckInOut_m
      DropDownCount = 10
      TabOrder = 5
      OnKeyPress = dbCbb_typeKeyPress
    end
    object dbEdt_czy: TDBEdit
      Left = 73
      Top = 294
      Width = 121
      Height = 21
      Color = clScrollBar
      DataField = 'czy'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 8
    end
    object edt_name: TEdit
      Left = 273
      Top = 13
      Width = 121
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 1
    end
    object dbMemo: TDBMemo
      Left = 73
      Top = 180
      Width = 321
      Height = 89
      DataField = 'memo'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 7
    end
    object dbedt_change_time: TDBEdit
      Left = 273
      Top = 294
      Width = 121
      Height = 21
      Color = clScrollBar
      DataField = 'change_time'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 9
    end
    object edt_bm: TEdit
      Left = 73
      Top = 13
      Width = 121
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 0
    end
    object radioG: TRadioGroup
      Left = 73
      Top = 83
      Width = 321
      Height = 38
      Caption = #20998#31867
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #27491#24120
        #21152#29677
        #35831#20551)
      TabOrder = 4
      OnClick = radioGClick
    end
  end
  object tlBar: TToolBar
    Left = 0
    Top = 0
    Width = 422
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 31
    Color = clBtnFace
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    ExplicitWidth = 426
    object tBtn_save: TToolButton
      Left = 0
      Top = 0
      Caption = #20445#23384
      ImageIndex = 0
      OnClick = tBtn_saveClick
    end
    object tBtn_Separator1: TToolButton
      Left = 31
      Top = 0
      Width = 8
      Caption = 'tBtn_Separator1'
      ImageIndex = 1
      Style = tbsSeparator
      Visible = False
    end
    object tBtn_exit: TToolButton
      Left = 39
      Top = 0
      Caption = #36864#20986
      ImageIndex = 1
      Visible = False
    end
  end
end
