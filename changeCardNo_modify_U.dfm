object changeCardNo_modify_F: TchangeCardNo_modify_F
  Left = 0
  Top = 0
  Caption = #20462#25913
  ClientHeight = 216
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan1: TPanel
    Left = 0
    Top = 21
    Width = 361
    Height = 195
    Align = alClient
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 27
    object Label1: TLabel
      Left = 22
      Top = 51
      Width = 48
      Height = 13
      Caption = #21592#24037#22995#21517
    end
    object Label2: TLabel
      Left = 190
      Top = 51
      Width = 35
      Height = 13
      Caption = #21592#24037'ID'
    end
    object Label3: TLabel
      Left = 10
      Top = 128
      Width = 60
      Height = 13
      Caption = #24403#21069#39184#21345#21495
    end
    object Label4: TLabel
      Left = 165
      Top = 128
      Width = 60
      Height = 13
      Caption = #20462#25913#39184#21345#21495
    end
    object edt_userId: TEdit
      Left = 231
      Top = 43
      Width = 66
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 0
    end
    object edt_cardNoOld: TEdit
      Left = 87
      Top = 120
      Width = 66
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 1
    end
    object edt_cardNoNew: TEdit
      Left = 231
      Top = 120
      Width = 66
      Height = 21
      TabOrder = 2
    end
  end
  object tlBar: TToolBar
    Left = 0
    Top = 0
    Width = 361
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 31
    Color = clBtnFace
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    ExplicitWidth = 445
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
      OnClick = tBtn_exitClick
    end
  end
  object edt_name: TEdit
    Left = 87
    Top = 64
    Width = 66
    Height = 21
    Color = clScrollBar
    ReadOnly = True
    TabOrder = 2
  end
end
