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
  startF := TstartF.Create(startF); // 创建启动画面窗口
  startF.lbl_ver.Caption := '20151116';
  startF.Show; // 显示启动画面窗口
  startF.Update;

  sql := 'SELECT TOP 1 status FROM tp_tool_ver WHERE ver=''' +
    startF.lbl_ver.Caption + ''' ';

  DataSet_Open(dm.dSet_pub, sql);

  if dm.dSet_pub.FieldByName('status').AsString = '1' then
  begin
    Application.CreateForm(TmainF, mainF);

    Delay(2500); // 启动画面窗口显示一秒钟
    startF.Hide; // 隐藏启动画面窗口
    startF.Free; // 释放启动画面窗口
    Application.Run;
  end
  else
  begin
    startF.lbl_ver.Caption := '此版本已停用...';
    Delay(3000);
    Application.Terminate;
  end;

end.
