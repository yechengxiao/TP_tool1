object menuF: TmenuF
  Left = 0
  Top = 0
  Caption = #20027#39029
  ClientHeight = 465
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panLeft: TPanel
    Left = 0
    Top = 0
    Width = 113
    Height = 465
    Align = alLeft
    TabOrder = 0
    object treeMenu: TTreeView
      Left = 1
      Top = 1
      Width = 111
      Height = 463
      Align = alClient
      Indent = 19
      ReadOnly = True
      TabOrder = 0
      OnClick = treeMenuClick
    end
  end
  object panRight: TPanel
    Left = 113
    Top = 0
    Width = 558
    Height = 465
    Align = alClient
    TabOrder = 1
  end
end
