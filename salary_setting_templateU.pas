unit salary_setting_templateU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxCheckGroup, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.ComCtrls;

type
  Tsalary_setting_templateF = class(TForm)
    ckListBox: TCheckListBox;
    pan1: TPanel;
    toolBar: TToolBar;
    btn_sure: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_sureClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salary_setting_templateF: Tsalary_setting_templateF;

implementation

uses salaryU;
{$R *.dfm}

procedure Tsalary_setting_templateF.btn_sureClick(Sender: TObject);
var
  I, High: Integer;
  item: string;
begin
  // ��¼��Щ�ֶβ���Ҫ��ʾ
  High := ckListBox.Items.Count - 1;
  salaryF.UnvisiableFieldIndexList.Clear;
  for I := 0 to High do
  begin
    if ckListBox.Checked[I] then
    begin
      // �����У� NO	����	����	�·�	����ID	Ա��ID
      item := ckListBox.Items[I];
      if (item <> 'NO') and (item <> '����') and (item <> '����') and (item <> '�·�')
        and (item <> 'Ա��ID') and (item <> '����ID') then
        salaryF.UnvisiableFieldIndexList.Add(IntToStr(I));
    end;
  end;
  Close;
end;

procedure Tsalary_setting_templateF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(Self) then
    Action := caFree;
end;

end.
