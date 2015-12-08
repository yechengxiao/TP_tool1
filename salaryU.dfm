object salaryF: TsalaryF
  Left = 0
  Top = 0
  Caption = #21592#24037#24037#36164#32479#35745
  ClientHeight = 380
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_up: TPanel
    Left = 0
    Top = 0
    Width = 867
    Height = 81
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 22
      Width = 24
      Height = 13
      Caption = #26376#20221
    end
    object lbl3: TLabel
      Left = 16
      Top = 54
      Width = 24
      Height = 13
      Caption = #37096#38376
    end
    object paintBox: TPaintBox
      Left = 647
      Top = 1
      Width = 219
      Height = 79
      Align = alRight
      ExplicitLeft = 704
    end
    object lbl_name: TLabel
      Left = 208
      Top = 54
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object lbl: TLabel
      Left = 136
      Top = 22
      Width = 12
      Height = 13
      Caption = #33267
    end
    object dtp1: TDateTimePicker
      Left = 44
      Top = 14
      Width = 80
      Height = 21
      Date = 42324.452836851850000000
      Time = 42324.452836851850000000
      MaxDate = 43100.999988425920000000
      MinDate = 41640.000000000000000000
      TabOrder = 3
    end
    object btn_tj: TButton
      Left = 582
      Top = 10
      Width = 75
      Height = 25
      Caption = #32479#35745
      TabOrder = 2
    end
    object btn_export: TButton
      Left = 493
      Top = 10
      Width = 75
      Height = 25
      Caption = #23548#20986
      TabOrder = 1
    end
    object cbb_bm: TComboBox
      Left = 44
      Top = 46
      Width = 140
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      TabOrder = 5
      Items.Strings = (
        '')
    end
    object cbb_name: TComboBox
      Left = 236
      Top = 46
      Width = 80
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      TabOrder = 6
      Items.Strings = (
        #22612#29260#25991#21270#20013#24515)
    end
    object dtp2: TDateTimePicker
      Left = 162
      Top = 14
      Width = 80
      Height = 21
      Date = 42324.452836851850000000
      Time = 42324.452836851850000000
      MaxDate = 43100.999988425920000000
      TabOrder = 4
    end
    object btn_template: TButton
      Left = 405
      Top = 10
      Width = 75
      Height = 25
      Caption = #27169#26495
      TabOrder = 0
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 81
    Width = 867
    Height = 299
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 865
      Height = 297
      ActivePage = tab_mx
      Align = alClient
      TabOrder = 0
      object tab_mx: TTabSheet
        Caption = #21592#24037#24037#36164#26126#32454
        ImageIndex = 2
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 857
          Height = 269
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dSource_ckInOut
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_cont
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object tab1: TTabSheet
        Caption = #32479#35745#65306#25353#26376#20221
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 221
      end
      object tab2: TTabSheet
        Caption = #32479#35745#65306#25353#37096#38376
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 221
      end
    end
  end
  object dSet_ckInOut: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    CommandTimeout = 15
    Parameters = <>
    Left = 80
    Top = 186
    object dSet_ckInOutyf: TStringField
      DisplayLabel = #26376#20221
      FieldName = 'yf'
      Size = 15
    end
    object dSet_ckInOutdeptName: TStringField
      DisplayLabel = #37096#38376
      FieldName = 'deptName'
      Size = 60
    end
    object dSet_ckInOutdeptID: TStringField
      DisplayLabel = #37096#38376'ID'
      FieldName = 'deptID'
      Size = 10
    end
    object dSet_ckInOutname: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'name'
      Size = 50
    end
    object dSet_ckInOutbadgenumber: TStringField
      DisplayLabel = #21592#24037'ID'
      FieldName = 'badgenumber'
      Size = 15
    end
    object dSet_ckInOutD01: TStringField
      FieldName = 'D01'
      Size = 10
    end
    object dSet_ckInOutD02: TStringField
      FieldName = 'D02'
      Size = 10
    end
    object dSet_ckInOutD03: TStringField
      FieldName = 'D03'
      Size = 10
    end
    object dSet_ckInOutD04: TStringField
      FieldName = 'D04'
      Size = 10
    end
    object dSet_ckInOutD05: TStringField
      FieldName = 'D05'
      Size = 10
    end
    object dSet_ckInOutD06: TStringField
      FieldName = 'D06'
      Size = 10
    end
    object dSet_ckInOutD07: TStringField
      FieldName = 'D07'
      Size = 10
    end
    object dSet_ckInOutD08: TStringField
      FieldName = 'D08'
      Size = 10
    end
    object dSet_ckInOutD09: TStringField
      FieldName = 'D09'
      Size = 10
    end
    object dSet_ckInOutD10: TStringField
      FieldName = 'D10'
      Size = 10
    end
    object dSet_ckInOutD11: TStringField
      FieldName = 'D11'
      Size = 10
    end
    object dSet_ckInOutD12: TStringField
      FieldName = 'D12'
      Size = 10
    end
    object dSet_ckInOutD13: TStringField
      FieldName = 'D13'
      Size = 10
    end
    object dSet_ckInOutD14: TStringField
      FieldName = 'D14'
      Size = 10
    end
    object dSet_ckInOutD15: TStringField
      FieldName = 'D15'
      Size = 10
    end
    object dSet_ckInOutD16: TStringField
      FieldName = 'D16'
      Size = 10
    end
    object dSet_ckInOutD17: TStringField
      FieldName = 'D17'
      Size = 10
    end
    object dSet_ckInOutD18: TStringField
      FieldName = 'D18'
      Size = 10
    end
    object dSet_ckInOutD19: TStringField
      FieldName = 'D19'
      Size = 10
    end
    object dSet_ckInOutD20: TStringField
      FieldName = 'D20'
      Size = 10
    end
    object dSet_ckInOutD21: TStringField
      FieldName = 'D21'
      Size = 10
    end
    object dSet_ckInOutD22: TStringField
      FieldName = 'D22'
      Size = 10
    end
    object dSet_ckInOutD23: TStringField
      FieldName = 'D23'
      Size = 10
    end
    object dSet_ckInOutD24: TStringField
      FieldName = 'D24'
      Size = 10
    end
    object dSet_ckInOutD25: TStringField
      FieldName = 'D25'
      Size = 10
    end
    object dSet_ckInOutD26: TStringField
      FieldName = 'D26'
      Size = 10
    end
    object dSet_ckInOutD27: TStringField
      FieldName = 'D27'
      Size = 10
    end
    object dSet_ckInOutD28: TStringField
      FieldName = 'D28'
      Size = 10
    end
    object dSet_ckInOutD29: TStringField
      FieldName = 'D29'
      Size = 10
    end
    object dSet_ckInOutD30: TStringField
      FieldName = 'D30'
      Size = 10
    end
    object dSet_ckInOutD31: TStringField
      FieldName = 'D31'
      Size = 10
    end
    object dSet_ckInOutmemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 100
    end
    object dSet_ckInOutNO: TLargeintField
      FieldName = 'NO'
    end
  end
  object dSource_ckInOut: TDataSource
    DataSet = dSet_ckInOut
    Left = 178
    Top = 184
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 74
    Top = 256
    PixelsPerInch = 96
    object cxStyle_bg: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object cxStyle_cont: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
end
