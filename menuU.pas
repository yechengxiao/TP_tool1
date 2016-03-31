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
    currentForm: string;
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

  checkInOutMenu := '����';
  salaryMenu := '����';
  carCashSZMenu := '������֧';

  treeMenu.Items.BeginUpdate;
  faNode1 := treeMenu.Items.AddFirst(nil, '����ͳ��');
  // treeMenu.Items.AddChildFirst(faNode1, checkInOutMenu);

  if bm_logined = ADMIN then
  begin
    // ��ӽڵ�
    treeMenu.Items.AddChild(faNode1, salaryMenu);

    {
      faNode2 := treeMenu.Items.Add(nil, 'ʳ��ͳ��');
      treeMenu.Items.AddChild(faNode2, carCashSZMenu);
    }
  end;

  {
    // �Ϳ��ĺ�ר��
    changeCardNoMenu := '�Ϳ��ĺ�';

    treeMenu.Items.BeginUpdate;

    if bm_logined = ADMIN then
    begin
    // ��ӽڵ�
    faNode1 := treeMenu.Items.AddFirst(nil, '����');
    treeMenu.Items.AddChildFirst(faNode1, changeCardNoMenu);
    end;
  }
  treeMenu.Items.EndUpdate;
  treeMenu.FullExpand;

  Self.WindowState := wsMaximized;
  Self.Position := poDesktopCenter;
end;

procedure TmenuF.treeMenuClick(Sender: TObject);
var
  formCaption: string;
begin
  formCaption := Trim(treeMenu.Selected.Text);

  if currentForm = formCaption then
    Exit;

  if formCaption = checkInOutMenu then // ����
  begin
    currentForm := formCaption;

    try
      checkInOutF.Free;
    except
    end;

    Application.CreateForm(TcheckInOutF, checkInOutF);

    checkInOutF.Update;
    checkInOutF.Parent := panRight;
    checkInOutF.Align := alClient;
    checkInOutF.BorderStyle := bsNone;

    checkInOutF.Visible := True;

  end
  else if formCaption = salaryMenu then // ����
  begin
    currentForm := formCaption;

    // if Assigned(salaryF) then
    // FreeAndNil(salaryF);

    // salaryF := TsalaryF.Create(salaryF);

    try
      salaryF.Free;
    except
    end;

    Application.CreateForm(TsalaryF, salaryF);

    salaryF.Update;
    salaryF.Parent := panRight;
    salaryF.Align := alClient;
    salaryF.BorderStyle := bsNone;

    salaryF.Visible := True;
  end
  else if formCaption = carCashSZMenu then // ����
  begin
    currentForm := formCaption;

    {
      if Assigned(carCashSZ_F) then
      FreeAndNil(carCashSZ_F);

      carCashSZ_F := TcarCashSZ_F.Create(nil);


      carCashSZ_F.Update;
      carCashSZ_F.Parent := panRight;
      carCashSZ_F.Align := alClient;
      carCashSZ_F.BorderStyle := bsNone;
      carCashSZ_F.Visible := true;
    }
  end
  else if formCaption = changeCardNoMenu then // changeCardNoMenu
  begin
    currentForm := formCaption;

    if Assigned(changeCardNoF) then
      FreeAndNil(changeCardNoF);

    changeCardNoF := TchangeCardNoF.Create(nil);

    changeCardNoF.Update;
    changeCardNoF.Parent := panRight;
    changeCardNoF.Align := alClient;
    changeCardNoF.BorderStyle := bsNone;
    changeCardNoF.Visible := True;
  end;

  Self.Caption := currentForm;
end;

end.
