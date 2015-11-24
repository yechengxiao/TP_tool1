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
    procedure FormShow(Sender: TObject);
    procedure tBtn_saveClick(Sender: TObject);
    procedure tBtn_exitClick(Sender: TObject);
    procedure dbEdt_work_numKeyPress(Sender: TObject; var Key: Char);
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

  dbCbb_type.Clear;
  dbCbb_type.Items.Add('');
  dbCbb_type.Items.Add('调休');
  dbCbb_type.Items.Add('加班');
  dbCbb_type.Items.Add('病假');
  dbCbb_type.Items.Add('事假');
end;

procedure TcheckInOut_modify_F.tBtn_exitClick(Sender: TObject);
begin
  //
end;

procedure TcheckInOut_modify_F.tBtn_saveClick(Sender: TObject);
var
  ckTime, badgeNO, czy, workCount, workType, memo: string;
  sql: string;
begin
  // 不把鼠标移开，下面的值获取不到
  edt_name.SetFocus;

  ckTime := Trim(checkInOutF.dSet_ckInOut_mcheck_time.AsString);
  badgeNO := Trim(checkInOutF.dSet_ckInOut_mbadgenumber.AsString);
  czy := Trim(checkInOutF.dSet_ckInOut_mczy.AsString);
  workCount := Trim(checkInOutF.dSet_ckInOut_mwork_num.AsString);
  // workCount := Trim(checkInOutF.dSet_ckInOut_mwork_num.AsString);
  workType := Trim(checkInOutF.dSet_ckInOut_mtype_.AsString);
  memo := Trim(checkInOutF.dSet_ckInOut_mmemo.AsString);

  if workCount = '' then
  begin
    msg_info('请填写工时');
    Exit;
  end
  else
  begin
    try
      // 判断 工时输入合法性
      if (StrToFloat(workCount) < 2) AND ((StrToFloat(workCount) < -1)) then
      begin
        msg_err('工时不能大于或等于2,也不同小于-1');
        Exit;
      end;
    except
      msg_err('工时格式错误');
      Exit;
    end;
  end;

  if workType = '' then
  begin
    msg_info('请填写类型');
    Exit;
  end;

  sql := 'SELECT COUNT(badgenumber) upORins FROM checkInOut_modified WHERE badgenumber ='''
    + badgeNO + ''' AND check_time=''' + ckTime + ''' ';
  DataSet_Open(dm.dSet_pub, sql);

  if dm.dSet_pub.FieldByName('upORins').AsInteger = 0 then
  begin
    // ckTime, badgeNO, czy, workCount, workType, memo:
    // badgenumber  check_time  work_num  type_  czy  memo
    sql := 'INSERT INTO checkInOut_modified(badgenumber,check_time,work_num,type_,czy,memo) VALUES('''
      + badgeNO + ''',''' + ckTime + ''',''' + workCount + ''',''' + workType +
      ''',''' + czy + ''',''' + memo + ''' ) ';
  end
  else
  begin
    sql := 'UPDATE checkInOut_modified SET work_num =''' + workCount +
      ''', type_=''' + workType + ''', czy=''' + czy + ''', memo=''' + memo +
      ''' WHERE badgenumber=''' + badgeNO + ''' AND check_time=''' +
      ckTime + ''' ';
  end;

  try
    // checkInOutF.dSet_ckInOut_m.Post; // 这里不能不存，要用SQL语句

    if Command_Exec(sql) then
      msg_info('   保存完成   ');

    Close;
  except
  end;

end;

end.
