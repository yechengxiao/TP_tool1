unit checkInOutU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DateUtils, cxGridExportLink, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB, StrUtils, Vcl.Grids,
  Vcl.ValEdit, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TcheckInOutF = class(TForm)
    pan_up: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    dtp1: TDateTimePicker;
    btn_tj: TButton;
    btn_export: TButton;
    pan_down: TPanel;
    pg_ctl: TPageControl;
    tab1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dSet_ckInOut: TADODataSet;
    dSource_ckInOut: TDataSource;
    dSet_ckInOutyf: TStringField;
    dSet_ckInOutdeptName: TStringField;
    dSet_ckInOutdeptID: TStringField;
    dSet_ckInOutname: TStringField;
    dSet_ckInOutbadgenumber: TStringField;
    dSet_ckInOutD01: TStringField;
    dSet_ckInOutD02: TStringField;
    dSet_ckInOutD03: TStringField;
    dSet_ckInOutD04: TStringField;
    dSet_ckInOutD05: TStringField;
    dSet_ckInOutD06: TStringField;
    dSet_ckInOutD07: TStringField;
    dSet_ckInOutD08: TStringField;
    dSet_ckInOutD09: TStringField;
    dSet_ckInOutD10: TStringField;
    dSet_ckInOutD11: TStringField;
    dSet_ckInOutD12: TStringField;
    dSet_ckInOutD13: TStringField;
    dSet_ckInOutD14: TStringField;
    dSet_ckInOutD15: TStringField;
    dSet_ckInOutD16: TStringField;
    dSet_ckInOutD17: TStringField;
    dSet_ckInOutD18: TStringField;
    dSet_ckInOutD19: TStringField;
    dSet_ckInOutD20: TStringField;
    dSet_ckInOutD21: TStringField;
    dSet_ckInOutD22: TStringField;
    dSet_ckInOutD23: TStringField;
    dSet_ckInOutD24: TStringField;
    dSet_ckInOutD25: TStringField;
    dSet_ckInOutD26: TStringField;
    dSet_ckInOutD27: TStringField;
    dSet_ckInOutD28: TStringField;
    dSet_ckInOutD29: TStringField;
    dSet_ckInOutD30: TStringField;
    dSet_ckInOutD31: TStringField;
    dSet_ckInOutmemo: TStringField;
    cxGrid1DBTableView1yf: TcxGridDBColumn;
    cxGrid1DBTableView1deptName: TcxGridDBColumn;
    cxGrid1DBTableView1deptID: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1badgenumber: TcxGridDBColumn;
    cxGrid1DBTableView1D01: TcxGridDBColumn;
    cxGrid1DBTableView1D02: TcxGridDBColumn;
    cxGrid1DBTableView1D03: TcxGridDBColumn;
    cxGrid1DBTableView1D04: TcxGridDBColumn;
    cxGrid1DBTableView1D05: TcxGridDBColumn;
    cxGrid1DBTableView1D06: TcxGridDBColumn;
    cxGrid1DBTableView1D07: TcxGridDBColumn;
    cxGrid1DBTableView1D08: TcxGridDBColumn;
    cxGrid1DBTableView1D09: TcxGridDBColumn;
    cxGrid1DBTableView1D10: TcxGridDBColumn;
    cxGrid1DBTableView1D11: TcxGridDBColumn;
    cxGrid1DBTableView1D12: TcxGridDBColumn;
    cxGrid1DBTableView1D13: TcxGridDBColumn;
    cxGrid1DBTableView1D14: TcxGridDBColumn;
    cxGrid1DBTableView1D15: TcxGridDBColumn;
    cxGrid1DBTableView1D16: TcxGridDBColumn;
    cxGrid1DBTableView1D17: TcxGridDBColumn;
    cxGrid1DBTableView1D18: TcxGridDBColumn;
    cxGrid1DBTableView1D19: TcxGridDBColumn;
    cxGrid1DBTableView1D20: TcxGridDBColumn;
    cxGrid1DBTableView1D21: TcxGridDBColumn;
    cxGrid1DBTableView1D22: TcxGridDBColumn;
    cxGrid1DBTableView1D23: TcxGridDBColumn;
    cxGrid1DBTableView1D24: TcxGridDBColumn;
    cxGrid1DBTableView1D25: TcxGridDBColumn;
    cxGrid1DBTableView1D26: TcxGridDBColumn;
    cxGrid1DBTableView1D27: TcxGridDBColumn;
    cxGrid1DBTableView1D28: TcxGridDBColumn;
    cxGrid1DBTableView1D29: TcxGridDBColumn;
    cxGrid1DBTableView1D30: TcxGridDBColumn;
    cxGrid1DBTableView1D31: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    cbb_bm: TComboBox;
    paintBox: TPaintBox;
    dSet_ckInOut_m: TADODataSet;
    dSource_ckInOut_m: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_bg: TcxStyle;
    cxStyle_cont: TcxStyle;
    cxGrid1DBTableView1NO: TcxGridDBColumn;
    dSet_ckInOutNO: TLargeintField;
    btn_empty: TButton;
    dSet_ckInOut_mbadgenumber: TStringField;
    dSet_ckInOut_mcheck_time: TStringField;
    dSet_ckInOut_mwork_num: TStringField;
    dSet_ckInOut_mtype1: TStringField;
    dSet_ckInOut_mtype2: TStringField;
    dSet_ckInOut_mczy: TStringField;
    dSet_ckInOut_mchange_time: TStringField;
    dSet_ckInOut_mmemo: TStringField;
    cbb_name: TComboBox;
    lbl_name: TLabel;
    tab2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    lbl_tip: TLabel;
    cxGridDBTableView1Column2deptId: TcxGridDBColumn;
    cxGridDBTableView1Column3name: TcxGridDBColumn;
    cxGridDBTableView1Column4badgenumber: TcxGridDBColumn;
    cxGridDBTableView1Column5noCK_count: TcxGridDBColumn;
    cxGridDBTableView1Column6noCK_days: TcxGridDBColumn;
    cxGridDBTableView1Column1deptName: TcxGridDBColumn;
    cxGridDBTableView1Column2NO: TcxGridDBColumn;
    tab3: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dSource_kaohe: TDataSource;
    dSet_kaohe: TADODataSet;
    dSet_kaohemonth_: TStringField;
    dSet_kaohedeptName: TStringField;
    dSet_kaohedeptID: TStringField;
    dSet_kaohename: TStringField;
    dSet_kaohebadgenumber: TStringField;
    dSet_kaoheczy: TStringField;
    dSet_kaoheczsj: TStringField;
    dSet_kaohechuQin: TBCDField;
    dSet_kaoheQJ_shiJia: TBCDField;
    dSet_kaoheQJ_bingJia: TBCDField;
    dSet_kaoheQJ_hunJia: TBCDField;
    dSet_kaoheQJ_chanJia: TBCDField;
    dSet_kaoheQJ_sangJia: TBCDField;
    dSet_kaoheQJ_gongShang: TBCDField;
    dSet_kaoheQJ_diaoXiu: TBCDField;
    dSet_kaoheQJ_nianXiu: TBCDField;
    dSet_kaoheQJ_qiTa: TBCDField;
    dSet_kaoheJB_pingShi: TBCDField;
    dSet_kaoheJB_shuangXiu: TBCDField;
    dSet_kaoheJB_faDing: TBCDField;
    dSet_kaoheJB_teShu: TBCDField;
    dSet_kaoheJB_banShu: TBCDField;
    dSet_kaohemeals_zao: TBCDField;
    dSet_kaohemeals_zhong: TBCDField;
    dSet_kaohemeals_wan: TBCDField;
    dSet_kaoheallowance_jiLu: TBCDField;
    dSet_kaoheallowance_kaiPa: TBCDField;
    dSet_kaoheallowance_linFan: TBCDField;
    dSet_kaoheallowance_duiZhuang: TBCDField;
    dSet_kaoheallowance_jiZha: TBCDField;
    dSet_kaoheallowance_xieXinTan: TBCDField;
    dSet_kaoheallowance_laChenTan: TBCDField;
    dSet_kaoheallowance_queGong: TBCDField;
    dSet_kaoheallowance_total: TBCDField;
    dSet_kaohememo: TStringField;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1month_: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1deptName: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1deptID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1badgenumber: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1czy: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1czsj: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1chuQin: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_shiJia: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_bingJia: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_hunJia: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_chanJia: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_sangJia: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_gongShang: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_diaoXiu: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_nianXiu: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QJ_qiTa: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1JB_pingShi: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1JB_shuangXiu: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1JB_faDing: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1JB_teShu: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1JB_banShu: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1meals_zao: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1meals_zhong: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1meals_wan: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_jiLu: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_kaiPa: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_linFan: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_duiZhuang: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_jiZha: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_xieXinTan: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_laChenTan: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_queGong: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1allowance_total: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1memo: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1NO: TcxGridDBBandedColumn;
    dSet_kaoheNO: TLargeintField;
    lbl_color: TLabel;
    cxGrid_tip: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    dSet_tip: TADODataSet;
    dSource_tip: TDataSource;
    dSet_tipbadgenumber: TStringField;
    dSet_tipcheck_time: TStringField;
    dSet_tipwork_num: TStringField;
    dSet_tiptype1: TStringField;
    dSet_tiptype2: TStringField;
    dSet_tipczy: TStringField;
    dSet_tipchange_time: TStringField;
    dSet_tipmemo: TStringField;
    cxGridDBTableView3badgenumber: TcxGridDBColumn;
    cxGridDBTableView3check_time: TcxGridDBColumn;
    cxGridDBTableView3work_num: TcxGridDBColumn;
    cxGridDBTableView3type1: TcxGridDBColumn;
    cxGridDBTableView3type2: TcxGridDBColumn;
    cxGridDBTableView3czy: TcxGridDBColumn;
    cxGridDBTableView3change_time: TcxGridDBColumn;
    cxGridDBTableView3memo: TcxGridDBColumn;
    cxGridDBTableView3Column1name: TcxGridDBColumn;
    dSet_tipname: TStringField;
    cxGrid3DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column2: TcxGridDBBandedColumn;
    procedure btn_tjClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_exportClick(Sender: TObject);
    procedure btn_emptyClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cbb_nameDropDown(Sender: TObject);
    procedure cbb_bmKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dSet_tiptype1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    QJ_List, JB_List, ZC_List: TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  checkInOutF: TcheckInOutF;

