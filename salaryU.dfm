object salaryF: TsalaryF
  Left = 0
  Top = 0
  Caption = #24037#36164#32479#35745
  ClientHeight = 448
  ClientWidth = 1234
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
    Width = 1234
    Height = 121
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 17
      Width = 24
      Height = 13
      Caption = #26376#20221
    end
    object lbl_bm: TLabel
      Left = 16
      Top = 46
      Width = 24
      Height = 13
      Caption = #37096#38376
    end
    object paintBox: TPaintBox
      Left = 1014
      Top = 1
      Width = 219
      Height = 119
      Align = alRight
      ExplicitLeft = 704
      ExplicitHeight = 79
    end
    object lbl_name: TLabel
      Left = 16
      Top = 77
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object lbl: TLabel
      Left = 144
      Top = 17
      Width = 12
      Height = 13
      Caption = #33267
    end
    object Label1: TLabel
      Left = 16
      Top = 102
      Width = 336
      Height = 13
      Caption = #23548#20837#26102#65292#33509#25968#25454#24050#23384#22312#65292#21017#20197#23548#20837#25968#25454#20026#20934#65292#32769#25968#25454#23558#34987#21024#38500#12290
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_zw: TLabel
      Left = 194
      Top = 44
      Width = 24
      Height = 13
      Caption = #32844#21153
    end
    object lbl_lb: TLabel
      Left = 194
      Top = 75
      Width = 24
      Height = 13
      Caption = #31867#21035
    end
    object btn_tj: TButton
      Left = 359
      Top = 5
      Width = 80
      Height = 25
      Caption = #32479#35745
      TabOrder = 1
      Visible = False
    end
    object cbb_bm: TComboBox
      Left = 44
      Top = 38
      Width = 130
      Height = 21
      DropDownCount = 20
      TabOrder = 9
      OnDropDown = cbb_bmDropDown
      Items.Strings = (
        '')
    end
    object cbb_name: TComboBox
      Left = 44
      Top = 69
      Width = 130
      Height = 21
      DropDownCount = 20
      TabOrder = 11
      OnDropDown = cbb_nameDropDown
    end
    object btn_mx: TButton
      Left = 273
      Top = 5
      Width = 80
      Height = 25
      Caption = #24037#36164#26126#32454
      TabOrder = 0
      OnClick = btn_mxClick
    end
    object groupB: TGroupBox
      Left = 526
      Top = 6
      Width = 73
      Height = 94
      Caption = #23383#27573#21487#35265#24615
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object radioSetVisibleT: TRadioButton
        Left = 11
        Top = 19
        Width = 68
        Height = 17
        Caption = #27169#26495
        Enabled = False
        TabOrder = 0
      end
      object radioSetVisibleD: TRadioButton
        Left = 11
        Top = 36
        Width = 62
        Height = 17
        Caption = #25968#25454
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object btn_setting_visible: TButton
        Left = 11
        Top = 59
        Width = 46
        Height = 25
        Caption = #35774#32622
        TabOrder = 2
        OnClick = btn_setting_visibleClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 463
      Top = 6
      Width = 57
      Height = 94
      Caption = #23548#20986
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object btn_export: TButton
        Left = 3
        Top = 59
        Width = 46
        Height = 25
        Caption = #23548#20986
        TabOrder = 2
        OnClick = btn_exportClick
      end
      object radioExportT: TRadioButton
        Left = 3
        Top = 19
        Width = 50
        Height = 17
        Caption = #27169#26495
        Enabled = False
        TabOrder = 0
      end
      object radioExportD: TRadioButton
        Left = 3
        Top = 36
        Width = 50
        Height = 17
        Caption = #25968#25454
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object cbb_zw: TComboBox
      Left = 222
      Top = 36
      Width = 130
      Height = 21
      DropDownCount = 20
      TabOrder = 8
      OnDropDown = cbb_zwDropDown
      Items.Strings = (
        '')
    end
    object cbb_lb: TComboBox
      Left = 222
      Top = 67
      Width = 130
      Height = 21
      DropDownCount = 20
      TabOrder = 10
      OnDropDown = cbb_lbDropDown
      Items.Strings = (
        '')
    end
    object yf1: TMaskEdit
      Left = 46
      Top = 11
      Width = 60
      Height = 21
      TabOrder = 5
      Text = ''
    end
    object yf2: TMaskEdit
      Left = 180
      Top = 11
      Width = 60
      Height = 21
      TabOrder = 6
      Text = ''
    end
    object btn_del: TButton
      Left = 726
      Top = 12
      Width = 80
      Height = 25
      Caption = #21333#26465#21024#38500
      TabOrder = 7
      OnClick = btn_delClick
    end
    object GroupBox2: TGroupBox
      Left = 611
      Top = 6
      Width = 73
      Height = 94
      Caption = #23548#20837#26041#24335
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      object RB_ignore: TRadioButton
        Left = 11
        Top = 19
        Width = 68
        Height = 17
        Caption = #36339#36807
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RB_overlap: TRadioButton
        Left = 11
        Top = 36
        Width = 62
        Height = 17
        Caption = #35206#30422
        TabOrder = 1
      end
      object btn_import: TButton
        Left = 11
        Top = 59
        Width = 46
        Height = 25
        Caption = #23548#20837
        TabOrder = 2
        OnClick = btn_importClick
      end
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 121
    Width = 1234
    Height = 327
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 1232
      Height = 325
      ActivePage = tab_mx
      Align = alClient
      TabOrder = 0
      object tab_mx: TTabSheet
        Caption = #24037#36164#26126#32454
        ImageIndex = 2
        object cxGrid_mx: TcxGrid
          Left = 0
          Top = 0
          Width = 1224
          Height = 297
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
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_cont
            object cxGrid_mxDBTableView1NO: TcxGridDBColumn
              DataBinding.FieldName = 'NO'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 40
            end
            object cxGrid_mxDBTableView1yf: TcxGridDBColumn
              DataBinding.FieldName = 'yf'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1deptName: TcxGridDBColumn
              DataBinding.FieldName = 'deptName'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1leiBie: TcxGridDBColumn
              DataBinding.FieldName = 'leiBie'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1zhiWu: TcxGridDBColumn
              DataBinding.FieldName = 'zhiWu'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1name: TcxGridDBColumn
              DataBinding.FieldName = 'name'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1gangWeiGZ: TcxGridDBColumn
              DataBinding.FieldName = 'gangWeiGZ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1tongXunBT: TcxGridDBColumn
              DataBinding.FieldName = 'tongXunBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jiangJin: TcxGridDBColumn
              DataBinding.FieldName = 'jiangJin'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1qiTaFa: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaFa'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1nianGongGZ: TcxGridDBColumn
              DataBinding.FieldName = 'nianGongGZ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1xueLiJT: TcxGridDBColumn
              DataBinding.FieldName = 'xueLiJT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1zhiChengBT: TcxGridDBColumn
              DataBinding.FieldName = 'zhiChengBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1yaoFei: TcxGridDBColumn
              DataBinding.FieldName = 'yaoFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jiXiaoJJ: TcxGridDBColumn
              DataBinding.FieldName = 'jiXiaoJJ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1geLeiBT: TcxGridDBColumn
              DataBinding.FieldName = 'geLeiBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1fuZhuJT: TcxGridDBColumn
              DataBinding.FieldName = 'fuZhuJT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1zhiBanFei: TcxGridDBColumn
              DataBinding.FieldName = 'zhiBanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1gaoWenFei: TcxGridDBColumn
              DataBinding.FieldName = 'gaoWenFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jiaBanNum: TcxGridDBColumn
              DataBinding.FieldName = 'jiaBanNum'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jiaBanFei: TcxGridDBColumn
              DataBinding.FieldName = 'jiaBanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1yeCanFei: TcxGridDBColumn
              DataBinding.FieldName = 'yeCanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1qiTaBF: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaBF'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1shuBaoFei: TcxGridDBColumn
              DataBinding.FieldName = 'shuBaoFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jia1: TcxGridDBColumn
              DataBinding.FieldName = 'jia1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jia2: TcxGridDBColumn
              DataBinding.FieldName = 'jia2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jia3: TcxGridDBColumn
              DataBinding.FieldName = 'jia3'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1suoDeShui: TcxGridDBColumn
              DataBinding.FieldName = 'suoDeShui'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1yangLao: TcxGridDBColumn
              DataBinding.FieldName = 'yangLao'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1shiYe: TcxGridDBColumn
              DataBinding.FieldName = 'shiYe'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1gongJi: TcxGridDBColumn
              DataBinding.FieldName = 'gongJi'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1yiBao: TcxGridDBColumn
              DataBinding.FieldName = 'yiBao'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1shiJia: TcxGridDBColumn
              DataBinding.FieldName = 'shiJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1bingJia: TcxGridDBColumn
              DataBinding.FieldName = 'bingJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1chanHunSangJia: TcxGridDBColumn
              DataBinding.FieldName = 'chanHunSangJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1qiTaKou: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaKou'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1shuiDian: TcxGridDBColumn
              DataBinding.FieldName = 'shuiDian'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1fangZu: TcxGridDBColumn
              DataBinding.FieldName = 'fangZu'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1shouJi: TcxGridDBColumn
              DataBinding.FieldName = 'shouJi'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1daiKou: TcxGridDBColumn
              DataBinding.FieldName = 'daiKou'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1gongHui: TcxGridDBColumn
              DataBinding.FieldName = 'gongHui'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1nianJin: TcxGridDBColumn
              DataBinding.FieldName = 'nianJin'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jian1: TcxGridDBColumn
              DataBinding.FieldName = 'jian1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jian2: TcxGridDBColumn
              DataBinding.FieldName = 'jian2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1jian3: TcxGridDBColumn
              DataBinding.FieldName = 'jian3'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1shiFa: TcxGridDBColumn
              DataBinding.FieldName = 'shiFa'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid_mxDBTableView1memo: TcxGridDBColumn
              DataBinding.FieldName = 'memo'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 200
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
      end
      object tab2: TTabSheet
        Caption = #32479#35745#65306#25353#37096#38376
        ImageIndex = 2
      end
      object tab_template: TTabSheet
        Caption = #27169#26495
        ImageIndex = 3
        object cxGrid_template: TcxGrid
          Left = 0
          Top = 0
          Width = 1224
          Height = 297
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
    Left = 344
    Top = 265
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
    CommandText = 
      'SELECT TOP 0 row_number()over(ORDER BY o.order1) AS NO, s.* '#13#10'FR' +
      'OM TPsalary_t s  '#13#10'LEFT JOIN TPsalaryOrder_t o  ON o.name=s.dept' +
      'Name'
    Parameters = <>
    Left = 40
    Top = 319
    object dSet_salaryNO: TLargeintField
      FieldName = 'NO'
      ReadOnly = True
    end
    object dSet_salaryyf: TStringField
      DisplayLabel = #26376#20221
      FieldName = 'yf'
    end
    object dSet_salarydeptName: TWideStringField
      DisplayLabel = #37096#38376
      FieldName = 'deptName'
      Size = 50
    end
    object dSet_salaryname: TWideStringField
      DisplayLabel = #22995#21517
      FieldName = 'name'
      Size = 24
    end
    object dSet_salarygangWeiGZ: TStringField
      DisplayLabel = #23703#20301#24037#36164
      FieldName = 'gangWeiGZ'
    end
    object dSet_salarytongXunBT: TStringField
      DisplayLabel = #36890#35759#34917#36148
      FieldName = 'tongXunBT'
    end
    object dSet_salaryjiangJin: TStringField
      DisplayLabel = #22870#37329
      FieldName = 'jiangJin'
    end
    object dSet_salaryqiTaFa: TStringField
      DisplayLabel = #20854#20182#21457
      FieldName = 'qiTaFa'
    end
    object dSet_salarynianGongGZ: TStringField
      DisplayLabel = #24180#21151#24037#36164
      FieldName = 'nianGongGZ'
    end
    object dSet_salaryxueLiJT: TStringField
      DisplayLabel = #23398#21382#27941#36148
      FieldName = 'xueLiJT'
    end
    object dSet_salaryzhiChengBT: TStringField
      DisplayLabel = #32844#31216#34917#36148
      FieldName = 'zhiChengBT'
    end
    object dSet_salaryyaoFei: TStringField
      DisplayLabel = #33647#36153
      FieldName = 'yaoFei'
    end
    object dSet_salaryjiXiaoJJ: TStringField
      DisplayLabel = #32489#25928#22870#37329
      FieldName = 'jiXiaoJJ'
    end
    object dSet_salarygeLeiBT: TStringField
      DisplayLabel = #21508#31867#34917#36148
      FieldName = 'geLeiBT'
    end
    object dSet_salaryfuZhuJT: TStringField
      DisplayLabel = #36741#21161#27941#36148
      FieldName = 'fuZhuJT'
    end
    object dSet_salaryzhiBanFei: TStringField
      DisplayLabel = #20540#29677#36153
      FieldName = 'zhiBanFei'
    end
    object dSet_salarygaoWenFei: TStringField
      DisplayLabel = #39640#28201#36153
      FieldName = 'gaoWenFei'
    end
    object dSet_salaryjiaBanNum: TStringField
      DisplayLabel = #21152#29677#29677#25968
      FieldName = 'jiaBanNum'
    end
    object dSet_salaryjiaBanFei: TStringField
      DisplayLabel = #21152#29677#36153
      FieldName = 'jiaBanFei'
    end
    object dSet_salaryyeCanFei: TStringField
      DisplayLabel = #22812#39184#36153
      FieldName = 'yeCanFei'
    end
    object dSet_salaryqiTaBF: TStringField
      DisplayLabel = #20854#20182#34917#21457
      FieldName = 'qiTaBF'
    end
    object dSet_salaryshuBaoFei: TStringField
      DisplayLabel = #20070#25253#36153
      FieldName = 'shuBaoFei'
    end
    object dSet_salaryjia1: TStringField
      DisplayLabel = #21152#39033'1'
      FieldName = 'jia1'
    end
    object dSet_salaryjia2: TStringField
      DisplayLabel = #21152#39033'2'
      FieldName = 'jia2'
    end
    object dSet_salaryjia3: TStringField
      DisplayLabel = #21152#39033'3'
      FieldName = 'jia3'
    end
    object dSet_salarysuoDeShui: TStringField
      DisplayLabel = #25152#24471#31246
      FieldName = 'suoDeShui'
    end
    object dSet_salaryyangLao: TStringField
      DisplayLabel = #20859#32769#37329
      FieldName = 'yangLao'
    end
    object dSet_salaryshiYe: TStringField
      DisplayLabel = #22833#19994#37329
      FieldName = 'shiYe'
    end
    object dSet_salarygongJi: TStringField
      DisplayLabel = #20844#31215#37329
      FieldName = 'gongJi'
    end
    object dSet_salaryyiBao: TStringField
      DisplayLabel = #21307#20445
      FieldName = 'yiBao'
    end
    object dSet_salaryshiJia: TStringField
      DisplayLabel = #20107#20551
      FieldName = 'shiJia'
    end
    object dSet_salarybingJia: TStringField
      DisplayLabel = #30149#20551
      FieldName = 'bingJia'
    end
    object dSet_salarychanHunSangJia: TStringField
      DisplayLabel = #20135'_'#23130'_'#20007#20551
      FieldName = 'chanHunSangJia'
    end
    object dSet_salaryqiTaKou: TStringField
      DisplayLabel = #20854#20182#25187
      FieldName = 'qiTaKou'
    end
    object dSet_salaryshuiDian: TStringField
      DisplayLabel = #27700#30005#36153
      FieldName = 'shuiDian'
    end
    object dSet_salaryfangZu: TStringField
      DisplayLabel = #25151#31199#36153
      FieldName = 'fangZu'
    end
    object dSet_salaryshouJi: TStringField
      DisplayLabel = #25163#26426#36153
      FieldName = 'shouJi'
    end
    object dSet_salarydaiKou: TStringField
      DisplayLabel = #20195#25187
      FieldName = 'daiKou'
    end
    object dSet_salarygongHui: TStringField
      DisplayLabel = #24037#20250#36153
      FieldName = 'gongHui'
    end
    object dSet_salarynianJin: TStringField
      DisplayLabel = #24180#37329
      FieldName = 'nianJin'
    end
    object dSet_salaryjian1: TStringField
      DisplayLabel = #20943#39033'1'
      FieldName = 'jian1'
    end
    object dSet_salaryjian2: TStringField
      DisplayLabel = #20943#39033'2'
      FieldName = 'jian2'
    end
    object dSet_salaryjian3: TStringField
      DisplayLabel = #20943#39033'3'
      FieldName = 'jian3'
    end
    object dSet_salaryshiFa: TStringField
      DisplayLabel = #23454#21457#37329#39069
      FieldName = 'shiFa'
    end
    object dSet_salarymemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 600
    end
    object dSet_salaryid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object dSet_salaryleiBie: TWideStringField
      DisplayLabel = #31867#21035
      FieldName = 'leiBie'
      Size = 50
    end
    object dSet_salaryzhiWu: TWideStringField
      DisplayLabel = #32844#21153
      FieldName = 'zhiWu'
      Size = 50
    end
    object dSet_salaryczy: TWideStringField
      FieldName = 'czy'
      Size = 10
    end
    object dSet_salaryczsj: TWideStringField
      FieldName = 'czsj'
    end
  end
  object dSource_salary: TDataSource
    DataSet = dSet_salary
    Left = 136
    Top = 323
  end
  object openDLG: TOpenDialog
    Left = 450
    Top = 263
  end
end
