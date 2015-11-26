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
  Vcl.ValEdit;

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
    dSet_ckInOut_mbadgenumber: TStringField;
    dSet_ckInOut_mcheck_time: TStringField;
    dSet_ckInOut_mwork_num: TStringField;
    dSet_ckInOut_mtype_: TStringField;
    dSet_ckInOut_mczy: TStringField;
    dSet_ckInOut_mmemo: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_bg: TcxStyle;
    cxStyle_cont: TcxStyle;
    cxGrid1DBTableView1NO: TcxGridDBColumn;
    dSet_ckInOutNO: TLargeintField;
    btn_empty: TButton;
    ValueListEditor1: TValueListEditor;
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
  private
    drawCellList: TStringList;
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
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;
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
  if cxGrid1DBTableView1.DataController.DataSource.DataSet.IsEmpty then
  begin
    msg_info('没有数据...');
    Exit;
  end;

  b := ExportData(cxGrid1);
  if b then
  begin
    msg_info('导出完成...');
  end
  else if b then
  begin
    msg_info('导出未完成...');
  end;
end;

procedure TcheckInOutF.btn_tjClick(Sender: TObject);
var
  sql: string;
  yf, bm: string;
  I: Integer;
begin
  try
    paintBox.Canvas.TextOut(5, 10, '开始统计...');

    yf := FormatDateTime('yyyy-mm', dtp1.Date);

    bm := Trim(cbb_bm.Text);

    if bm = '' then
    begin
      msg_info('请选择部门');

      if cbb_bm.CanFocus then
        cbb_bm.Focused;

      Exit;
    end;

    sql := 'EXEC SP_KaoQin_tj ''' + yf + ''',''' + bm + ''' ';

    DataSet_Open(dSet_ckInOut, sql);

    paintBox.Canvas.TextOut(5, 10, '统计完成...');

    try
      // 为 突出显示已修改数据 做准备
      if Assigned(drawCellList) then
        FreeAndNil(drawCellList);

      drawCellList := TStringList.Create;
      {
        -- 此存储过程返回的表结构。某个月，某个部门的已修改考勤记录。
        -- badgenumber  days
        -- 000000784	D02,D04
      }
      sql := 'EXEC SP_get_KaoQin_modifid_Days ''' + yf + ''',''' + bm + ''' ';

      GetList(drawCellList, sql, 'badgenumber', 'days');

      // for I := 0 to drawCellList.Count - 1 do
      // begin
      // ValueListEditor1.InsertRow(drawCellList.Names[I],
      // drawCellList.ValueFromIndex[I], true);
      // end;

    except
      on e: Exception do
        msg_err('突出显示已修改数据失败');
    end;
  except
    on e: Exception do
    begin
      msg_err('出错了：' + e.Message);
      paintBox.Canvas.TextOut(5, 10, '出错了...' + e.Message);
    end;
  end;
end;

procedure TcheckInOutF.cxGrid1DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  field, badgeNO, daysFromDB: string;
begin
  // 将人工修改过的记录标记出来
  // 这个函数怎么运行的? 扫描全部单元格？
  try
    // field := TcxGridDBColumn(AViewInfo.Item).Caption;
    field := UpperCase(TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName);

    badgeNO := UpperCase(AViewInfo.GridRecord.DisplayTexts
      [cxGrid1DBTableView1badgenumber.index]);

    daysFromDB := drawCellList.Values[badgeNO];

    if Pos(field, daysFromDB) > 0 then
    begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clBlack;
    end;
  except
  end;
end;

// 双击弹出考勤修改页面
procedure TcheckInOutF.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  selectedField, badgenumber, ck_rq, sql, type_: string;
  memo, work_num: string;
begin
  if not dSet_ckInOut.Active then
  begin
    msg_info('当前无数据');
    Exit;
  end;

  try
    try
      checkInOut_modify_F := TcheckInOut_modify_F.Create(checkInOut_modify_F);

      DataSet_Open(dSet_ckInOut_m, 'SELECT TOP 0 * FROM checkInOut_modified');
      dSet_ckInOut_m.Append;

      badgenumber := Trim(dSet_ckInOutbadgenumber.AsString);

      selectedField :=
        RightStr(cxGrid1DBTableView1.Controller.FocusedColumn.Caption, 2);
      ck_rq := Trim(dSet_ckInOutyf.AsString) + '-' + Trim(selectedField);

      sql := 'SELECT top 1 type_, memo, work_num FROM checkInOut_modified WHERE check_time='''
        + ck_rq + ''' AND badgenumber = ''' + badgenumber + ''' ';
      DataSet_Open(dm.dSet_pub, sql);

      type_ := Trim(dm.dSet_pub.FieldByName('type_').AsString);
      memo := Trim(dm.dSet_pub.FieldByName('memo').AsString);
      work_num := Trim(dm.dSet_pub.FieldByName('work_num').AsString);
      // 签到日期
      dSet_ckInOut_mcheck_time.AsString := ck_rq;
      // 备注
      dSet_ckInOut_mmemo.AsString := memo;
      // 工时
      if work_num = '' then
        dSet_ckInOut_mwork_num.AsString := '1'
      else
        dSet_ckInOut_mwork_num.AsString := work_num;

      // 姓名
      checkInOut_modify_F.edt_name.Text := Trim(dSet_ckInOutname.AsString);
      // 员工编号
      dSet_ckInOut_mbadgenumber.AsString :=
        Trim(dSet_ckInOutbadgenumber.AsString);

      // 类型
      with checkInOut_modify_F do
      begin
        sql := 'SELECT distinct type_ FROM ck_type ORDER BY type_';
        DropDown_DB(dm.dSet_pub, dbCbb_type, sql, 'type_');

        dbCbb_type.Text := type_;
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

  DropDown_(dm.dSet_pub, cbb_bm,
    'SELECT deptname FROM departments ORDER BY deptname DESC', 'deptname');
end;

end.