implementation

uses dmU, utilU, mainU, checkInOut_modify_U;
{$R *.dfm}

procedure TcheckInOutF.btn_emptyClick(Sender: TObject);
begin
  try
    // 清空表格数据
    if pg_ctl.ActivePage = tab1 then
    begin
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;
    end
    else if pg_ctl.ActivePage = tab2 then
    begin
      cxGridDBTableView1.DataController.DataSource.DataSet.Close;
    end
    else if pg_ctl.ActivePage = tab3 then
    begin
      cxGrid3DBBandedTableView1.DataController.DataSource.DataSet.Close;
    end;
  except
    on e: Exception do
      msg_err('出错了：' + e.Message);
  end;
end;

procedure TcheckInOutF.btn_exportClick(Sender: TObject);
var
  b: Boolean;
  SaveDialog: TSaveDialog;
begin

  try
    // 清空表格数据
    if pg_ctl.ActivePage = tab1 then
    begin
      if cxGrid1DBTableView1.DataController.DataSource.DataSet.IsEmpty then
      begin
        msg_info('没有数据...');
        Exit;
      end;
      b := ExportData(cxGrid1);
    end
    else if pg_ctl.ActivePage = tab2 then
    begin
      if cxGridDBTableView1.DataController.DataSource.DataSet.IsEmpty then
      begin
        msg_info('没有数据...');
        Exit;
      end;
      b := ExportData(cxGrid2);
    end
    else if pg_ctl.ActivePage = tab3 then
    begin
      if cxGrid3DBBandedTableView1.DataController.DataSource.DataSet.IsEmpty
      then
      begin
        msg_info('没有数据...');
        Exit;
      end;
      b := ExportData(cxGrid3);
    end;

    if b then
    begin
      msg_info('导出完成...');
    end
    else if b then
    begin
      msg_info('导出未完成...');
    end;
  except
    on e: Exception do
      msg_err('出错了：' + e.Message);
  end;

