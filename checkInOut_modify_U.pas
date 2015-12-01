unit checkInOut_modify_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TcheckInOut_modify_F = class(TForm)
    pan1: TPanel;
    tlBar: TToolBar;
    tBtn_save: TToolButton;
    tBtn_Separator1: TToolButton;
    tBtn_exit: TToolButton;
    dbEdt_badgenumber: TDBEdit;
    dbEdt_ckTime: TDBEdit;
    dbEdt_work_num: TDBEdit;
    dbCbb_type: TDBComboBox;
    dbMemo: TDBMemo;
    lbl_badgenumber: TLabel;
    lbl_check_time: TLabel;
    lbl_work_num: TLabel;
    lbl_type_: TLabel;
    lbl_memo: TLabel;
    lbl_czy: TLabel;
    dbEdt_czy: TDBEdit;
    lbl_name: TLabel;
    edt_name: TEdit;
    lbl_change_time: TLabel;
    dbedt_change_time: TDBEdit;
    lbl_bm: TLabel;
    edt_bm: TEdit;
    radioG: TRadioGroup;
    lbl_msg: TLabel;
    procedure FormShow(Sender: TObject);
    procedure tBtn_saveClick(Sender: TObject);
    procedure dbEdt_work_numKeyPress(Sender: TObject; var Key: Char);
    procedure dbCbb_typeKeyPress(Sender: TObject; var Key: Char);
    procedure radioGClick(Sender: TObject);
  private
    { Private declarations }
  public
    msg: string;
    { Public declarations }
  end;

var
  checkInOut_modify_F: TcheckInOut_modify_F;

implementation

uses checkInOutU, utilU, dmU;
{$R *.dfm}

procedure TcheckInOut_modify_F.dbCbb_typeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TcheckInOut_modify_F.dbEdt_work_numKeyPress(Sender: TObject;
  var Key: Char);
begin
  // #8 �˸� #46 С����   #45 ����
  if Key <> #8 then
    if not((Key in ['0' .. '9']) or (Key = #46) or (Key = #45)) then
      Key := #0
end;

procedure TcheckInOut_modify_F.FormShow(Sender: TObject);
var
  tip: string;
begin

  if dbEdt_work_num.CanFocus then
    dbEdt_work_num.Focused;

  msg := '�¼١����١���١����١�ɥ�١����˱����' + #10#13 + '��ʱ����˵����' + #10#13 +
    '1.����ѡ��������ʱ��1�����Ϳ��ţ� ' + #10#13 + '2.����ѡ�Ӱ࣬��ʵ�����ѡ�����͡���ʱ��' + #10#13 +
    '����˫�ݣ���ʱ1.5����ʾ�Ӱ�0.5�죬�����ϰ�1�죻' + #10#13 + '3.����ѡ��٣���ʵ�����ѡ�����͡���ʱ��' + #10#13
    + '�������٣���ʱ-0.5����ʾ���0.5�죻';

  lbl_msg.Caption := msg;
end;

procedure TcheckInOut_modify_F.radioGClick(Sender: TObject);
var
  sql: string;
begin
  dbCbb_type.Items.Clear;

  case radioG.ItemIndex of
    0:
      begin
        dbCbb_type.Text := '';
      end;
    1:
      begin
        sql := 'SELECT type2 FROM ck_type WHERE type1=''JB'' ORDER BY type1';
        DropDown_DB(dm.dSet_pub, dbCbb_type, sql, 'type2');
      end;
    2:
      begin
        sql := 'SELECT type2 FROM ck_type WHERE type1=''QJ'' ORDER BY type1';
        DropDown_DB(dm.dSet_pub, dbCbb_type, sql, 'type2');
      end;
  end;
end;

procedure TcheckInOut_modify_F.tBtn_saveClick(Sender: TObject);
var
  ckTime, badgeNO, czy, czsj, workCount, type1, type2, memo: string;
  sql, tmpType: string;
begin
  // ��������ƿ��������ֵ��ȡ����
  edt_name.SetFocus;

  ckTime := Trim(checkInOutF.dSet_ckInOut_mcheck_time.AsString);
  badgeNO := Trim(checkInOutF.dSet_ckInOut_mbadgenumber.AsString);
  memo := Trim(checkInOutF.dSet_ckInOut_mmemo.AsString);

  workCount := Trim(dbEdt_work_num.Text);
  type2 := Trim(dbCbb_type.Text);
  case radioG.ItemIndex of
    0:
      type1 := 'ZC';
    1:
      type1 := 'JB';
    2:
      type1 := 'QJ';
  end;

  if (radioG.ItemIndex <> 0) AND (type2 = '') then
  begin
    msg_info('��ѡ������');

    if dbCbb_type.CanFocus then
      dbCbb_type.Focused;

    Exit;
  end;

  if workCount = '' then
  begin
    msg_info('����д��ʱ');

    if dbEdt_work_num.CanFocus then
      dbEdt_work_num.Focused;

    Exit;
  end
  else
  begin
    try
      if StrToFloat(workCount) = 0 then
      begin
        msg_info('��ʱ����Ϊ��');
        Exit;
      end;

      tmpType := dbCbb_type.Text;
      // '�¼١����١���١����١�ɥ�١�������дΪ����';
      if (Pos('��', tmpType) > 0) or (Pos('��', tmpType) > 0) then
      begin
        if StrToFloat(workCount) >= 0 then
        begin
          msg_info(msg);
          Exit;
        end;
      end;
    except
      on E: Exception do
        msg_err('�����ˣ�' + E.Message);
    end;
  end;
  try
    sql := 'SELECT COUNT(badgenumber) upORins FROM checkInOut_modified WHERE badgenumber ='''
      + badgeNO + ''' AND check_time=''' + ckTime + ''' ';
    DataSet_Open(dm.dSet_pub, sql);

    if dm.dSet_pub.FieldByName('upORins').AsInteger = 0 then
    begin
      // ckTime, badgeNO, czy, workCount, workType, memo:
      // badgenumber  check_time  work_num  type_  czy  memo
      sql := 'INSERT INTO checkInOut_modified(badgenumber,check_time,work_num,type1,type2,czy,change_time,memo) VALUES('''
        + badgeNO + ''',''' + ckTime + ''',''' + workCount + ''',''' + type1 +
        ''',''' + type2 + ''',''' + czy + ''',''' + czsj + ''',''' + memo
        + ''' ) ';
    end
    else
    begin
      sql := 'UPDATE checkInOut_modified SET work_num =''' + workCount +
        ''', type1=''' + type1 + ''', type2=''' + type2 + ''', czy=''' + czy +
        ''', memo=''' + memo + ''', change_time=''' + czsj +
        ''' WHERE badgenumber=''' + badgeNO + ''' AND check_time=''' +
        ckTime + ''' ';
    end;


    // ���ﲻ�ܲ��棬Ҫ��SQL���
    // checkInOutF.dSet_ckInOut_m.Post;

    if Command_Exec(sql) then
      msg_info('�������')
    else
      msg_info('����ʧ��');

    checkInOutF.btn_tjClick(checkInOutF);

    Close;
  except
    on E: Exception do
      msg_err('�����ˣ�' + E.Message);
  end;
end;

end.
