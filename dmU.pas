unit dmU;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  Tdm = class(TDataModule)
    DB_Con: TADOConnection;
    dSet_pub: TADODataSet;
    dSource_pub: TDataSource;
    dSet_carcashsz: TADODataSet;
    dSource_carcashsz: TDataSource;
    dSet_carcashszcreate_operator: TStringField;
    dSet_carcashszchecktime: TStringField;
    dSet_carcashszchongZhi_count: TIntegerField;
    dSet_carcashsztuiKuan_count: TIntegerField;
    dSet_carcashszchongZhi_amount: TBCDField;
    dSet_carcashsztuiKuan_amount: TBCDField;
    dSet_carcashszfaKa_count: TIntegerField;
    dSet_carcashsztuiKa_count: TIntegerField;
    dSet_carcashsztuiKa_amount: TBCDField;
    dSet_carcashszcost_amount: TBCDField;
    dSet_carcashszmanage_amount: TBCDField;
    dSet_carcashszhj: TBCDField;
    DB_com: TADOCommand;
    dSet_pubForGrid: TADODataSet;
    dSource_pubForGrid: TDataSource;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses utilU;
{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure Tdm.Timer1Timer(Sender: TObject);
begin
  try
    if dSet_pub.Active then
      dSet_pub.Close;
  except
    on E: Exception do
      msg_info('dSet_pub πÿ±’ ß∞‹');
  end;
end;

end.
