unit salaryU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxClasses,
  Data.Win.ADODB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, System.DateUtils;

type
  TsalaryF = class(TForm)
    pan_up: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    paintBox: TPaintBox;
    lbl_name: TLabel;
    dtp1: TDateTimePicker;
    btn_tj: TButton;
    btn_export: TButton;
    cbb_bm: TComboBox;
    cbb_name: TComboBox;
    pan_down: TPanel;
    pg_ctl: TPageControl;
    tab_mx: TTabSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_bg: TcxStyle;
    cxStyle_cont: TcxStyle;
    cxGrid_mx: TcxGrid;
    cxGrid_mxDBTableView1: TcxGridDBTableView;
    cxGrid_mxLevel1: TcxGridLevel;
    lbl: TLabel;
    dtp2: TDateTimePicker;
    btn_template: TButton;
    tab1: TTabSheet;
    tab2: TTabSheet;
    dSet_salary: TADODataSet;
    dSource_salary: TDataSource;
    dSet_salaryname: TWideStringField;
    dSet_salarydeptName: TWideStringField;
    dSet_salaryyf: TStringField;
    dSet_salarydeptID: TStringField;
    dSet_salarybadgenumber: TStringField;
    dSet_salarygangWeiGZ: TBCDField;
    dSet_salarytongXunBT: TBCDField;
    dSet_salaryjiangJin: TBCDField;
    dSet_salaryqiTaFa: TBCDField;
    dSet_salarynianGongGZ: TBCDField;
    dSet_salaryxueLiJT: TBCDField;
    dSet_salaryzhiChengBT: TBCDField;
    dSet_salaryyaoFei: TBCDField;
    dSet_salaryjiXiaoJJ: TBCDField;
    dSet_salarygeLeiBT: TBCDField;
    dSet_salaryfuZhuJT: TBCDField;
    dSet_salaryzhiBanFei: TBCDField;
    dSet_salarygaoWenFei: TBCDField;
    dSet_salaryjiaBanNum: TBCDField;
    dSet_salaryjiaBanFei: TBCDField;
    dSet_salaryyeCanFei: TBCDField;
    dSet_salaryqiTaBF: TBCDField;
    dSet_salaryshuBaoFei: TBCDField;
    dSet_salaryjia1: TBCDField;
    dSet_salaryjia2: TBCDField;
    dSet_salaryjia3: TBCDField;
    dSet_salarysuoDeShui: TBCDField;
    dSet_salaryyangLao: TBCDField;
    dSet_salaryshiYe: TBCDField;
    dSet_salarygongJi: TBCDField;
    dSet_salaryyiBao: TBCDField;
    dSet_salaryshiJia: TBCDField;
    dSet_salarybingJia: TBCDField;
    dSet_salarychanHunSangJia: TBCDField;
    dSet_salaryqiTaKou: TBCDField;
    dSet_salaryshuiDian: TBCDField;
    dSet_salaryfangZu: TBCDField;
    dSet_salaryshouJi: TBCDField;
    dSet_salarydaiKou: TBCDField;
    dSet_salarygongHui: TBCDField;
    dSet_salarynianJin: TBCDField;
    dSet_salaryjian1: TBCDField;
    dSet_salaryjian2: TBCDField;
    dSet_salaryjian3: TBCDField;
    dSet_salaryshiFa: TBCDField;
    dSet_salarymemo: TStringField;
    cxGrid_mxDBTableView1name: TcxGridDBColumn;
    cxGrid_mxDBTableView1deptName: TcxGridDBColumn;
    cxGrid_mxDBTableView1yf: TcxGridDBColumn;
    cxGrid_mxDBTableView1deptID: TcxGridDBColumn;
    cxGrid_mxDBTableView1badgenumber: TcxGridDBColumn;
    cxGrid_mxDBTableView1gangWeiGZ: TcxGridDBColumn;
    cxGrid_mxDBTableView1tongXunBT: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiangJin: TcxGridDBColumn;
    cxGrid_mxDBTableView1qiTaFa: TcxGridDBColumn;
    cxGrid_mxDBTableView1nianGongGZ: TcxGridDBColumn;
    cxGrid_mxDBTableView1xueLiJT: TcxGridDBColumn;
    cxGrid_mxDBTableView1zhiChengBT: TcxGridDBColumn;
    cxGrid_mxDBTableView1yaoFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiXiaoJJ: TcxGridDBColumn;
    cxGrid_mxDBTableView1geLeiBT: TcxGridDBColumn;
    cxGrid_mxDBTableView1fuZhuJT: TcxGridDBColumn;
    cxGrid_mxDBTableView1zhiBanFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1gaoWenFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiaBanNum: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiaBanFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1yeCanFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1qiTaBF: TcxGridDBColumn;
    cxGrid_mxDBTableView1shuBaoFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1jia1: TcxGridDBColumn;
    cxGrid_mxDBTableView1jia2: TcxGridDBColumn;
    cxGrid_mxDBTableView1jia3: TcxGridDBColumn;
    cxGrid_mxDBTableView1suoDeShui: TcxGridDBColumn;
    cxGrid_mxDBTableView1yangLao: TcxGridDBColumn;
    cxGrid_mxDBTableView1shiYe: TcxGridDBColumn;
    cxGrid_mxDBTableView1gongJi: TcxGridDBColumn;
    cxGrid_mxDBTableView1yiBao: TcxGridDBColumn;
    cxGrid_mxDBTableView1shiJia: TcxGridDBColumn;
    cxGrid_mxDBTableView1bingJia: TcxGridDBColumn;
    cxGrid_mxDBTableView1chanHunSangJia: TcxGridDBColumn;
    cxGrid_mxDBTableView1qiTaKou: TcxGridDBColumn;
    cxGrid_mxDBTableView1shuiDian: TcxGridDBColumn;
    cxGrid_mxDBTableView1fangZu: TcxGridDBColumn;
    cxGrid_mxDBTableView1shouJi: TcxGridDBColumn;
    cxGrid_mxDBTableView1daiKou: TcxGridDBColumn;
    cxGrid_mxDBTableView1gongHui: TcxGridDBColumn;
    cxGrid_mxDBTableView1nianJin: TcxGridDBColumn;
    cxGrid_mxDBTableView1jian1: TcxGridDBColumn;
    cxGrid_mxDBTableView1jian2: TcxGridDBColumn;
    cxGrid_mxDBTableView1jian3: TcxGridDBColumn;
    cxGrid_mxDBTableView1shiFa: TcxGridDBColumn;
    cxGrid_mxDBTableView1memo: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_templateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salaryF: TsalaryF;

