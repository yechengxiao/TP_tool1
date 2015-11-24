object checkInOut_modify_F: TcheckInOut_modify_F
  Left = 0
  Top = 0
  Caption = #32771#21220#20462#25913
  ClientHeight = 286
  ClientWidth = 415
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
    Width = 415
    Height = 265
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 109
    ExplicitWidth = 424
    ExplicitHeight = 296
    object lbl_badgenumber: TLabel
      Left = 19
      Top = 69
      Width = 48
      Height = 13
      Caption = #20154#21592#32534#21495
    end
    object lbl_check_time: TLabel
      Left = 211
      Top = 69
      Width = 48
      Height = 13
      Caption = #32771#21220#26085#26399
    end
    object lbl_work_num: TLabel
      Left = 43
      Top = 109
      Width = 24
      Height = 13
      Caption = #24037#26102
    end
    object lbl_type_: TLabel
      Left = 235
      Top = 109
      Width = 24
      Height = 13
      Caption = #31867#22411
    end
    object lbl_memo: TLabel
      Left = 43
      Top = 156
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object lbl_czy: TLabel
      Left = 223
      Top = 27
      Width = 36
      Height = 13
      Caption = #25805#20316#21592
    end
    object lbl_name: TLabel
      Left = 43
      Top = 27
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object dbEdt_badgenumber: TDBEdit
      Left = 73
      Top = 66
      Width = 121
      Height = 21
      Color = clScrollBar
      DataField = 'badgenumber'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 2
    end
    object dbEdt_ckTime: TDBEdit
      Left = 265
      Top = 66
      Width = 121
      Height = 22
      Color = clScrollBar
      DataField = 'check_time'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 3
    end
    object dbEdt_work_num: TDBEdit
      Left = 73
      Top = 106
      Width = 121
      Height = 21
      DataField = 'work_num'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 4
      OnKeyPress = dbEdt_work_numKeyPress
    end
    object dbCbb_type: TDBComboBox
      Left = 265
      Top = 106
      Width = 121
      Height = 21
      DataField = 'type_'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 5
    end
    object dbEdt_czy: TDBEdit
      Left = 265
      Top = 24
      Width = 121
      Height = 22
      Color = clScrollBar
      DataField = 'czy'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 1
    end
    object edt_name: TEdit
      Left = 73
      Top = 24
      Width = 121
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 0
    end
    object dbMemo: TDBMemo
      Left = 73
      Top = 156
      Width = 313
      Height = 89
      DataField = 'memo'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 6
    end
  end
  object tlBar: TToolBar
    Left = 0
    Top = 0
    Width = 415
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 31
    Color = clBtnFace
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    ExplicitTop = 340
    ExplicitWidth = 421
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
    end
    object tBtn_exit: TToolButton
      Left = 39
      Top = 0
      Caption = #36864#20986
      ImageIndex = 1
      OnClick = tBtn_exitClick
    end
  end
end
