unit mainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls;

type
  TmainF = class(TForm)
    PageControl1: TPageControl;
    tab1: TTabSheet;
    pan_down: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1create_operator: TcxGridDBColumn;
    cxGrid1DBTableView1checktime: TcxGridDBColumn;
    cxGrid1DBTableView1chongZhi_count: TcxGridDBColumn;
    cxGrid1DBTableView1tuiKuan_count: TcxGridDBColumn;
    cxGrid1DBTableView1chongZhi_amount: TcxGridDBColumn;
    cxGrid1DBTableView1tuiKuan_amount: TcxGridDBColumn;
    cxGrid1DBTableView1faKa_count: TcxGridDBColumn;
    cxGrid1DBTableView1tuiKa_count: TcxGridDBColumn;
    cxGrid1DBTableView1tuiKa_amount: TcxGridDBColumn;
    cxGrid1DBTableView1cost_amount: TcxGridDBColumn;
    cxGrid1DBTableView1manage_amount: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_content: TcxStyle;
    cxStyle_header: TcxStyle;
    cxStyle_footer: TcxStyle;
    cxStyle_bg: TcxStyle;
    tab2: TTabSheet;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    pan_up: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl_msg: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    edit_czy: TEdit;
    btn_tj: TButton;
    btn_export: TButton;
    timer_disDBCon: TTimer;
    cxGrid1DBTableView1hj: TcxGridDBColumn;
    procedure btn_tjClick(Sender: TObject);
    procedure btn_exportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure timer_disDBConTimer(Sender: TObject);
    procedure cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText
      (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainF: TmainF;

implementation

uses dmU, utilU, DateUtils, cxGridExportLink;
{$R *.dfm}

procedure TmainF.btn_exportClick(Sender: TObject);
var
  b: Boolean;
  SaveDialog: TSaveDialog;
begin
  if dm.dSet_carCashSZ.IsEmpty then
  begin
    Application.MessageBox('没有数据...', '提示', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  b := ExportData(cxGrid1);
  if b then
  begin
    Application.MessageBox('导出完成...', '提示', MB_OK + MB_ICONINFORMATION);
  end
  else if b then
  begin
    Application.MessageBox('导出未完成...', '提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TmainF.btn_tjClick(Sender: TObject);
var
  sql: string;
  time1, time2, czy: string;
begin
  try
    lbl_msg.Caption := '开始统计...';

    time1 := FormatDateTime('yyyy-mm-dd', dtp1.Date);
    time2 := FormatDateTime('yyyy-mm-dd', dtp2.Date);
    czy := edit_czy.Text;

    // 饭卡收支统计
    sql := 'EXEC SP_pos_carcashsz_tj ''' + time1 + ''',''' + time2 + ''',''' +
      czy + ''' ';

    DataSet_Open(dm.dSet_carCashSZ, sql);

    lbl_msg.Caption := '统计完成...';
  except
    on e: Exception do
    begin
      Application.MessageBox(PChar('出错了：' + e.Message), '提示',
        MB_OK + MB_ICONSTOP);
      lbl_msg.Caption := '';
    end;
  end;
end;

procedure TmainF.
  cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText
  (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := '合计';
end;

procedure TmainF.FormCreate(Sender: TObject);
begin
  mainF.Position := poScreenCenter;
  mainF.WindowState := wsMaximized; // 最大化
end;

procedure TmainF.FormShow(Sender: TObject);
begin
  dtp1.Date := StartOfTheMonth(Now);
  dtp2.Date := EndOfTheMonth(Now);

  // =====将变量赋值=====

  // 饭卡收支统计
  tab1.Show;
  tab1.Caption := '饭卡收支统计';
  lbl1.Caption := '日期';
  lbl2.Caption := '至';
  lbl3.Caption := '操作员';
  lbl_msg.Caption := '';
  btn_tj.Caption := '统计';
  btn_export.Caption := '导出';
  mainF.Caption := '主页';
  edit_czy.ReadOnly := True;
  edit_czy.Color := clScrollBar;

  // 月度考勤
  tab2.Caption := 'TODO';
  { 月度考勤
    CREATE PROCEDURE sp_checkInOut_tj(
    @month1 varchar(30),
    @month2 varchar(30),
    @deptName varchar(50)
    )
  }
end;

procedure TmainF.timer_disDBConTimer(Sender: TObject);
begin
  // TODO 断开数据库连接
  // Application.MessageBox('timer', '提示', MB_OK + MB_ICONINFORMATION);

  // case Application.MessageBox('是否断开数据库连接', '询问',
  // MB_OKCANCEL + MB_ICONQUESTION) of
  // IDOK:
  // begin
  //
  // end;
  // end;

end;

end.
