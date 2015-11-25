object checkInOutF: TcheckInOutF
  Left = 0
  Top = 0
  Caption = #26376#24230#32771#21220#32479#35745
  ClientHeight = 390
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_up: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 41
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 798
    object lbl1: TLabel
      Left = 32
      Top = 12
      Width = 24
      Height = 13
      Caption = #26376#20221
    end
    object lbl3: TLabel
      Left = 176
      Top = 12
      Width = 24
      Height = 13
      Caption = #37096#38376
    end
    object paintBox: TPaintBox
      Left = 642
      Top = 1
      Width = 153
      Height = 39
      Align = alRight
      ExplicitLeft = 656
      ExplicitHeight = 63
    end
    object dtp1: TDateTimePicker
      Left = 70
      Top = 11
      Width = 70
      Height = 21
      Date = 42324.452836851850000000
      Time = 42324.452836851850000000
      MaxDate = 43100.999988425920000000
      MinDate = 41640.000000000000000000
      TabOrder = 3
    end
    object btn_tj: TButton
      Left = 362
      Top = 10
      Width = 75
      Height = 25
      Caption = #32479#35745
      TabOrder = 0
      OnClick = btn_tjClick
    end
    object btn_export: TButton
      Left = 443
      Top = 10
      Width = 75
      Height = 25
      Caption = #23548#20986
      TabOrder = 1
      OnClick = btn_exportClick
    end
    object cbb_bm: TComboBox
      Left = 216
      Top = 11
      Width = 140
      Height = 21
      DropDownCount = 20
      TabOrder = 4
      OnDropDown = cbb_bmDropDown
      Items.Strings = (
        #22612#29260#25991#21270#20013#24515)
    end
    object btn_empty: TButton
      Left = 544
      Top = 10
      Width = 75
      Height = 25
      Caption = #28165#31354#34920#26684
      TabOrder = 2
      OnClick = btn_emptyClick
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 41
    Width = 796
    Height = 349
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    ExplicitWidth = 798
    ExplicitHeight = 342
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 794
      Height = 347
      ActivePage = tab1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 796
      ExplicitHeight = 340
      object tab1: TTabSheet
        Caption = 'tab1'
        ExplicitWidth = 788
        ExplicitHeight = 312
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 786
          Height = 319
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 788
          ExplicitHeight = 312
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
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
            object cxGrid1DBTableView1NO: TcxGridDBColumn
              DataBinding.FieldName = 'NO'
              Width = 20
            end
            object cxGrid1DBTableView1name: TcxGridDBColumn
              DataBinding.FieldName = 'name'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGrid1DBTableView1yf: TcxGridDBColumn
              DataBinding.FieldName = 'yf'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGrid1DBTableView1deptID: TcxGridDBColumn
              DataBinding.FieldName = 'deptID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGrid1DBTableView1badgenumber: TcxGridDBColumn
              DataBinding.FieldName = 'badgenumber'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGrid1DBTableView1D01: TcxGridDBColumn
              DataBinding.FieldName = 'D01'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D02: TcxGridDBColumn
              DataBinding.FieldName = 'D02'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D03: TcxGridDBColumn
              DataBinding.FieldName = 'D03'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D04: TcxGridDBColumn
              DataBinding.FieldName = 'D04'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D05: TcxGridDBColumn
              DataBinding.FieldName = 'D05'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D06: TcxGridDBColumn
              DataBinding.FieldName = 'D06'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D07: TcxGridDBColumn
              DataBinding.FieldName = 'D07'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D08: TcxGridDBColumn
              DataBinding.FieldName = 'D08'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D09: TcxGridDBColumn
              DataBinding.FieldName = 'D09'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D10: TcxGridDBColumn
              DataBinding.FieldName = 'D10'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D11: TcxGridDBColumn
              DataBinding.FieldName = 'D11'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D12: TcxGridDBColumn
              DataBinding.FieldName = 'D12'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D13: TcxGridDBColumn
              DataBinding.FieldName = 'D13'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D14: TcxGridDBColumn
              DataBinding.FieldName = 'D14'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D15: TcxGridDBColumn
              DataBinding.FieldName = 'D15'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D16: TcxGridDBColumn
              DataBinding.FieldName = 'D16'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D17: TcxGridDBColumn
              DataBinding.FieldName = 'D17'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D18: TcxGridDBColumn
              DataBinding.FieldName = 'D18'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D19: TcxGridDBColumn
              DataBinding.FieldName = 'D19'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D20: TcxGridDBColumn
              DataBinding.FieldName = 'D20'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D21: TcxGridDBColumn
              DataBinding.FieldName = 'D21'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D22: TcxGridDBColumn
              DataBinding.FieldName = 'D22'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D23: TcxGridDBColumn
              DataBinding.FieldName = 'D23'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D24: TcxGridDBColumn
              DataBinding.FieldName = 'D24'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D25: TcxGridDBColumn
              DataBinding.FieldName = 'D25'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D26: TcxGridDBColumn
              DataBinding.FieldName = 'D26'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D27: TcxGridDBColumn
              DataBinding.FieldName = 'D27'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D28: TcxGridDBColumn
              DataBinding.FieldName = 'D28'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D29: TcxGridDBColumn
              DataBinding.FieldName = 'D29'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D30: TcxGridDBColumn
              DataBinding.FieldName = 'D30'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1D31: TcxGridDBColumn
              DataBinding.FieldName = 'D31'
              HeaderAlignmentHorz = taCenter
              Width = 35
            end
            object cxGrid1DBTableView1deptName: TcxGridDBColumn
              DataBinding.FieldName = 'deptName'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1memo: TcxGridDBColumn
              DataBinding.FieldName = 'memo'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    object ValueListEditor1: TValueListEditor
      Left = 248
      Top = 25
      Width = 306
      Height = 300
      TabOrder = 1
    end
  end
  object dSet_ckInOut: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    CommandTimeout = 15
    Parameters = <>
    Left = 104
    Top = 130
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
    Left = 210
    Top = 232
  end
  object dSet_ckInOut_m: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    CommandTimeout = 15
    Parameters = <>
    Left = 208
    Top = 128
    object dSet_ckInOut_mbadgenumber: TStringField
      FieldName = 'badgenumber'
      Size = 15
    end
    object dSet_ckInOut_mcheck_time: TStringField
      FieldName = 'check_time'
    end
    object dSet_ckInOut_mwork_num: TStringField
      FieldName = 'work_num'
      Size = 10
    end
    object dSet_ckInOut_mtype_: TStringField
      FieldName = 'type_'
      Size = 10
    end
    object dSet_ckInOut_mczy: TStringField
      FieldName = 'czy'
      Size = 30
    end
    object dSet_ckInOut_mmemo: TStringField
      FieldName = 'memo'
      Size = 10
    end
  end
  object dSource_ckInOut_m: TDataSource
    DataSet = dSet_ckInOut_m
    Left = 96
    Top = 228
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 352
    Top = 136
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
