unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, Unit3;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
  private

  public
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }
Uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form3.Show;
  Form2.Hide;
  Form1.Hide;
end;

procedure TForm2.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked = True then
  begin
    Button2.Enabled:=True;
  end
  else
  begin
    Button2.Enabled:=False;
  end;
end;

end.

