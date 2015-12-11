object salaryF: TsalaryF
  Left = 0
  Top = 0
  Caption = #21592#24037#24037#36164#32479#35745
  ClientHeight = 439
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_up: TPanel
    Left = 0
    Top = 0
    Width = 916
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
      Left = 696
      Top = 1
      Width = 219
      Height = 79
      Align = alRight
      ExplicitLeft = 704
    end
    object lbl_name: TLabel
      Left = 239
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
      Left = 267
      Top = 10
      Width = 80
      Height = 25
      Caption = #32479#35745
      TabOrder = 0
    end
    object btn_export: TButton
      Left = 627
      Top = 41
      Width = 80
      Height = 25
      Caption = #23548#20986
      TabOrder = 6
    end
    object cbb_bm: TComboBox
      Left = 44
      Top = 46
      Width = 140
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      TabOrder = 7
      Items.Strings = (
        '')
    end
    object cbb_name: TComboBox
      Left = 267
      Top = 46
      Width = 80
      Height = 21
      DropDownCount = 20
      TabOrder = 8
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
      Left = 541
      Top = 10
      Width = 80
      Height = 25
      Caption = #27169#26495
      TabOrder = 1
      OnClick = btn_templateClick
    end
    object btn_setting_tmplate: TButton
      Left = 541
      Top = 41
      Width = 80
      Height = 25
      Caption = #35774#32622#27169#26495#23383#27573
      TabOrder = 5
      OnClick = btn_setting_tmplateClick
    end
    object btn_import: TButton
      Left = 627
      Top = 10
      Width = 80
      Height = 25
      Caption = #23548#20837
      TabOrder = 2
      OnClick = btn_importClick
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 81
    Width = 916
    Height = 358
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 914
      Height = 356
      ActivePage = tab_mx
      Align = alClient
      TabOrder = 0
      object tab_mx: TTabSheet
        Caption = #21592#24037#24037#36164#26126#32454
        ImageIndex = 2
        object cxGrid_mx: TcxGrid
          Left = 0
          Top = 0
          Width = 906
          Height = 328
          Align = alClient
          TabOrder = 0
          object cxGrid_mxDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dSource_salary
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_cont
            object cxGrid_mxDBTableView1NO: TcxGridDBColumn
              DataBinding.FieldName = 'NO'
              Width = 30
            end
            object cxGrid_mxDBTableView1name: TcxGridDBColumn
              DataBinding.FieldName = 'name'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1deptName: TcxGridDBColumn
              DataBinding.FieldName = 'deptName'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1yf: TcxGridDBColumn
              DataBinding.FieldName = 'yf'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1deptID: TcxGridDBColumn
              DataBinding.FieldName = 'deptID'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1badgenumber: TcxGridDBColumn
              DataBinding.FieldName = 'badgenumber'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1gangWeiGZ: TcxGridDBColumn
              DataBinding.FieldName = 'gangWeiGZ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1tongXunBT: TcxGridDBColumn
              DataBinding.FieldName = 'tongXunBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jiangJin: TcxGridDBColumn
              DataBinding.FieldName = 'jiangJin'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1qiTaFa: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaFa'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1nianGongGZ: TcxGridDBColumn
              DataBinding.FieldName = 'nianGongGZ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1xueLiJT: TcxGridDBColumn
              DataBinding.FieldName = 'xueLiJT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1zhiChengBT: TcxGridDBColumn
              DataBinding.FieldName = 'zhiChengBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1yaoFei: TcxGridDBColumn
              DataBinding.FieldName = 'yaoFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jiXiaoJJ: TcxGridDBColumn
              DataBinding.FieldName = 'jiXiaoJJ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1geLeiBT: TcxGridDBColumn
              DataBinding.FieldName = 'geLeiBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1fuZhuJT: TcxGridDBColumn
              DataBinding.FieldName = 'fuZhuJT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1zhiBanFei: TcxGridDBColumn
              DataBinding.FieldName = 'zhiBanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1gaoWenFei: TcxGridDBColumn
              DataBinding.FieldName = 'gaoWenFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jiaBanNum: TcxGridDBColumn
              DataBinding.FieldName = 'jiaBanNum'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jiaBanFei: TcxGridDBColumn
              DataBinding.FieldName = 'jiaBanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1yeCanFei: TcxGridDBColumn
              DataBinding.FieldName = 'yeCanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1qiTaBF: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaBF'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1shuBaoFei: TcxGridDBColumn
              DataBinding.FieldName = 'shuBaoFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jia1: TcxGridDBColumn
              DataBinding.FieldName = 'jia1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jia2: TcxGridDBColumn
              DataBinding.FieldName = 'jia2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jia3: TcxGridDBColumn
              DataBinding.FieldName = 'jia3'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1suoDeShui: TcxGridDBColumn
              DataBinding.FieldName = 'suoDeShui'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1yangLao: TcxGridDBColumn
              DataBinding.FieldName = 'yangLao'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1shiYe: TcxGridDBColumn
              DataBinding.FieldName = 'shiYe'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1gongJi: TcxGridDBColumn
              DataBinding.FieldName = 'gongJi'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1yiBao: TcxGridDBColumn
              DataBinding.FieldName = 'yiBao'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1shiJia: TcxGridDBColumn
              DataBinding.FieldName = 'shiJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1bingJia: TcxGridDBColumn
              DataBinding.FieldName = 'bingJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1chanHunSangJia: TcxGridDBColumn
              DataBinding.FieldName = 'chanHunSangJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1qiTaKou: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaKou'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1shuiDian: TcxGridDBColumn
              DataBinding.FieldName = 'shuiDian'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1fangZu: TcxGridDBColumn
              DataBinding.FieldName = 'fangZu'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1shouJi: TcxGridDBColumn
              DataBinding.FieldName = 'shouJi'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1daiKou: TcxGridDBColumn
              DataBinding.FieldName = 'daiKou'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1gongHui: TcxGridDBColumn
              DataBinding.FieldName = 'gongHui'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1nianJin: TcxGridDBColumn
              DataBinding.FieldName = 'nianJin'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jian1: TcxGridDBColumn
              DataBinding.FieldName = 'jian1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jian2: TcxGridDBColumn
              DataBinding.FieldName = 'jian2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1jian3: TcxGridDBColumn
              DataBinding.FieldName = 'jian3'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1shiFa: TcxGridDBColumn
              DataBinding.FieldName = 'shiFa'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid_mxDBTableView1memo: TcxGridDBColumn
              DataBinding.FieldName = 'memo'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
          end
          object cxGrid_mxLevel1: TcxGridLevel
            GridView = cxGrid_mxDBTableView1
          end
        end
      end
      object tab1: TTabSheet
        Caption = #32479#35745#65306#25353#26376#20221
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab2: TTabSheet
        Caption = #32479#35745#65306#25353#37096#38376
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab_template: TTabSheet
        Caption = #27169#26495
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid_template: TcxGrid
          Left = 0
          Top = 0
          Width = 906
          Height = 328
          Align = alClient
          TabOrder = 0
          object cxGrid_templateDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
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
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGrid_templateDBTableView1
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 136
    Top = 281
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
  object dSet_salary: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    Parameters = <>
    Left = 136
    Top = 239
    object dSet_salaryname: TWideStringField
      DisplayLabel = #22995#21517
      FieldName = 'name'
      Size = 24
    end
    object dSet_salarydeptName: TWideStringField
      DisplayLabel = #37096#38376
      FieldName = 'deptName'
      Size = 50
    end
    object dSet_salaryyf: TStringField
      DisplayLabel = #26376#20221
      FieldName = 'yf'
    end
    object dSet_salarydeptID: TStringField
      DisplayLabel = #37096#38376'ID'
      FieldName = 'deptID'
    end
    object dSet_salarybadgenumber: TStringField
      DisplayLabel = #21592#24037'ID'
      FieldName = 'badgenumber'
    end
    object dSet_salarygangWeiGZ: TBCDField
      DisplayLabel = #23703#20301#24037#36164
      FieldName = 'gangWeiGZ'
      Precision = 9
      Size = 3
    end
    object dSet_salarytongXunBT: TBCDField
      DisplayLabel = #36890#35759#34917#36148
      FieldName = 'tongXunBT'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjiangJin: TBCDField
      DisplayLabel = #22870#37329
      FieldName = 'jiangJin'
      Precision = 9
      Size = 3
    end
    object dSet_salaryqiTaFa: TBCDField
      DisplayLabel = #20854#20182#21457
      FieldName = 'qiTaFa'
      Precision = 9
      Size = 3
    end
    object dSet_salarynianGongGZ: TBCDField
      DisplayLabel = #24180#21151#24037#36164
      FieldName = 'nianGongGZ'
      Precision = 9
      Size = 3
    end
    object dSet_salaryxueLiJT: TBCDField
      DisplayLabel = #23398#21382#27941#36148
      FieldName = 'xueLiJT'
      Precision = 9
      Size = 3
    end
    object dSet_salaryzhiChengBT: TBCDField
      DisplayLabel = #32844#31216#34917#36148
      FieldName = 'zhiChengBT'
      Precision = 9
      Size = 3
    end
    object dSet_salaryyaoFei: TBCDField
      DisplayLabel = #33647#36153
      FieldName = 'yaoFei'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjiXiaoJJ: TBCDField
      DisplayLabel = #32489#25928#22870#37329
      FieldName = 'jiXiaoJJ'
      Precision = 9
      Size = 3
    end
    object dSet_salarygeLeiBT: TBCDField
      DisplayLabel = #21508#31867#34917#36148
      FieldName = 'geLeiBT'
      Precision = 9
      Size = 3
    end
    object dSet_salaryfuZhuJT: TBCDField
      DisplayLabel = #36741#21161#27941#36148
      FieldName = 'fuZhuJT'
      Precision = 9
      Size = 3
    end
    object dSet_salaryzhiBanFei: TBCDField
      DisplayLabel = #20540#29677#36153
      FieldName = 'zhiBanFei'
      Precision = 9
      Size = 3
    end
    object dSet_salarygaoWenFei: TBCDField
      DisplayLabel = #39640#28201#36153
      FieldName = 'gaoWenFei'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjiaBanNum: TBCDField
      DisplayLabel = #21152#29677#29677#25968
      FieldName = 'jiaBanNum'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjiaBanFei: TBCDField
      DisplayLabel = #21152#29677#36153
      FieldName = 'jiaBanFei'
      Precision = 9
      Size = 3
    end
    object dSet_salaryyeCanFei: TBCDField
      DisplayLabel = #22812#39184#36153
      FieldName = 'yeCanFei'
      Precision = 9
      Size = 3
    end
    object dSet_salaryqiTaBF: TBCDField
      DisplayLabel = #20854#20182#34917#21457
      FieldName = 'qiTaBF'
      Precision = 9
      Size = 3
    end
    object dSet_salaryshuBaoFei: TBCDField
      DisplayLabel = #20070#25253#36153
      FieldName = 'shuBaoFei'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjia1: TBCDField
      DisplayLabel = #21152#39033'1'
      FieldName = 'jia1'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjia2: TBCDField
      DisplayLabel = #21152#39033'2'
      FieldName = 'jia2'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjia3: TBCDField
      DisplayLabel = #21152#39033'3'
      FieldName = 'jia3'
      Precision = 9
      Size = 3
    end
    object dSet_salarysuoDeShui: TBCDField
      DisplayLabel = #25152#24471#31246
      FieldName = 'suoDeShui'
      Precision = 9
      Size = 3
    end
    object dSet_salaryyangLao: TBCDField
      DisplayLabel = #20859#32769#37329
      FieldName = 'yangLao'
      Precision = 9
      Size = 3
    end
    object dSet_salaryshiYe: TBCDField
      DisplayLabel = #22833#19994#37329
      FieldName = 'shiYe'
      Precision = 9
      Size = 3
    end
    object dSet_salarygongJi: TBCDField
      DisplayLabel = #20844#31215#37329
      FieldName = 'gongJi'
      Precision = 9
      Size = 3
    end
    object dSet_salaryyiBao: TBCDField
      DisplayLabel = #21307#20445
      FieldName = 'yiBao'
      Precision = 9
      Size = 3
    end
    object dSet_salaryshiJia: TBCDField
      DisplayLabel = #20107#20551
      FieldName = 'shiJia'
      Precision = 9
      Size = 3
    end
    object dSet_salarybingJia: TBCDField
      DisplayLabel = #30149#20551
      FieldName = 'bingJia'
      Precision = 9
      Size = 3
    end
    object dSet_salarychanHunSangJia: TBCDField
      DisplayLabel = #20135'_'#23130'_'#20007#20551
      FieldName = 'chanHunSangJia'
      Precision = 9
      Size = 3
    end
    object dSet_salaryqiTaKou: TBCDField
      DisplayLabel = #20854#20182#25187
      FieldName = 'qiTaKou'
      Precision = 9
      Size = 3
    end
    object dSet_salaryshuiDian: TBCDField
      DisplayLabel = #27700#30005#36153
      FieldName = 'shuiDian'
      Precision = 9
      Size = 3
    end
    object dSet_salaryfangZu: TBCDField
      DisplayLabel = #25151#31199#36153
      FieldName = 'fangZu'
      Precision = 9
      Size = 3
    end
    object dSet_salaryshouJi: TBCDField
      DisplayLabel = #25163#26426#36153
      FieldName = 'shouJi'
      Precision = 9
      Size = 3
    end
    object dSet_salarydaiKou: TBCDField
      DisplayLabel = #20195#25187
      FieldName = 'daiKou'
      Precision = 9
      Size = 3
    end
    object dSet_salarygongHui: TBCDField
      DisplayLabel = #24037#20250#36153
      FieldName = 'gongHui'
      Precision = 9
      Size = 3
    end
    object dSet_salarynianJin: TBCDField
      DisplayLabel = #24180#37329
      FieldName = 'nianJin'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjian1: TBCDField
      DisplayLabel = #20943#39033'1'
      FieldName = 'jian1'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjian2: TBCDField
      DisplayLabel = #20943#39033'2'
      FieldName = 'jian2'
      Precision = 9
      Size = 3
    end
    object dSet_salaryjian3: TBCDField
      DisplayLabel = #20943#39033'3'
      FieldName = 'jian3'
      Precision = 9
      Size = 3
    end
    object dSet_salaryshiFa: TBCDField
      DisplayLabel = #23454#21457#37329#39069
      FieldName = 'shiFa'
      Precision = 9
      Size = 3
    end
    object dSet_salarymemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 600
    end
    object dSet_salaryNO: TLargeintField
      FieldName = 'NO'
    end
  end
  object dSource_salary: TDataSource
    DataSet = dSet_salary
    Left = 136
    Top = 323
  end
  object openDLG: TOpenDialog
    Left = 178
    Top = 239
  end
end
