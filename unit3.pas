unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls,Unit4;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }
Uses Unit5, Unit6;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form3.Hide;
  Form5.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form3.Hide;
  Form6.Show;
end;

end.

