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
    procedure edt_passKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    stau, limit, stau_memo, ver: string;
    { Public declarations }
  end;

var
  startF: TstartF;

implementation

uses dmU, mainU, utilU, checkInOutU, menuU;
{$R *.dfm}

procedure TstartF.btn_loginClick(Sender: TObject);
var
  bm, pass, sql: string;
  logined: Boolean;
begin
  try
    btn_login.Enabled := False;

    bm := Trim(cbb_bm.Text);
    pass := Trim(edt_pass.Text);

    if (bm = '') or (pass = '') then
    begin
      msg_err('��ѡ���ţ�����д���� ');
      btn_login.Enabled := True;
      Exit;
    end;

    sql := 'SELECT TOP 1 status, limit_num, status_memo FROM tp_tool_ver WHERE ver='''
      + ver + ''' ';

    DataSet_Open(dm.dSet_pub, sql);

    stau := Trim(dm.dSet_pub.FieldByName('status').AsString);
    stau_memo := dm.dSet_pub.FieldByName('status_memo').AsString;
    limit := dm.dSet_pub.FieldByName('limit_num').AsString; // TODO ��¼������

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
        msg_err('����ȷѡ���ţ�����д��ȷ������');
        btn_login.Enabled := True;
        Exit;
      end;

      if logined then
      begin
        Delay(1000); // �������洰����ʾһ����
        startF.Hide; // �����������洰��
        startF.Free; // �ͷ��������洰��

        bm_logined := bm; // �޸Ĳ�����czyΪ��������

        Application.CreateForm(TmenuF, menuF);
        menuF.Show;
      end;
    end
    else
    begin
      if stau_memo <> '' then
      begin
        lbl_msg.Caption := stau_memo + ' ���� �˳� ���رճ���...';
      end
      else
      begin
        lbl_msg.Caption := '�˰汾��ͣ��!! ' + ' ���� �˳� ���رճ���...';
      end;

      // Delay(5000);
      // Application.Terminate;
    end;
  finally

  end;
end;

procedure TstartF.edt_passKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn_login.OnClick(Sender);

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

  // ver := '20160330_changeCardNo';
  ver := '20160128_dev';

  lbl_msg.Caption := UpperCase(ver);
end;

end.
