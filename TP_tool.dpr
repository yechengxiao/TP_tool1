program TP_tool;

uses
  Vcl.Forms,
  mainU in 'mainU.pas' {mainF},
  dmU in 'dmU.pas' {dm: TDataModule},
  utilU in 'utilU.pas',
  startU in 'startU.pas' {startF},
  checkInOutU in 'checkInOutU.pas' {checkInOutF},
  checkInOut_modify_U in 'checkInOut_modify_U.pas' {checkInOut_modify_F};

{$R *.res}

var
  sql, ver: string;
  stau, limit, stau_memo: string;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdm, dm);
  startF := TstartF.Create(startF); // 创建启动画面窗口

  ver := '20151123';

  startF.lbl_ver.Caption := ver;
  startF.Show; // 显示启动画面窗口
  startF.Update;

  sql := 'SELECT TOP 1 status, limit_num, status_memo FROM tp_tool_ver WHERE ver='''
    + ver + ''' ';

  DataSet_Open(dm.dSet_pub, sql);

  stau := dm.dSet_pub.FieldByName('status').AsString;
  stau_memo := dm.dSet_pub.FieldByName('status_memo').AsString;
  limit := dm.dSet_pub.FieldByName('limit_num').AsString; // TODO 登录数限制

  if stau = '1' then
  begin
   // Application.CreateForm(TmainF, mainF);

    Application.CreateForm(TcheckInOutF, checkInOutF);

   // checkInOutF.Show;

    Delay(2500); // 启动画面窗口显示一秒钟
    startF.Hide; // 隐藏启动画面窗口
    startF.Free; // 释放启动画面窗口
    Application.Run;
  end
  else
  begin
    if stau_memo <> '' then
      startF.lbl_ver.Caption := stau_memo
    else
      startF.lbl_ver.Caption := '此版本已停用...';

    Delay(5000);
    Application.Terminate;
  end;

end.
