unit changeCardNoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  cxNavigator, Data.DB, cxDBData, cxClasses, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB;

type
  TchangeCardNoF = class(TForm)
    pan_up: TPanel;
    lbl3: TLabel;
    lbl_msg: TLabel;
    edit_name: TEdit;
    btn_select: TButton;
    pan_down: TPanel;
    pg_ctl: TPageControl;
    tab_lostCard: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_content: TcxStyle;
    cxStyle_header: TcxStyle;
    cxStyle_footer: TcxStyle;
    cxStyle_bg: TcxStyle;
    Label1: TLabel;
    edit_userId: TEdit;
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    ADODataSet1deptName: TWideStringField;
    ADODataSet1badgenumber: TWideStringField;
    ADODataSet1name: TWideStringField;
    ADODataSet1sys_card_no: TIntegerField;
    ADODataSet1batch: TWideStringField;
    ADODataSet1is_ok: TIntegerField;
    ADODataSet1receive_date: TStringField;
    cxGrid1DBTableView1deptName: TcxGridDBColumn;
    cxGrid1DBTableView1badgenumber: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1sys_card_no: TcxGridDBColumn;
    cxGrid1DBTableView1batch: TcxGridDBColumn;
    cxGrid1DBTableView1is_ok: TcxGridDBColumn;
    cxGrid1DBTableView1receive_date: TcxGridDBColumn;
    tab_record: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1badgenumber: TcxGridDBColumn;
    cxGridDBTableView1Column2cardIdOld: TcxGridDBColumn;
    cxGridDBTableView1Column3czrq: TcxGridDBColumn;
    cxGridDBTableView1Column4cardIDNew: TcxGridDBColumn;
    cxGridDBTableView1Column1msg: TcxGridDBColumn;
    procedure btn_selectClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure edit_userIdKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  changeCardNoF: TchangeCardNoF;

implementation

uses dmU, utilU, changeCardNo_modify_U;

{$R *.dfm}

procedure TchangeCardNoF.btn_selectClick(Sender: TObject);
var
  badgenumber, name, sql: string;
begin
  try
    lbl_msg.Caption := '开始查询...';

    badgenumber := Trim(edit_userId.Text);
    name := Trim(edit_name.Text);

    if pg_ctl.ActivePage = tab_lostCard then
    begin
      // id name type noNew noOld
      sql := 'EXEC SP_changeCardNO ''' + badgenumber + ''',''' + name +
        ''',''select'','''','''' ';

      DataSet_Open(ADODataSet1, sql);
    end
    else if pg_ctl.ActivePage = tab_record then
    begin

      if badgenumber <> '' then
        badgenumber := ' WHERE badgenumber LIKE ''%' + badgenumber + '%'' ';

      sql := 'SELECT * FROM TPchangeCardNORecord ' + badgenumber +
        ' ORDER BY badgenumber';

      DataSet_Open(dm.dSet_pubForGrid, sql);
    end;

    lbl_msg.Caption := '查询完成...';
  except
    on e: Exception do
    begin
      Application.MessageBox(PChar('出错了：' + e.Message), '提示',
        MB_OK + MB_ICONSTOP);
      lbl_msg.Caption := '';
    end;
  end;
end;

procedure TchangeCardNoF.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if not ADODataSet1.Active then
    Exit;

  try
    try
      if not Assigned(changeCardNo_modify_F) then
        changeCardNo_modify_F := TchangeCardNo_modify_F.Create(nil);

      with changeCardNo_modify_F do
      begin
        name := ADODataSet1.FieldByName('name').AsString;
        badgenumber := ADODataSet1.FieldByName('badgenumber').AsString;
        cardNoOld := ADODataSet1.FieldByName('sys_card_no').AsString;
        cardNoNew := '';
      end;

      changeCardNo_modify_F.ShowModal;
    except
      on e: Exception do
      begin
        Application.MessageBox(PChar('出错了：' + e.Message), '提示',
          MB_OK + MB_ICONSTOP);
        lbl_msg.Caption := '';
      end;
    end;

    btn_selectClick(Sender);
  finally
    FreeAndNil(changeCardNo_modify_F);
  end;

end;

procedure TchangeCardNoF.edit_userIdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn_select.OnClick(Sender);

end;

procedure TchangeCardNoF.FormShow(Sender: TObject);
begin
  tab_lostCard.Show;
end;

end.
