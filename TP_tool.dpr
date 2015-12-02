program TP_tool;

uses
  Vcl.Forms,
  System.SysUtils,
  mainU in 'mainU.pas' {mainF} ,
  dmU in 'dmU.pas' {dm: TDataModule} ,
  utilU in 'utilU.pas',
  startU in 'startU.pas' {startF} ,
  checkInOutU in 'checkInOutU.pas' {checkInOutF} ,
  checkInOut_modify_U in 'checkInOut_modify_U.pas' {checkInOut_modify_F};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdm, dm);

  Application.CreateForm(TstartF, startF);

  Application.Run;

end.