implementation

uses utilU, dmU;
{$R *.dfm}

procedure TsalaryF.btn_templateClick(Sender: TObject);
var
  bm, yf: string;
  b: Boolean;
begin
  //
  bm := Trim(cbb_bm.Text);
  yf := FormatDateTime('yyyy-mm', dtp1.Date);

  if bm = '' then
  begin
    msg_err('请选择部门');
    Exit;
  end;

  try
    if pg_ctl.ActivePage = tab_mx then
    begin
      // if cxGrid_mxDBTableView1.DataController.DataSource.DataSet.IsEmpty then
      // begin
      // msg_info('没有数据...');
      // Exit;
      // end;

      if msg_query('部门：' + bm + '，月份：' + yf + ' 确定导出模板？') then
      begin
        ExportData(cxGrid_mx);
      end;
      b := ExportData(cxGrid_mx);
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

procedure TsalaryF.FormCreate(Sender: TObject);
begin
  if bm_logined = '人力资源部' then
  begin
    DropDown_(dm.dSet_pub, cbb_bm,
      'SELECT deptname FROM departments ORDER BY deptname DESC', 'deptname');
  end;
  // else
  // begin
  // cbb_bm.Style := csSimple;
  // cbb_bm.Text := bm_logined;
  // end;
end;

procedure TsalaryF.FormShow(Sender: TObject);
var
  dtFormat: string;
begin
  dtFormat := LeftStr(GetDateTimeFormat, 8);

  // 取当前用户设置，短日期格式。
  dtp1.Date := StrToDate(FormatDateTime(dtFormat + '20', IncMonth(Now, -1)));
  dtp2.Date := StrToDate(FormatDateTime(dtFormat + '20', Now));
end;

end.
