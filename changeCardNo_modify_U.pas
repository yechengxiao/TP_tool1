unit changeCardNo_modify_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TchangeCardNo_modify_F = class(TForm)
    pan1: TPanel;
    tlBar: TToolBar;
    tBtn_save: TToolButton;
    tBtn_Separator1: TToolButton;
    tBtn_exit: TToolButton;
    edt_name: TEdit;
    edt_userId: TEdit;
    edt_cardNoOld: TEdit;
    edt_cardNoNew: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure tBtn_saveClick(Sender: TObject);
    procedure tBtn_exitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    name, userId, cardNoOld, cardNoNew: string;
    { Public declarations }
  end;

var
  changeCardNo_modify_F: TchangeCardNo_modify_F;

implementation

uses checkInOutU, utilU, dmU;
{$R *.dfm}

procedure TchangeCardNo_modify_F.FormShow(Sender: TObject);
begin
  edt_name.Text := name;
  edt_userId.Text := userId;
  edt_cardNoOld.Text := cardNoOld;

  if edt_cardNoOld.CanFocus then
    edt_cardNoOld.SetFocus;
end;

procedure TchangeCardNo_modify_F.tBtn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure TchangeCardNo_modify_F.tBtn_saveClick(Sender: TObject);
var
  sql: string;
begin

  if not msg_query('  确认修改吗') then
    Exit;

  cardNoNew := edt_cardNoNew.Text;
  // id name type noNew noOld
  sql := 'EXEC SP_changeCardNO ''' + userId + ''','''',''update'',''' +
    cardNoNew + ''',''' + cardNoOld + ''' ';

  if Command_Exec(sql) then
  begin
    msg_info('修改成功');
    Close;
  end;
end;

end.