end;

procedure TcheckInOutF.btn_tjClick(Sender: TObject);
var
  sql: string;
  yf, bm, name, type1: string;
  I: Integer;
begin
  try
    yf := FormatDateTime('yyyy-mm', dtp1.Date);
    bm := Trim(cbb_bm.Text);
    name := Trim(cbb_name.Text);

    if bm = '' then
    begin
      msg_info('请选择部门');

      if cbb_bm.CanFocus then
        cbb_bm.Focused;

      Exit;
    end;

    paintBox.Canvas.TextOut(5, 10, '开始统计...');

    if pg_ctl.ActivePage = tab1 then
    begin
      sql := 'EXEC SP_KaoQin_tj ''' + yf + ''',''' + bm + ''',''' +
        name + ''' ';

      DataSet_Open(dSet_ckInOut, sql);

      try
        // 为 突出显示已修改数据 做准备
        if Assigned(QJ_List) then
          FreeAndNil(QJ_List);

        if Assigned(JB_List) then
          FreeAndNil(JB_List);

        if Assigned(ZC_List) then
          FreeAndNil(ZC_List);

        ZC_List := TStringList.Create;
        JB_List := TStringList.Create;
        QJ_List := TStringList.Create;

        {
          -- 此存储过程返回的表结构。某个月，某个部门的已修改考勤记录。
          -- badgenumber  days
          -- 000000784	D02,D04
        }
        type1 := 'QJ';
        sql := 'EXEC SP_get_KaoQin_modifid_Days ''' + yf + ''',''' + bm +
          ''',''' + type1 + ''' ';
        GetList(QJ_List, sql, 'badgenumber', 'days');

        type1 := 'JB';
        sql := 'EXEC SP_get_KaoQin_modifid_Days ''' + yf + ''',''' + bm +
          ''',''' + type1 + ''' ';
        GetList(JB_List, sql, 'badgenumber', 'days');

        type1 := 'ZC';
        sql := 'EXEC SP_get_KaoQin_modifid_Days ''' + yf + ''',''' + bm +
          ''',''' + type1 + ''' ';
        GetList(ZC_List, sql, 'badgenumber', 'days');

        // for I := 0 to QJ_List.Count - 1 do
        // begin
        // ValueListEditor1.InsertRow(QJ_List.Names[I],
        // QJ_List.ValueFromIndex[I], true);
        // end;

      except
        on e: Exception do
          msg_err('突出显示已修改数据失败');
      end;
    end
    else if pg_ctl.ActivePage = tab2 then
    begin
      sql := 'EXEC sp_KaoQin_yiDong_tj ''' + yf + ''',''' + bm + ''',''' +
        name + ''' ';

      DataSet_Open(dm.dSet_pubForGrid, sql);
    end
    else if pg_ctl.ActivePage = tab3 then
    begin
      sql := 'EXEC SP_KaoQin_KaoHe_tj ''' + yf + ''',''' + bm + ''',''' +
        name + ''' ';

      DataSet_Open(dSet_kaohe, sql);
    end;

    paintBox.Canvas.TextOut(5, 10, '统计完成...');

  except
    on e: Exception do
    begin
      msg_err('出错了：' + e.Message);
      paintBox.Canvas.TextOut(5, 10, '出错了...' + e.Message);
    end;
  end;
end;

procedure TcheckInOutF.cxGrid1DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  bm, badgeNO, ckDay, day, sql: string;
begin
  // 点击当前单元格，显示详情

  day := UpperCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName);

  ckDay := FormatDateTime('yyyy-mm', dtp1.Date) + '-' + RightStr(day, 2);
  bm := cbb_bm.Text;
  badgeNO := UpperCase(ACellViewInfo.GridRecord.DisplayTexts
    [cxGrid1DBTableView1badgenumber.index]);

  sql := 'SELECT u.name,ck.* FROM checkinout_modified ck  ' +
    ' LEFT JOIN user_departments_v u ' + ' ON ck.badgenumber=u.badgenumber ' +
    ' WHERE u.deptName=''' + bm + ''' AND ck.badgenumber=''' + badgeNO +
    ''' AND ck.check_time=''' + ckDay + ''' ';
  DataSet_Open(dSet_tip, sql);

end;

procedure TcheckInOutF.cxGrid1DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  day, badgeNO, daysQJ, daysJB, daysZC: string;
begin
  // 将人工修改过的记录标记出来
  // 这个函数怎么运行的? 扫描全部单元格？
  // -- badgenumber  days
  // - -000000784 D02, D04
  try
    day := UpperCase(TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName);

    badgeNO := UpperCase(AViewInfo.GridRecord.DisplayTexts
      [cxGrid1DBTableView1badgenumber.index]);

    daysQJ := QJ_List.Values[badgeNO];
    daysJB := JB_List.Values[badgeNO];
    daysZC := ZC_List.Values[badgeNO];

    if Pos(day, daysQJ) > 0 then
    begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clWindow;
    end
    else if Pos(day, daysJB) > 0 then
    begin
      ACanvas.Brush.Color := clBlue;
      ACanvas.Font.Color := clWindow;
    end
    else if Pos(day, daysZC) > 0 then
    begin
      ACanvas.Brush.Color := clLime;
      ACanvas.Font.Color := clBlack;
    end;

  except
  end;
end;

// 双击弹出考勤修改页面
procedure TcheckInOutF.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  badgenumber, check_time, type1, type2, memo, work_num: string;
  sql, selectedField: string;
begin
  if not dSet_ckInOut.Active then
  begin
    msg_info('当前无数据');
    Exit;
  end;

  try
    try
      // 用来查 数据
      badgenumber := Trim(dSet_ckInOutbadgenumber.AsString);
      selectedField :=
        RightStr(cxGrid1DBTableView1.Controller.FocusedColumn.Caption, 2);
      check_time := Trim(dSet_ckInOutyf.AsString) + '-' + Trim(selectedField);

      // 未来日期不可修改
      sql := 'SELECT CONVERT(CHAR(15), GETDATE(),23) AS today';
      DataSet_Open(dm.dSet_pub, sql);
      if dm.dSet_pub.FieldByName('today').AsString <= check_time then
      begin
        msg_info('暂时不能修改未来的数据。');
        Exit;
      end;

      sql := 'SELECT * FROM checkinout_modified ' + ' WHERE badgenumber=''' +
        badgenumber + ''' AND check_time=''' + check_time + ''' ';
      DataSet_Open(dSet_ckInOut_m, sql);

      checkInOut_modify_F := TcheckInOut_modify_F.Create(nil);
      // 系统填写：姓名 部门 员工编号 签到日期
      checkInOut_modify_F.edt_name.Text := Trim(dSet_ckInOutname.AsString);
      checkInOut_modify_F.edt_bm.Text := Trim(dSet_ckInOutdeptName.AsString);
      dSet_ckInOut_m.Edit;
      dSet_ckInOut_mbadgenumber.AsString := badgenumber;
      dSet_ckInOut_mcheck_time.AsString := check_time;

      // 人工填写 分类 类型 工时 备注

      // work_num := Trim(dSet_ckInOut_m.FieldByName('work_num').AsString);
      // if work_num = '' then
      // begin
      // dSet_ckInOut_mwork_num.AsString := '1';
      // end;

      // 类型
      with checkInOut_modify_F do
      begin
        // 默认为数据库中数据
        type1 := dSet_ckInOut_m.FieldByName('type1').AsString;
        type2 := dSet_ckInOut_m.FieldByName('type2').AsString;

        if type1 = 'JB' then // 加班
        begin
          radioG.ItemIndex := 1;
        end
        else if type1 = 'QJ' then // 请假
        begin
          radioG.ItemIndex := 2;
        end
        else
        begin
          radioG.ItemIndex := 0;
        end;

        dbCbb_type.Text := type2;
      end;

      checkInOut_modify_F.Visible := False;
      checkInOut_modify_F.ShowModal;
    except
      on e: Exception do
      begin
        msg_err('出错了：' + e.Message);
        FreeAndNil(checkInOut_modify_F);
      end;
    end;
  finally
  end;
end;

procedure TcheckInOutF.dSet_tiptype1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'ZC' then
  begin
    Text := '正常';
  end
  else if Sender.AsString = 'JB' then
  begin
    Text := '加班';
  end
  else if Sender.AsString = 'QJ' then
  begin
    Text := '请假';
  end;
end;

procedure TcheckInOutF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TcheckInOutF.FormCreate(Sender: TObject);
begin
  checkInOutF.Position := poScreenCenter;
  checkInOutF.WindowState := wsMaximized;
end;

procedure TcheckInOutF.FormShow(Sender: TObject);
begin
  dtp1.Format := 'yyyy-MM';
  dtp1.Date := StartOfTheMonth(Now);

  tab1.Show;
end;

procedure TcheckInOutF.cbb_bmKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TcheckInOutF.cbb_nameDropDown(Sender: TObject);
var
  sql: string;
begin
  sql := 'SELECT distinct name FROM user_departments_v WHERE deptName=''' +
    Trim(cbb_bm.Text) + ''' ';
  DropDown_(dm.dSet_pub, cbb_name, sql, 'name');
end;

end.
