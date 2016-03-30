unit menuU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TmenuF = class(TForm)
    panLeft: TPanel;
    treeMenu: TTreeView;
    panRight: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure treeMenuClick(Sender: TObject);
  private
    checkInOutMenu, salaryMenu, carCashSZMenu, changeCardNoMenu: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menuF: TmenuF;

implementation

uses checkInOutU, mainU, salaryU, utilU, dmU, changeCardNoU;
{$R *.dfm}

procedure TmenuF.FormCreate(Sender: TObject);
var
  faNode1, faNode2: TTreeNode;
begin
  {
    checkInOutMenu := '�¶ȿ���';
    salaryMenu := 'Ա������';
    carCashSZMenu := '������֧';

    treeMenu.Items.BeginUpdate;
    faNode1 := treeMenu.Items.AddFirst(nil, '����ͳ��');
    treeMenu.Items.AddChildFirst(faNode1, checkInOutMenu);

    if bm_logined = ADMIN then
    begin
    // ��ӽڵ�
    treeMenu.Items.AddChild(faNode1, salaryMenu);

    faNode2 := treeMenu.Items.Add(nil, 'ʳ��ͳ��');
    treeMenu.Items.AddChild(faNode2, carCashSZMenu);
    end;
  }

  // �Ϳ��ĺ�ר��
  changeCardNoMenu := '�Ϳ��ĺ�';

  treeMenu.Items.BeginUpdate;

  if bm_logined = ADMIN then
  begin
    // ��ӽڵ�
    faNode1 := treeMenu.Items.AddFirst(nil, '����');
    treeMenu.Items.AddChildFirst(faNode1, changeCardNoMenu);
  end;

  treeMenu.Items.EndUpdate;
  treeMenu.FullExpand;

  Self.WindowState := wsMaximized;
  Self.Position := poDesktopCenter;
end;

procedure TmenuF.treeMenuClick(Sender: TObject);
var
  formCaption: string;
begin
  formCaption := treeMenu.Selected.Text;

  if Pos(formCaption, checkInOutMenu) > 0 then // ����
  begin
    if Assigned(checkInOutF) then
      FreeAndNil(checkInOutF);

    checkInOutF := TcheckInOutF.Create(nil);

    Self.Caption := checkInOutF.Caption;
    checkInOutF.Update;
    checkInOutF.Parent := panRight;
    checkInOutF.Align := alClient;
    checkInOutF.BorderStyle := bsNone;

    checkInOutF.Visible := true;
  end
  else if Pos(formCaption, salaryMenu) > 0 then // ����
  begin
    if Assigned(salaryF) then
      FreeAndNil(salaryF);

    salaryF := TsalaryF.Create(nil);

    Self.Caption := salaryF.Caption;
    salaryF.Update;
    salaryF.Parent := panRight;
    salaryF.Align := alClient;
    salaryF.BorderStyle := bsNone;
    salaryF.Visible := true;
  end
  else if Pos(formCaption, carCashSZMenu) > 0 then // ����
  begin
    if Assigned(carCashSZ_F) then
      FreeAndNil(carCashSZ_F);

    carCashSZ_F := TcarCashSZ_F.Create(nil);

    Self.Caption := carCashSZ_F.Caption;
    carCashSZ_F.Update;
    carCashSZ_F.Parent := panRight;
    carCashSZ_F.Align := alClient;
    carCashSZ_F.BorderStyle := bsNone;
    carCashSZ_F.Visible := true;
  end
  else if Pos(formCaption, changeCardNoMenu) > 0 then // changeCardNoMenu
  begin
    if Assigned(changeCardNoF) then
      FreeAndNil(changeCardNoF);

    changeCardNoF := TchangeCardNoF.Create(nil);

    Self.Caption := changeCardNoF.Caption;
    changeCardNoF.Update;
    changeCardNoF.Parent := panRight;
    changeCardNoF.Align := alClient;
    changeCardNoF.BorderStyle := bsNone;
    changeCardNoF.Visible := true;
  end;

end;

end.
