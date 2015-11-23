program TP_tool;

uses
  Vcl.Forms,
  mainU in 'mainU.pas' {mainF} ,
  dmU in 'dmU.pas' {dm: TDataModule} ,
  utilU in 'utilU.pas',
  startU in 'startU.pas' {startF};

{$R *.res}

var
  sql: string;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdm, dm);
  startF := TstartF.Create(startF); // �����������洰��
  startF.lbl_ver.Caption := '20151116';
  startF.Show; // ��ʾ�������洰��
  startF.Update;

  sql := 'SELECT TOP 1 status FROM tp_tool_ver WHERE ver=''' +
    startF.lbl_ver.Caption + ''' ';

  DataSet_Open(dm.dSet_pub, sql);

  if dm.dSet_pub.FieldByName('status').AsString = '1' then
  begin
    Application.CreateForm(TmainF, mainF);

    Delay(2500); // �������洰����ʾһ����
    startF.Hide; // �����������洰��
    startF.Free; // �ͷ��������洰��
    Application.Run;
  end
  else
  begin
    startF.lbl_ver.Caption := '�˰汾��ͣ��...';
    Delay(3000);
    Application.Terminate;
  end;

end.
