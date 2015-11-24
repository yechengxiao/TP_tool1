object checkInOut_modify_F: TcheckInOut_modify_F
  Left = 0
  Top = 0
  Caption = 'checkInOut_modify_F'
  ClientHeight = 362
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan1: TPanel
    Left = 0
    Top = 21
    Width = 421
    Height = 341
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    ExplicitHeight = 340
    object lbl_badgenumber: TLabel
      Left = 11
      Top = 85
      Width = 48
      Height = 13
      Caption = #20154#21592#32534#21495
    end
    object lbl_check_time: TLabel
      Left = 211
      Top = 43
      Width = 48
      Height = 13
      Caption = #32771#21220#26085#26399
    end
    object lbl_work_num: TLabel
      Left = 211
      Top = 85
      Width = 24
      Height = 13
      Caption = #24037#26102
    end
    object lbl_type_: TLabel
      Left = 211
      Top = 126
      Width = 48
      Height = 13
      Caption = #24037#26102#31867#22411
    end
    object lbl_memo: TLabel
      Left = 23
      Top = 166
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object lbl_czy: TLabel
      Left = 11
      Top = 126
      Width = 36
      Height = 13
      Caption = #25805#20316#21592
    end
    object lbl_name: TLabel
      Left = 11
      Top = 43
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object dbEdt1: TDBEdit
      Left = 65
      Top = 82
      Width = 121
      Height = 22
      Color = clScrollBar
      DataField = 'badgenumber'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 0
    end
    object dbEdt2: TDBEdit
      Left = 265
      Top = 40
      Width = 121
      Height = 22
      Color = clScrollBar
      DataField = 'check_time'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 1
    end
    object dbEdt3: TDBEdit
      Left = 265
      Top = 82
      Width = 121
      Height = 22
      DataField = 'work_num'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 2
    end
    object dbCbb_type: TDBComboBox
      Left = 265
      Top = 123
      Width = 121
      Height = 21
      DataField = 'type_'
      DataSource = checkInOutF.dSource_ckInOut_m
      TabOrder = 3
    end
    object dbEdt_czy: TDBEdit
      Left = 65
      Top = 123
      Width = 121
      Height = 22
      Color = clScrollBar
      DataField = 'czy'
      DataSource = checkInOutF.dSource_ckInOut_m
      ReadOnly = True
      TabOrder = 4
    end
    object edt_name: TEdit
      Left = 65
      Top = 40
      Width = 121
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 5
    end
  end
  object tlBar: TToolBar
    Left = 0
    Top = 0
    Width = 421
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 31
    Color = clBtnFace
    ParentColor = False
    ShowCaptions = True
    TabOrder = 1
    ExplicitTop = 340
    object tBtn_save: TToolButton
      Left = 0
      Top = 0
      Caption = #20445#23384
      ImageIndex = 0
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
    end
  end
  object dbMemo: TDBMemo
    Left = 65
    Top = 185
    Width = 321
    Height = 89
    DataField = 'memo'
    DataSource = checkInOutF.dSource_ckInOut_m
    TabOrder = 2
  end
end
