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
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB, StrUtils;

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
    procedure btn_tjClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb_bmDropDown(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    bmList: TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  checkInOutF: TcheckInOutF;

implementation

uses dmU, utilU, mainU, checkInOut_modify_U;
{$R *.dfm}

procedure TcheckInOutF.btn_tjClick(Sender: TObject);
var
  sql: string;
  yf, bm: string;
begin
  try
    paintBox.Canvas.TextOut(5, 10, '开始统计...');

    yf := FormatDateTime('yyyy-mm', dtp1.Date);

    bm := cbb_bm.Text;

    sql := 'EXEC SP_KaoQin_tj ''' + yf + ''',''' + bm + ''' ';

    DataSet_Open(dSet_ckInOut, sql);

    paintBox.Canvas.TextOut(5, 10, '统计完成...');
  except
    on e: Exception do
    begin
      Application.MessageBox(PChar('出错了：' + e.Message), '提示',
        MB_OK + MB_ICONSTOP);
      paintBox.Canvas.TextOut(5, 10, '出错了...');
    end;
  end;
end;

procedure TcheckInOutF.cbb_bmDropDown(Sender: TObject);
var
  sql: string;
begin
  sql := 'SELECT deptName FROM departments';

  // DropDown_(dm.dSet_pub,);

  // DataSet_Open(dm.dSet_pub, sql);
end;

procedure TcheckInOutF.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  selectedField: string;
begin
  if not dSet_ckInOut.Active then
  begin
    Application.MessageBox(PChar('当前无数据'), '提示', MB_OK);
    Exit;
  end;

  // 双击弹出考勤修改页面
  try
    try
      checkInOut_modify_F := TcheckInOut_modify_F.Create(checkInOut_modify_F);

      DataSet_Open(dSet_ckInOut_m, 'SELECT TOP 0 * FROM checkInOut_modified');
      dSet_ckInOut_m.Append;
      // 姓名
      checkInOut_modify_F.edt_name.Text := Trim(dSet_ckInOutname.AsString);
      // 员工编号
      dSet_ckInOut_mbadgenumber.AsString :=
        Trim(dSet_ckInOutbadgenumber.AsString);
      // 工时
      dSet_ckInOut_mwork_num.AsString := '1';

      selectedField := cxGrid1DBTableView1.Controller.FocusedColumn.Caption;
      selectedField := RightStr(selectedField, 2);

      // 签到日期
      dSet_ckInOut_mcheck_time.AsString := Trim(dSet_ckInOutyf.AsString) + '-' +
        selectedField;

      checkInOut_modify_F.Visible := False;
      checkInOut_modify_F.ShowModal;
    except
      on e: Exception do
      begin
        Application.MessageBox(PChar('出错了：' + e.Message), '提示',
          MB_OK + MB_ICONSTOP);
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

  // bmList := TStringList.Create;
  //
  // GetBM(bmList);

  DropDown_(dm.dSet_pub, cbb_bm,
    'SELECT deptname FROM departments ORDER BY deptname DESC', 'deptname');
end;

end.
