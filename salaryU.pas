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
    dSet_ckInOut: TADODataSet;
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
    dSet_ckInOutNO: TLargeintField;
    dSource_ckInOut: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_bg: TcxStyle;
    cxStyle_cont: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    lbl: TLabel;
    dtp2: TDateTimePicker;
    btn_template: TButton;
    tab1: TTabSheet;
    tab2: TTabSheet;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salaryF: TsalaryF;

implementation

uses utilU;
{$R *.dfm}

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
