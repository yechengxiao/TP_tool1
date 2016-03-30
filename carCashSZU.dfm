object carCashSZ_F: TcarCashSZ_F
  Left = 0
  Top = 0
  Caption = #39277#21345#25910#25903#32479#35745
  ClientHeight = 411
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_up: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 65
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 784
    object lbl1: TLabel
      Left = 32
      Top = 12
      Width = 16
      Height = 13
      Caption = 'lbl1'
    end
    object lbl2: TLabel
      Left = 186
      Top = 12
      Width = 16
      Height = 13
      Caption = 'lbl2'
    end
    object lbl3: TLabel
      Left = 32
      Top = 39
      Width = 16
      Height = 13
      Caption = 'lbl3'
    end
    object lbl_msg: TLabel
      Left = 361
      Top = 38
      Width = 35
      Height = 13
      Caption = 'lbl_msg'
    end
    object dtp1: TDateTimePicker
      Left = 70
      Top = 11
      Width = 80
      Height = 21
      Date = 42324.452836851850000000
      Time = 42324.452836851850000000
      MaxDate = 42735.999988425920000000
      MinDate = 42005.622210706020000000
      TabOrder = 2
    end
    object dtp2: TDateTimePicker
      Left = 223
      Top = 11
      Width = 80
      Height = 21
      Date = 42324.452836851850000000
      Time = 42324.452836851850000000
      MaxDate = 42735.999988425920000000
      MinDate = 42005.622503194440000000
      TabOrder = 3
    end
    object edit_czy: TEdit
      Left = 70
      Top = 38
      Width = 80
      Height = 21
      TabOrder = 4
      Text = 'stcz'
    end
    object btn_tj: TButton
      Left = 361
      Top = 7
      Width = 75
      Height = 25
      Caption = 'btn_tj'
      TabOrder = 0
      OnClick = btn_tjClick
    end
    object btn_export: TButton
      Left = 448
      Top = 7
      Width = 75
      Height = 25
      Caption = 'btn_export'
      TabOrder = 1
      OnClick = btn_exportClick
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 65
    Width = 777
    Height = 346
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    ExplicitWidth = 784
    ExplicitHeight = 441
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 775
      Height = 344
      ActivePage = tab1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 782
      ExplicitHeight = 439
      object tab1: TTabSheet
        Caption = 'tab1'
        ExplicitWidth = 774
        ExplicitHeight = 411
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 767
          Height = 316
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 774
          ExplicitHeight = 411
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dm.dSource_carcashsz
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGrid1DBTableView1chongZhi_count
              end
              item
                Kind = skSum
                Column = cxGrid1DBTableView1tuiKuan_count
              end
              item
                Kind = skSum
                Column = cxGrid1DBTableView1chongZhi_amount
              end
              item
                Kind = skSum
                Column = cxGrid1DBTableView1tuiKuan_amount
              end
              item
                Kind = skSum
                Column = cxGrid1DBTableView1hj
              end
              item
                Column = cxGrid1DBTableView1create_operator
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_content
            Styles.Footer = cxStyle_footer
            Styles.Header = cxStyle_header
            object cxGrid1DBTableView1create_operator: TcxGridDBColumn
              DataBinding.FieldName = 'create_operator'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object cxGrid1DBTableView1checktime: TcxGridDBColumn
              DataBinding.FieldName = 'checktime'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1chongZhi_count: TcxGridDBColumn
              DataBinding.FieldName = 'chongZhi_count'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1tuiKuan_count: TcxGridDBColumn
              DataBinding.FieldName = 'tuiKuan_count'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1chongZhi_amount: TcxGridDBColumn
              DataBinding.FieldName = 'chongZhi_amount'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1tuiKuan_amount: TcxGridDBColumn
              DataBinding.FieldName = 'tuiKuan_amount'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1faKa_count: TcxGridDBColumn
              DataBinding.FieldName = 'faKa_count'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1tuiKa_count: TcxGridDBColumn
              DataBinding.FieldName = 'tuiKa_count'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1tuiKa_amount: TcxGridDBColumn
              DataBinding.FieldName = 'tuiKa_amount'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1cost_amount: TcxGridDBColumn
              DataBinding.FieldName = 'cost_amount'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1manage_amount: TcxGridDBColumn
              DataBinding.FieldName = 'manage_amount'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1hj: TcxGridDBColumn
              DataBinding.FieldName = 'hj'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 448
    Top = 176
    PixelsPerInch = 96
    object cxStyle_content: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
    object cxStyle_header: TcxStyle
    end
    object cxStyle_footer: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object cxStyle_bg: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
  object timer_disDBCon: TTimer
    Interval = 600000
    OnTimer = timer_disDBConTimer
    Left = 344
    Top = 176
  end
end
