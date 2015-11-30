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
  // #8 退格 #46 小数点   #45 减号
  if Key <> #8 then
    if not((Key in ['0' .. '9']) or (Key = #46) or (Key = #45)) then
      Key := #0
end;

procedure TcheckInOut_modify_F.FormShow(Sender: TObject);
begin

  if dbEdt_work_num.CanFocus then
    dbEdt_work_num.Focused;

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
  sql: string;
begin
  // 不把鼠标移开，下面的值获取不到
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
    msg_info('请选择类型');

    if dbCbb_type.CanFocus then
      dbCbb_type.Focused;

    Exit;
  end;

  if workCount = '' then
  begin
    msg_info('请填写工时');

    if dbEdt_work_num.CanFocus then
      dbEdt_work_num.Focused;

    Exit;
  end
  else
  begin
    try

      // 判断 工时输入合法性
      if (-1 > StrToFloat(workCount)) OR (StrToFloat(workCount) > 2) then
      begin
        msg_err('工时不能大于2,也不同小于-1');
        Exit;
      end;
    except
      msg_err('工时格式错误');
      Exit;
    end;
  end;

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

  try
    // 这里不能不存，要用SQL语句
    // checkInOutF.dSet_ckInOut_m.Post;

    if Command_Exec(sql) then
      msg_info('保存完成')
    else
      msg_info('保存失败');

    checkInOutF.btn_tjClick(checkInOutF);

    Close;
  except
    on E: Exception do
      msg_err('出错了：' + E.Message);
  end;
end;

end.
