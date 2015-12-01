object checkInOutF: TcheckInOutF
  Left = 0
  Top = 0
  Caption = #26376#24230#32771#21220#32479#35745
  ClientHeight = 469
  ClientWidth = 924
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
    Width = 924
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
      Left = 136
      Top = 22
      Width = 24
      Height = 13
      Caption = #37096#38376
    end
    object paintBox: TPaintBox
      Left = 704
      Top = 1
      Width = 219
      Height = 79
      Align = alRight
    end
    object lbl_name: TLabel
      Left = 328
      Top = 22
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object lbl_tip: TLabel
      Left = 16
      Top = 56
      Width = 336
      Height = 13
      Caption = #24322#21160#25968#25454#26469#28304#30001#32771#21220#26426#25552#20379#65292#22914#24403#22825#26410#25353#35201#27714#25171#21345#65292#21363#20026#24322#21160#12290
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dtp1: TDateTimePicker
      Left = 44
      Top = 14
      Width = 70
      Height = 21
      Date = 42324.452836851850000000
      Time = 42324.452836851850000000
      MaxDate = 43100.999988425920000000
      MinDate = 41640.000000000000000000
      TabOrder = 2
    end
    object btn_tj: TButton
      Left = 482
      Top = 10
      Width = 75
      Height = 25
      Caption = #32479#35745
      TabOrder = 0
      OnClick = btn_tjClick
    end
    object btn_export: TButton
      Left = 565
      Top = 10
      Width = 75
      Height = 25
      Caption = #23548#20986
      TabOrder = 1
      OnClick = btn_exportClick
    end
    object cbb_bm: TComboBox
      Left = 164
      Top = 14
      Width = 140
      Height = 21
      DropDownCount = 20
      TabOrder = 3
      OnKeyPress = cbb_bmKeyPress
      Items.Strings = (
        #22612#29260#25991#21270#20013#24515)
    end
    object btn_empty: TButton
      Left = 370
      Top = 51
      Width = 75
      Height = 25
      Caption = #28165#38500
      TabOrder = 5
      Visible = False
      OnClick = btn_emptyClick
    end
    object cbb_name: TComboBox
      Left = 356
      Top = 14
      Width = 80
      Height = 21
      DropDownCount = 20
      TabOrder = 4
      OnDropDown = cbb_nameDropDown
      OnKeyPress = cbb_bmKeyPress
      Items.Strings = (
        #22612#29260#25991#21270#20013#24515)
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 81
    Width = 924
    Height = 388
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 922
      Height = 386
      ActivePage = tab3
      Align = alClient
      TabOrder = 0
      object tab1: TTabSheet
        Caption = #32771#21220#26126#32454
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 914
          Height = 358
          Align = alClient
          TabOrder = 0
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
      object tab2: TTabSheet
        Caption = #24322#21160#26126#32454
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 914
          Height = 358
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
            DataController.DataSource = dm.dSource_pubForGrid
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_cont
            object cxGridDBTableView1Column2NO: TcxGridDBColumn
              DataBinding.FieldName = 'NO'
              Width = 20
            end
            object cxGridDBTableView1Column1deptName: TcxGridDBColumn
              Caption = #37096#38376
              DataBinding.FieldName = 'deptName'
              Width = 100
            end
            object cxGridDBTableView1Column2deptId: TcxGridDBColumn
              DataBinding.FieldName = 'deptId'
              Visible = False
            end
            object cxGridDBTableView1Column3name: TcxGridDBColumn
              Caption = #22995#21517
              DataBinding.FieldName = 'name'
              Width = 80
            end
            object cxGridDBTableView1Column4badgenumber: TcxGridDBColumn
              DataBinding.FieldName = 'badgenumber'
              Visible = False
            end
            object cxGridDBTableView1Column5noCK_count: TcxGridDBColumn
              Caption = #24322#21160#22825#25968
              DataBinding.FieldName = 'noCK_count'
              Width = 55
            end
            object cxGridDBTableView1Column6noCK_days: TcxGridDBColumn
              Caption = #24322#21160#35814#24773
              DataBinding.FieldName = 'noCK_days'
              Width = 700
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object tab3: TTabSheet
        Caption = #32771#21220#32771#26680#27719#24635
        ImageIndex = 2
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 914
          Height = 358
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
            DataController.DataSource = dSource_kaohe
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
          object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dSource_kaohe
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_cont
            Bands = <
              item
              end
              item
                Caption = #35831#20551#24773#20917
                Width = 350
              end
              item
                Caption = #21152#29677#24773#20917
                Width = 180
              end
              item
                Caption = #22812#39184#36153
                Width = 100
              end
              item
                Caption = #21508#31867#34917#36148
                Width = 380
              end
              item
              end>
            object cxGrid3DBBandedTableView1NO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NO'
              HeaderAlignmentHorz = taCenter
              Width = 25
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1month_: TcxGridDBBandedColumn
              DataBinding.FieldName = 'month_'
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1deptName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'deptName'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1deptID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'deptID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1name: TcxGridDBBandedColumn
              DataBinding.FieldName = 'name'
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1badgenumber: TcxGridDBBandedColumn
              DataBinding.FieldName = 'badgenumber'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1czy: TcxGridDBBandedColumn
              DataBinding.FieldName = 'czy'
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1czsj: TcxGridDBBandedColumn
              DataBinding.FieldName = 'czsj'
              HeaderAlignmentHorz = taCenter
              Width = 80
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1chuQin: TcxGridDBBandedColumn
              DataBinding.FieldName = 'chuQin'
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_shiJia: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_shiJia'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_bingJia: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_bingJia'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_hunJia: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_hunJia'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_chanJia: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_chanJia'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_sangJia: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_sangJia'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_gongShang: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_gongShang'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_diaoXiu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_diaoXiu'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_nianXiu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_nianXiu'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1QJ_qiTa: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QJ_qiTa'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1JB_pingShi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'JB_pingShi'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1JB_shuangXiu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'JB_shuangXiu'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1JB_faDing: TcxGridDBBandedColumn
              DataBinding.FieldName = 'JB_faDing'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1JB_teShu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'JB_teShu'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1JB_banShu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'JB_banShu'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1meals_zao: TcxGridDBBandedColumn
              DataBinding.FieldName = 'meals_zao'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1meals_zhong: TcxGridDBBandedColumn
              DataBinding.FieldName = 'meals_zhong'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1meals_wan: TcxGridDBBandedColumn
              DataBinding.FieldName = 'meals_wan'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_jiLu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_jiLu'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_kaiPa: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_kaiPa'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_linFan: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_linFan'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_duiZhuang: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_duiZhuang'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_jiZha: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_jiZha'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_xieXinTan: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_xieXinTan'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_laChenTan: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_laChenTan'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_queGong: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_queGong'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1allowance_total: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allowance_total'
              HeaderAlignmentHorz = taCenter
              Width = 50
              Position.BandIndex = 4
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1memo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'memo'
              HeaderAlignmentHorz = taCenter
              Width = 200
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGrid3DBBandedTableView1
          end
        end
      end
    end
  end
  object dSet_ckInOut: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    CommandTimeout = 15
    Parameters = <>
    Left = 72
    Top = 314
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
    Left = 186
    Top = 376
  end
  object dSet_ckInOut_m: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    CommandTimeout = 15
    Parameters = <>
    Left = 184
    Top = 320
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
    object dSet_ckInOut_mtype1: TStringField
      FieldName = 'type1'
      Size = 10
    end
    object dSet_ckInOut_mtype2: TStringField
      FieldName = 'type2'
    end
    object dSet_ckInOut_mczy: TStringField
      FieldName = 'czy'
      Size = 30
    end
    object dSet_ckInOut_mchange_time: TStringField
      FieldName = 'change_time'
    end
    object dSet_ckInOut_mmemo: TStringField
      FieldName = 'memo'
      Size = 10
    end
  end
  object dSource_ckInOut_m: TDataSource
    DataSet = dSet_ckInOut_m
    Left = 72
    Top = 372
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 192
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
  object dSource_kaohe: TDataSource
    DataSet = dSet_kaohe
    Left = 296
    Top = 380
  end
  object dSet_kaohe: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    CommandTimeout = 15
    Parameters = <>
    Left = 296
    Top = 314
    object dSet_kaohemonth_: TStringField
      DisplayLabel = #26376#20221
      FieldName = 'month_'
      Size = 15
    end
    object dSet_kaohedeptName: TStringField
      DisplayLabel = #37096#38376
      FieldName = 'deptName'
      Size = 60
    end
    object dSet_kaohedeptID: TStringField
      DisplayLabel = #37096#38376#21495
      FieldName = 'deptID'
      Size = 10
    end
    object dSet_kaohename: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'name'
      Size = 50
    end
    object dSet_kaohebadgenumber: TStringField
      DisplayLabel = #21592#24037#21495
      FieldName = 'badgenumber'
      Size = 15
    end
    object dSet_kaoheczy: TStringField
      DisplayLabel = #25805#20316#21592
      FieldName = 'czy'
      Size = 30
    end
    object dSet_kaoheczsj: TStringField
      DisplayLabel = #25805#20316#26102#38388
      FieldName = 'czsj'
      Size = 30
    end
    object dSet_kaohechuQin: TBCDField
      DisplayLabel = #20986#21220#22825#25968
      FieldName = 'chuQin'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_shiJia: TBCDField
      DisplayLabel = #20107#20551
      FieldName = 'QJ_shiJia'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_bingJia: TBCDField
      DisplayLabel = #30149#20551
      FieldName = 'QJ_bingJia'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_hunJia: TBCDField
      DisplayLabel = #23130#20551
      FieldName = 'QJ_hunJia'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_chanJia: TBCDField
      DisplayLabel = #20135#20551
      FieldName = 'QJ_chanJia'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_sangJia: TBCDField
      DisplayLabel = #20007#20551
      FieldName = 'QJ_sangJia'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_gongShang: TBCDField
      DisplayLabel = #24037#20260
      FieldName = 'QJ_gongShang'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_diaoXiu: TBCDField
      DisplayLabel = #35843#20241
      FieldName = 'QJ_diaoXiu'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_nianXiu: TBCDField
      DisplayLabel = #24180#20241
      FieldName = 'QJ_nianXiu'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheQJ_qiTa: TBCDField
      DisplayLabel = #20854#20182
      FieldName = 'QJ_qiTa'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheJB_pingShi: TBCDField
      DisplayLabel = #24179#26102
      FieldName = 'JB_pingShi'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheJB_shuangXiu: TBCDField
      DisplayLabel = #21452#20241
      FieldName = 'JB_shuangXiu'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheJB_faDing: TBCDField
      DisplayLabel = #27861#23450
      FieldName = 'JB_faDing'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheJB_teShu: TBCDField
      DisplayLabel = #29305#27530
      FieldName = 'JB_teShu'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheJB_banShu: TBCDField
      DisplayLabel = #29677#25968
      FieldName = 'JB_banShu'
      Precision = 5
      Size = 3
    end
    object dSet_kaohemeals_zao: TBCDField
      DisplayLabel = #26089#29677
      FieldName = 'meals_zao'
      Precision = 5
      Size = 3
    end
    object dSet_kaohemeals_zhong: TBCDField
      DisplayLabel = #20013#29677
      FieldName = 'meals_zhong'
      Precision = 5
      Size = 3
    end
    object dSet_kaohemeals_wan: TBCDField
      DisplayLabel = #26202#29677
      FieldName = 'meals_wan'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_jiLu: TBCDField
      DisplayLabel = #35760#24405
      FieldName = 'allowance_jiLu'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_kaiPa: TBCDField
      DisplayLabel = #24320#32793
      FieldName = 'allowance_kaiPa'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_linFan: TBCDField
      DisplayLabel = #28107#39277
      FieldName = 'allowance_linFan'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_duiZhuang: TBCDField
      DisplayLabel = #22534#24162
      FieldName = 'allowance_duiZhuang'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_jiZha: TBCDField
      DisplayLabel = #26426#27048
      FieldName = 'allowance_jiZha'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_xieXinTan: TBCDField
      DisplayLabel = #32567#26032#22363
      FieldName = 'allowance_xieXinTan'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_laChenTan: TBCDField
      DisplayLabel = #25289#38472#22363
      FieldName = 'allowance_laChenTan'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_queGong: TBCDField
      DisplayLabel = #32570#24037
      FieldName = 'allowance_queGong'
      Precision = 5
      Size = 3
    end
    object dSet_kaoheallowance_total: TBCDField
      DisplayLabel = #23567#35745
      FieldName = 'allowance_total'
      Precision = 5
      Size = 3
    end
    object dSet_kaohememo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 500
    end
    object dSet_kaoheNO: TLargeintField
      FieldName = 'NO'
    end
  end
end
