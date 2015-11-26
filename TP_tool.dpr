program TP_tool;

uses
  Vcl.Forms, System.SysUtils,
  mainU in 'mainU.pas' {mainF} ,
  dmU in 'dmU.pas' {dm: TDataModule} ,
  utilU in 'utilU.pas',
  startU in 'startU.pas' {startF} ,
  checkInOutU in 'checkInOutU.pas' {checkInOutF} ,
  checkInOut_modify_U in 'checkInOut_modify_U.pas' {checkInOut_modify_F};

{$R *.res}

var
  sql, ver: string;
  stau, limit, stau_memo: string;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdm, dm);
  startF := TstartF.Create(startF); // �����������洰��

  ver := '20151123_dev';

  // ver := '2015112sd3_dev';

  startF.Show; // ��ʾ�������洰��
  startF.Update;

  startF.paintBox.Canvas.TextOut(0, 0, ' ' + UpperCase(ver));

  sql := 'SELECT TOP 1 status, limit_num, status_memo FROM tp_tool_ver WHERE ver='''
    + ver + ''' ';

  DataSet_Open(dm.dSet_pub, sql);

  stau := Trim(dm.dSet_pub.FieldByName('status').AsString);
  stau_memo := dm.dSet_pub.FieldByName('status_memo').AsString;
  limit := dm.dSet_pub.FieldByName('limit_num').AsString; // TODO ��¼������

  if stau = '1' then
  begin
    // Application.CreateForm(TmainF, mainF);

    Application.CreateForm(TcheckInOutF, checkInOutF);

    // checkInOutF.Show;

    Delay(2500); // �������洰����ʾһ����
    startF.Hide; // �����������洰��
    startF.Free; // �ͷ��������洰��
    Application.Run;
  end
  else
  begin
    if stau_memo <> '' then
    begin
      // startF.lbl_ver.Caption := stau_memo + ' ���Զ��ر�...';

      startF.paintBox.Canvas.TextOut(0, 0, ' ' + stau_memo + ' ���Զ��ر�...');

    end
    else
    begin
      // startF.lbl_ver.Caption := '�˰汾��ͣ��!! ' + ' ���Զ��ر�...';

      startF.paintBox.Canvas.TextOut(0, 0, ' ' + '�˰汾��ͣ��!! ' + ' ���Զ��ر�...');
    end;

    Delay(5000);
    Application.Terminate;
  end;

end.
