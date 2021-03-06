program TP_tool;

uses
  Vcl.Forms,
  System.SysUtils,
  dmU in 'dmU.pas' {dm: TDataModule},
  utilU in 'utilU.pas',
  startU in 'startU.pas' {startF},
  checkInOutU in 'checkInOutU.pas' {checkInOutF},
  checkInOut_modify_U in 'checkInOut_modify_U.pas' {checkInOut_modify_F},
  salaryU in 'salaryU.pas' {salaryF},
  carCashSZU in 'carCashSZU.pas' {carCashSZ_F},
  menuU in 'menuU.pas' {menuF},
  salary_setting_templateU in 'salary_setting_templateU.pas' {salary_setting_templateF},
  changeCardNoU in 'changeCardNoU.pas' {changeCardNoF},
  changeCardNo_modify_U in 'changeCardNo_modify_U.pas' {changeCardNo_modify_F};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TstartF, startF);
  Application.Run;

end.
