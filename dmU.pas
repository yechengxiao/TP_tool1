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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

end.
