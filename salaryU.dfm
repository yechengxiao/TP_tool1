object salaryF: TsalaryF
  Left = 0
  Top = 0
  Caption = #24037#36164#32479#35745
  ClientHeight = 511
  ClientWidth = 1065
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
    Width = 1065
    Height = 121
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 29
      Width = 24
      Height = 13
      Caption = #25209#27425
    end
    object lbl_bm: TLabel
      Left = 8
      Top = 58
      Width = 24
      Height = 13
      Caption = #37096#38376
    end
    object paintBox: TPaintBox
      Left = 845
      Top = 1
      Width = 219
      Height = 119
      Align = alRight
      ExplicitLeft = 704
      ExplicitHeight = 79
    end
    object lbl_name: TLabel
      Left = 8
      Top = 89
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object lbl: TLabel
      Left = 128
      Top = 29
      Width = 12
      Height = 13
      Caption = #33267
    end
    object lbl_zw: TLabel
      Left = 186
      Top = 58
      Width = 24
      Height = 13
      Caption = #32844#21153
    end
    object lbl_lb: TLabel
      Left = 186
      Top = 89
      Width = 24
      Height = 13
      Caption = #31867#21035
    end
    object cbb_bm: TComboBox
      Left = 36
      Top = 50
      Width = 130
      Height = 21
      DropDownCount = 20
      TabOrder = 7
      OnDropDown = cbb_bmDropDown
      Items.Strings = (
        '')
    end
    object cbb_name: TComboBox
      Left = 36
      Top = 81
      Width = 130
      Height = 21
      DropDownCount = 20
      TabOrder = 9
      OnDropDown = cbb_nameDropDown
    end
    object btn_mx: TButton
      Left = 312
      Top = 48
      Width = 80
      Height = 52
      Caption = #24037#36164#26126#32454
      TabOrder = 6
      OnClick = btn_mxClick
    end
    object groupB: TGroupBox
      Left = 606
      Top = 8
      Width = 73
      Height = 94
      Caption = #23383#27573#21487#35265#24615
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object radioSetVisibleT: TRadioButton
        Left = 11
        Top = 19
        Width = 68
        Height = 17
        Caption = #27169#26495
        Enabled = False
        TabOrder = 0
        Visible = False
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
      Left = 515
      Top = 9
      Width = 57
      Height = 94
      Caption = #23548#20986
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
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
        Visible = False
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
      Left = 214
      Top = 50
      Width = 80
      Height = 21
      DropDownCount = 20
      TabOrder = 5
      OnDropDown = cbb_zwDropDown
      Items.Strings = (
        '')
    end
    object cbb_lb: TComboBox
      Left = 214
      Top = 81
      Width = 80
      Height = 21
      DropDownCount = 20
      TabOrder = 8
      OnDropDown = cbb_lbDropDown
      Items.Strings = (
        '')
    end
    object yf1: TMaskEdit
      Left = 38
      Top = 21
      Width = 60
      Height = 21
      TabOrder = 3
      Text = ''
    end
    object yf2: TMaskEdit
      Left = 172
      Top = 21
      Width = 60
      Height = 21
      TabOrder = 4
      Text = ''
    end
    object GroupBox2: TGroupBox
      Left = 414
      Top = 9
      Width = 73
      Height = 94
      Caption = #23548#20837#26041#24335
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
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
    object btn_del: TBitBtn
      Left = 709
      Top = 40
      Width = 76
      Height = 25
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = #25209#37327#21024
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000900000012000000180000001A0000001A00000018000000100000
        0005000000010000000000000000000000000000000000000000000000020000
        000D3524146A936338E5A56B3AFFA36938FFA16736FF9D6233FB633E20B70805
        022800000006000000010000000000000000000000000000000000000008442F
        1D78C18B59FEE1AC76FFE4C296FFB5793BFFB5793CFFB5793CFFAD7239FF7E50
        2AD80302042A00000006000000010000000000000000000000000000000DB07D
        4EF3E6B17AFFE9B47DFFE9B47DFFE7C79DFFB67A3DFFB57A3DFFB57A3DFF6953
        7BFF090E5ED50001052800000006000000010000000000000000000000086A4E
        329DEFD7B3FFE9B47DFFE9B47DFFE9B47DFFEACDA4FFB57B3EFF735C86FF313F
        CCFF2935B8FF0B1161D501010627000000050000000100000000000000010000
        000C745538A5F2DDBBFFE9B47DFFE9B47DFFE9B47DFFD1CEE1FF3443CEFF3443
        CDFF3443CEFF2C39BAFF0D1463D4010106260000000500000001000000000000
        00020000000B76583BA4F5E2C1FFE9B47DFFB5A9B8FF829FF1FFB1C9F5FF3949
        D1FF3A4AD1FF3A49D1FF303FBDFF111767D30101062500000005000000000000
        0000000000010000000B785B3DA3E9E1D2FF87A3F2FF87A4F1FF87A3F2FFB9D0
        F7FF3E50D5FF3E50D5FF3F50D5FF3545C2FF141B6AD201010622000000000000
        000000000000000000010000000A2C386FA2C9E2F9FF8CA8F3FF8DA8F3FF8CA8
        F3FFC0D8F9FF4457D9FF4356D9FF4456D9FF3949C2FF141A61C2000000000000
        000000000000000000000000000100000009303D74A1CFE7FBFF92ADF3FF91AD
        F4FF92ADF4FFC6DEFAFF495EDBFF495DDCFF475AD7FF232F8BF0000000000000
        00000000000000000000000000000000000100000008334177A0D4ECFCFF97B2
        F5FF97B2F4FF97B3F5FFCCE4FBFF4A5FDAFF3141A4F6090C214A000000000000
        000000000000000000000000000000000000000000010000000736457A9FD8F0
        FDFF9DB7F5FF9CB7F5FFD9F1FEFF6B81CAF50B0E234700000006000000000000
        0000000000000000000000000000000000000000000000000001000000063947
        7D9EDBF3FEFFDBF3FFFF677FCFF513192C440000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00053543728E4F63AACD151A2D40000000040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000030000000400000002000000000000000000000000}
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btn_delClick
    end
    object btn_del1: TBitBtn
      Left = 709
      Top = 71
      Width = 76
      Height = 25
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = #21333#26465#21024
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000900000012000000180000001A0000001A00000018000000100000
        0005000000010000000000000000000000000000000000000000000000020000
        000D3524146A936338E5A56B3AFFA36938FFA16736FF9D6233FB633E20B70805
        022800000006000000010000000000000000000000000000000000000008442F
        1D78C18B59FEE1AC76FFE4C296FFB5793BFFB5793CFFB5793CFFAD7239FF7E50
        2AD80302042A00000006000000010000000000000000000000000000000DB07D
        4EF3E6B17AFFE9B47DFFE9B47DFFE7C79DFFB67A3DFFB57A3DFFB57A3DFF6953
        7BFF090E5ED50001052800000006000000010000000000000000000000086A4E
        329DEFD7B3FFE9B47DFFE9B47DFFE9B47DFFEACDA4FFB57B3EFF735C86FF313F
        CCFF2935B8FF0B1161D501010627000000050000000100000000000000010000
        000C745538A5F2DDBBFFE9B47DFFE9B47DFFE9B47DFFD1CEE1FF3443CEFF3443
        CDFF3443CEFF2C39BAFF0D1463D4010106260000000500000001000000000000
        00020000000B76583BA4F5E2C1FFE9B47DFFB5A9B8FF829FF1FFB1C9F5FF3949
        D1FF3A4AD1FF3A49D1FF303FBDFF111767D30101062500000005000000000000
        0000000000010000000B785B3DA3E9E1D2FF87A3F2FF87A4F1FF87A3F2FFB9D0
        F7FF3E50D5FF3E50D5FF3F50D5FF3545C2FF141B6AD201010622000000000000
        000000000000000000010000000A2C386FA2C9E2F9FF8CA8F3FF8DA8F3FF8CA8
        F3FFC0D8F9FF4457D9FF4356D9FF4456D9FF3949C2FF141A61C2000000000000
        000000000000000000000000000100000009303D74A1CFE7FBFF92ADF3FF91AD
        F4FF92ADF4FFC6DEFAFF495EDBFF495DDCFF475AD7FF232F8BF0000000000000
        00000000000000000000000000000000000100000008334177A0D4ECFCFF97B2
        F5FF97B2F4FF97B3F5FFCCE4FBFF4A5FDAFF3141A4F6090C214A000000000000
        000000000000000000000000000000000000000000010000000736457A9FD8F0
        FDFF9DB7F5FF9CB7F5FFD9F1FEFF6B81CAF50B0E234700000006000000000000
        0000000000000000000000000000000000000000000000000001000000063947
        7D9EDBF3FEFFDBF3FFFF677FCFF513192C440000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00053543728E4F63AACD151A2D40000000040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000030000000400000002000000000000000000000000}
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btn_del1Click
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 121
    Width = 1065
    Height = 390
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 1063
      Height = 388
      ActivePage = tab_mx
      Align = alClient
      TabOrder = 0
      object tab_mx: TTabSheet
        Caption = #24037#36164#26126#32454
        ImageIndex = 2
        object cxGrid_mx: TcxGrid
          Left = 0
          Top = 0
          Width = 1055
          Height = 360
          Align = alClient
          TabOrder = 0
          object cxGrid_mxDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dSource_salary
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1gangWeiGZ
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1tongXunBT
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jiangJin
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1qiTaFa
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1nianGongGZ
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1xueLiJT
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1zhiChengBT
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1yaoFei
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jiXiaoJJ
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1geLeiBT
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1fuZhuJT
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1zhiBanFei
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1gaoWenFei
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jiaBanNum
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jiaBanFei
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1yeCanFei
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1qiTaBF
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1shuBaoFei
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jia1
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jia2
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jia3
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1suoDeShui
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1yangLao
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1shiYe
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1gongJi
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1yiBao
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1shiJia
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1bingJia
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1chanHunSangJia
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1qiTaKou
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1shuiDian
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1fangZu
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1shouJi
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1daiKou
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1gongHui
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1nianJin
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jian1
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jian2
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1jian3
              end
              item
                Kind = skSum
                Column = cxGrid_mxDBTableView1shiFa
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
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
              Width = 80
            end
            object cxGrid_mxDBTableView1deptName: TcxGridDBColumn
              DataBinding.FieldName = 'deptName'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 150
            end
            object cxGrid_mxDBTableView1name: TcxGridDBColumn
              DataBinding.FieldName = 'name'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1leiBie: TcxGridDBColumn
              DataBinding.FieldName = 'leiBie'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1zhiWu: TcxGridDBColumn
              DataBinding.FieldName = 'zhiWu'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1gangWeiGZ: TcxGridDBColumn
              DataBinding.FieldName = 'gangWeiGZ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1tongXunBT: TcxGridDBColumn
              DataBinding.FieldName = 'tongXunBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jiangJin: TcxGridDBColumn
              DataBinding.FieldName = 'jiangJin'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1qiTaFa: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaFa'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1nianGongGZ: TcxGridDBColumn
              DataBinding.FieldName = 'nianGongGZ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1xueLiJT: TcxGridDBColumn
              DataBinding.FieldName = 'xueLiJT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1zhiChengBT: TcxGridDBColumn
              DataBinding.FieldName = 'zhiChengBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1yaoFei: TcxGridDBColumn
              DataBinding.FieldName = 'yaoFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jiXiaoJJ: TcxGridDBColumn
              DataBinding.FieldName = 'jiXiaoJJ'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1geLeiBT: TcxGridDBColumn
              DataBinding.FieldName = 'geLeiBT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1fuZhuJT: TcxGridDBColumn
              DataBinding.FieldName = 'fuZhuJT'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1zhiBanFei: TcxGridDBColumn
              DataBinding.FieldName = 'zhiBanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1gaoWenFei: TcxGridDBColumn
              DataBinding.FieldName = 'gaoWenFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jiaBanNum: TcxGridDBColumn
              DataBinding.FieldName = 'jiaBanNum'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jiaBanFei: TcxGridDBColumn
              DataBinding.FieldName = 'jiaBanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1yeCanFei: TcxGridDBColumn
              DataBinding.FieldName = 'yeCanFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1qiTaBF: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaBF'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1shuBaoFei: TcxGridDBColumn
              DataBinding.FieldName = 'shuBaoFei'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jia1: TcxGridDBColumn
              DataBinding.FieldName = 'jia1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jia2: TcxGridDBColumn
              DataBinding.FieldName = 'jia2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jia3: TcxGridDBColumn
              DataBinding.FieldName = 'jia3'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1suoDeShui: TcxGridDBColumn
              DataBinding.FieldName = 'suoDeShui'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1yangLao: TcxGridDBColumn
              DataBinding.FieldName = 'yangLao'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1shiYe: TcxGridDBColumn
              DataBinding.FieldName = 'shiYe'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1gongJi: TcxGridDBColumn
              DataBinding.FieldName = 'gongJi'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1yiBao: TcxGridDBColumn
              DataBinding.FieldName = 'yiBao'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1shiJia: TcxGridDBColumn
              DataBinding.FieldName = 'shiJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1bingJia: TcxGridDBColumn
              DataBinding.FieldName = 'bingJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1chanHunSangJia: TcxGridDBColumn
              DataBinding.FieldName = 'chanHunSangJia'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1qiTaKou: TcxGridDBColumn
              DataBinding.FieldName = 'qiTaKou'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1shuiDian: TcxGridDBColumn
              DataBinding.FieldName = 'shuiDian'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1fangZu: TcxGridDBColumn
              DataBinding.FieldName = 'fangZu'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1shouJi: TcxGridDBColumn
              DataBinding.FieldName = 'shouJi'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1daiKou: TcxGridDBColumn
              DataBinding.FieldName = 'daiKou'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1gongHui: TcxGridDBColumn
              DataBinding.FieldName = 'gongHui'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1nianJin: TcxGridDBColumn
              DataBinding.FieldName = 'nianJin'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jian1: TcxGridDBColumn
              DataBinding.FieldName = 'jian1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jian2: TcxGridDBColumn
              DataBinding.FieldName = 'jian2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1jian3: TcxGridDBColumn
              DataBinding.FieldName = 'jian3'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid_mxDBTableView1shiFa: TcxGridDBColumn
              DataBinding.FieldName = 'shiFa'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 80
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
      object tab_template: TTabSheet
        Caption = #27169#26495
        ImageIndex = 3
        object cxGrid_template: TcxGrid
          Left = 0
          Top = 0
          Width = 1055
          Height = 360
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
    Left = 144
    Top = 296
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
      'OM TPsalary_t s  '#13#10'LEFT JOIN TPdeptOrder_t o  ON o.name=s.deptNa' +
      'me'
    Parameters = <>
    Left = 160
    Top = 238
    object dSet_salaryNO: TLargeintField
      FieldName = 'NO'
      ReadOnly = True
    end
    object dSet_salaryid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object dSet_salaryyf: TWideStringField
      DisplayLabel = #25209#27425
      FieldName = 'yf'
      Size = 10
    end
    object dSet_salarydeptName: TWideStringField
      DisplayLabel = #37096#38376
      FieldName = 'deptName'
      Size = 50
    end
    object dSet_salaryname: TWideStringField
      DisplayLabel = #20154#21592
      FieldName = 'name'
      Size = 50
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
    object dSet_salarygangWeiGZ: TBCDField
      DisplayLabel = #23703#20301#24037#36164
      FieldName = 'gangWeiGZ'
      Precision = 18
      Size = 3
    end
    object dSet_salarytongXunBT: TBCDField
      DisplayLabel = #36890#35759#34917#36148
      FieldName = 'tongXunBT'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjiangJin: TBCDField
      DisplayLabel = #22870#37329
      FieldName = 'jiangJin'
      Precision = 18
      Size = 3
    end
    object dSet_salaryqiTaFa: TBCDField
      DisplayLabel = #20854#20182#21457
      FieldName = 'qiTaFa'
      Precision = 18
      Size = 3
    end
    object dSet_salarynianGongGZ: TBCDField
      DisplayLabel = #24180#21151#24037#36164
      FieldName = 'nianGongGZ'
      Precision = 18
      Size = 3
    end
    object dSet_salaryxueLiJT: TBCDField
      DisplayLabel = #23398#21382#27941#36148
      FieldName = 'xueLiJT'
      Precision = 18
      Size = 3
    end
    object dSet_salaryzhiChengBT: TBCDField
      DisplayLabel = #32844#31216#34917#36148
      FieldName = 'zhiChengBT'
      Precision = 18
      Size = 3
    end
    object dSet_salaryyaoFei: TBCDField
      DisplayLabel = #33647#36153
      FieldName = 'yaoFei'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjiXiaoJJ: TBCDField
      DisplayLabel = #32489#25928#22870#37329
      FieldName = 'jiXiaoJJ'
      Precision = 18
      Size = 3
    end
    object dSet_salarygeLeiBT: TBCDField
      DisplayLabel = #21508#31867#34917#36148
      FieldName = 'geLeiBT'
      Precision = 18
      Size = 3
    end
    object dSet_salaryfuZhuJT: TBCDField
      DisplayLabel = #36741#21161#27941#36148
      FieldName = 'fuZhuJT'
      Precision = 18
      Size = 3
    end
    object dSet_salaryzhiBanFei: TBCDField
      DisplayLabel = #20540#29677#36153
      FieldName = 'zhiBanFei'
      Precision = 18
      Size = 3
    end
    object dSet_salarygaoWenFei: TBCDField
      DisplayLabel = #39640#28201#36153
      FieldName = 'gaoWenFei'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjiaBanNum: TBCDField
      DisplayLabel = #21152#29677#29677#25968
      FieldName = 'jiaBanNum'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjiaBanFei: TBCDField
      DisplayLabel = #21152#29677#36153
      FieldName = 'jiaBanFei'
      Precision = 18
      Size = 3
    end
    object dSet_salaryyeCanFei: TBCDField
      DisplayLabel = #22812#39184#36153
      FieldName = 'yeCanFei'
      Precision = 18
      Size = 3
    end
    object dSet_salaryqiTaBF: TBCDField
      DisplayLabel = #20854#20182#34917#21457
      FieldName = 'qiTaBF'
      Precision = 18
      Size = 3
    end
    object dSet_salaryshuBaoFei: TBCDField
      DisplayLabel = #20070#25253#36153
      FieldName = 'shuBaoFei'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjia1: TBCDField
      DisplayLabel = #21152#39033'1'
      FieldName = 'jia1'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjia2: TBCDField
      DisplayLabel = #21152#39033'2'
      FieldName = 'jia2'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjia3: TBCDField
      DisplayLabel = #21152#39033'3'
      FieldName = 'jia3'
      Precision = 18
      Size = 3
    end
    object dSet_salarysuoDeShui: TBCDField
      DisplayLabel = #25152#24471#31246
      FieldName = 'suoDeShui'
      Precision = 18
      Size = 3
    end
    object dSet_salaryyangLao: TBCDField
      DisplayLabel = #20859#32769#37329
      FieldName = 'yangLao'
      Precision = 18
      Size = 3
    end
    object dSet_salaryshiYe: TBCDField
      DisplayLabel = #22833#19994#37329
      FieldName = 'shiYe'
      Precision = 18
      Size = 3
    end
    object dSet_salarygongJi: TBCDField
      DisplayLabel = #20844#31215#37329
      FieldName = 'gongJi'
      Precision = 18
      Size = 3
    end
    object dSet_salaryyiBao: TBCDField
      DisplayLabel = #21307#20445
      FieldName = 'yiBao'
      Precision = 18
      Size = 3
    end
    object dSet_salaryshiJia: TBCDField
      DisplayLabel = #20107#20551
      FieldName = 'shiJia'
      Precision = 18
      Size = 3
    end
    object dSet_salarybingJia: TBCDField
      DisplayLabel = #30149#20551
      FieldName = 'bingJia'
      Precision = 18
      Size = 3
    end
    object dSet_salarychanHunSangJia: TBCDField
      DisplayLabel = #20135'_'#23130'_'#20007#20551
      FieldName = 'chanHunSangJia'
      Precision = 18
      Size = 3
    end
    object dSet_salaryqiTaKou: TBCDField
      DisplayLabel = #20854#20182#25187
      FieldName = 'qiTaKou'
      Precision = 18
      Size = 3
    end
    object dSet_salaryshuiDian: TBCDField
      DisplayLabel = #27700#30005#36153
      FieldName = 'shuiDian'
      Precision = 18
      Size = 3
    end
    object dSet_salaryfangZu: TBCDField
      DisplayLabel = #25151#31199#36153
      FieldName = 'fangZu'
      Precision = 18
      Size = 3
    end
    object dSet_salaryshouJi: TBCDField
      DisplayLabel = #25163#26426#36153
      FieldName = 'shouJi'
      Precision = 18
      Size = 3
    end
    object dSet_salarydaiKou: TBCDField
      DisplayLabel = #20195#25187
      FieldName = 'daiKou'
      Precision = 18
      Size = 3
    end
    object dSet_salarygongHui: TBCDField
      DisplayLabel = #24037#20250#36153
      FieldName = 'gongHui'
      Precision = 18
      Size = 3
    end
    object dSet_salarynianJin: TBCDField
      DisplayLabel = #24180#37329
      FieldName = 'nianJin'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjian1: TBCDField
      DisplayLabel = #20943#39033'1'
      FieldName = 'jian1'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjian2: TBCDField
      DisplayLabel = #20943#39033'2'
      FieldName = 'jian2'
      Precision = 18
      Size = 3
    end
    object dSet_salaryjian3: TBCDField
      DisplayLabel = #20943#39033'3'
      FieldName = 'jian3'
      Precision = 18
      Size = 3
    end
    object dSet_salaryshiFa: TBCDField
      DisplayLabel = #23454#21457#37329#39069
      FieldName = 'shiFa'
      Precision = 18
      Size = 3
    end
    object dSet_salarymemo: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 600
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
    Left = 80
    Top = 234
  end
  object openDLG: TOpenDialog
    Left = 282
    Top = 254
  end
end
