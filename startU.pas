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
    lbl_ver: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  startF: TstartF;

implementation

uses dmU, mainU;
{$R *.dfm}

end.
