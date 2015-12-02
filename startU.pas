unit startU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.StdCtrls;

type
  TstartF = class(TForm)
    Image1: TImage;
    lbl_bm: TLabel;
    edt_pass: TEdit;
    lbl_pass: TLabel;
    cbb_bm: TComboBox;
    btn_login: TButton;
    btn_exit: TButton;
    lbl_msg: TLabel;
    procedure btn_loginClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb_bmKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    stau, limit, stau_memo, ver: string;
    { Public declarations }
  end;

var
  startF: TstartF;

implementation

uses dmU, mainU, utilU, checkInOutU;
{$R *.dfm}

procedure TstartF.btn_loginClick(Sender: TObject);
var
  bm, pass, sql: string;
  logined: Boolean;
begin
  bm := Trim(cbb_bm.Text);
  pass := Trim(edt_pass.Text);

  if (bm = '') or (pass = '') then
  begin
    msg_err('请选择部门，并填写密码 ');
    Exit;
  end;

  sql := 'SELECT TOP 1 status, limit_num, status_memo FROM tp_tool_ver WHERE ver='''
    + ver + ''' ';

  DataSet_Open(dm.dSet_pub, sql);

  stau := Trim(dm.dSet_pub.FieldByName('status').AsString);
  stau_memo := dm.dSet_pub.FieldByName('status_memo').AsString;
  limit := dm.dSet_pub.FieldByName('limit_num').AsString; // TODO 登录数限制

  if (stau = '1') then
  begin

    sql := 'SELECT COUNT(department) is_login FROM user_login WHERE department='''
      + bm + ''' AND pass=''' + pass + '''  ';
    DataSet_Open(dm.dSet_pub, sql);

    logined := False;
    if dm.dSet_pub.FieldByName('is_login').AsString = '1' then
    begin
      logined := True;
    end
    else
    begin
      msg_err('请正确选择部门，并填写正确的密码');
      Exit;
    end;

    if logined then
    begin
      Delay(1500); // 启动画面窗口显示一秒钟
      startF.Hide; // 隐藏启动画面窗口
      startF.Free; // 释放启动画面窗口

      Application.CreateForm(TcheckInOutF, checkInOutF);

      if bm = '人力资源部' then
      begin
        DropDown_(dm.dSet_pub, checkInOutF.cbb_bm,
          'SELECT deptname FROM departments ORDER BY deptname DESC',
          'deptname');
      end
      else
      begin
        checkInOutF.cbb_bm.Style := csSimple;
        checkInOutF.cbb_bm.Text := bm;
      end;

      checkInOutF.Show;
    end;
  end
  else
  begin
    if stau_memo <> '' then
    begin
      lbl_msg.Caption := stau_memo + ' 将自动关闭...';
    end
    else
    begin
      lbl_msg.Caption := '此版本已停用!! ' + ' 将自动关闭...';
    end;

    Delay(5000);
    Application.Terminate;
  end;

end;

procedure TstartF.cbb_bmKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TstartF.btn_exitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TstartF.FormShow(Sender: TObject);
var
  sql: string;
begin
  sql := 'SELECT department FROM user_login ORDER BY department DESC';
  DropDown_(dm.dSet_pub, cbb_bm, sql, 'department');

  ver := '20151202_dev';

  lbl_msg.Caption := UpperCase(ver);
end;

end.
