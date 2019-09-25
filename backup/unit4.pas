unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public
    quiter:Integer;
  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }
Uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Form1.Show;
  Form4.Close;
end;

end.

