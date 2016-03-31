object changeCardNoF: TchangeCardNoF
  Left = 0
  Top = 0
  Caption = #39184#21345#25913#21495
  ClientHeight = 390
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_up: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 49
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    object lbl3: TLabel
      Left = 56
      Top = 14
      Width = 48
      Height = 13
      Caption = #21592#24037#22995#21517
    end
    object lbl_msg: TLabel
      Left = 484
      Top = 14
      Width = 6
      Height = 13
      Caption = 'x'
    end
    object Label1: TLabel
      Left = 212
      Top = 14
      Width = 35
      Height = 13
      Caption = #21592#24037'ID'
    end
    object edit_name: TEdit
      Left = 110
      Top = 6
      Width = 90
      Height = 21
      TabOrder = 1
    end
    object btn_select: TButton
      Left = 361
      Top = 2
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 0
      OnClick = btn_selectClick
    end
    object edit_userId: TEdit
      Left = 254
      Top = 6
      Width = 90
      Height = 21
      TabOrder = 2
      OnKeyPress = edit_userIdKeyPress
    end
  end
  object pan_down: TPanel
    Left = 0
    Top = 49
    Width = 813
    Height = 341
    Align = alClient
    Caption = 'pan_down'
    TabOrder = 1
    object pg_ctl: TPageControl
      Left = 1
      Top = 1
      Width = 811
      Height = 339
      ActivePage = tab_record
      Align = alClient
      TabOrder = 0
      object tab_lostCard: TTabSheet
        Caption = #26410#39046#39184#34917
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 803
          Height = 311
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_content
            Styles.Footer = cxStyle_footer
            Styles.Header = cxStyle_header
            object cxGrid1DBTableView1deptName: TcxGridDBColumn
              DataBinding.FieldName = 'deptName'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1badgenumber: TcxGridDBColumn
              DataBinding.FieldName = 'badgenumber'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1name: TcxGridDBColumn
              DataBinding.FieldName = 'name'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1sys_card_no: TcxGridDBColumn
              DataBinding.FieldName = 'sys_card_no'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1batch: TcxGridDBColumn
              DataBinding.FieldName = 'batch'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1is_ok: TcxGridDBColumn
              DataBinding.FieldName = 'is_ok'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1receive_date: TcxGridDBColumn
              DataBinding.FieldName = 'receive_date'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object tab_record: TTabSheet
        Caption = #20462#25913#35760#24405
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 803
          Height = 311
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dm.dSource_pubForGrid
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle_bg
            Styles.Content = cxStyle_content
            Styles.Footer = cxStyle_footer
            Styles.Header = cxStyle_header
            object cxGridDBTableView1Column1badgenumber: TcxGridDBColumn
              Caption = #21592#24037'ID'
              DataBinding.FieldName = 'badgenumber'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1Column2cardIdOld: TcxGridDBColumn
              Caption = #26087#21495
              DataBinding.FieldName = 'cardIdOld'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1Column4cardIDNew: TcxGridDBColumn
              Caption = #26032#21495
              DataBinding.FieldName = 'cardIDNew'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1Column3czrq: TcxGridDBColumn
              Caption = #25805#20316#26102#38388
              DataBinding.FieldName = 'czrq'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object cxGridDBTableView1Column1msg: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'msg'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 104
    Top = 232
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
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 104
    Top = 274
  end
  object ADODataSet1: TADODataSet
    Connection = dm.DB_Con
    CursorType = ctStatic
    Parameters = <>
    Left = 104
    Top = 190
    object ADODataSet1deptName: TWideStringField
      DisplayLabel = #37096#38376
      FieldName = 'deptName'
      Size = 50
    end
    object ADODataSet1badgenumber: TWideStringField
      DisplayLabel = #21592#24037'ID'
      FieldName = 'badgenumber'
    end
    object ADODataSet1name: TWideStringField
      DisplayLabel = #22995#21517
      FieldName = 'name'
      Size = 24
    end
    object ADODataSet1sys_card_no: TIntegerField
      DisplayLabel = #39184#21345#21495
      FieldName = 'sys_card_no'
    end
    object ADODataSet1batch: TWideStringField
      DisplayLabel = #34917#36148#25209#27425
      FieldName = 'batch'
    end
    object ADODataSet1is_ok: TIntegerField
      DisplayLabel = #39046#21462#29366#24577
      FieldName = 'is_ok'
    end
    object ADODataSet1receive_date: TStringField
      DisplayLabel = #39046#21462#26085#26399
      FieldName = 'receive_date'
      ReadOnly = True
      Size = 30
    end
  end
end
