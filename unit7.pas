unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASources, TATransformations,
  TANavigation, TASeries, TAIntervalSources, TAFuncSeries, TAMultiSeries, Forms,
  Controls, Graphics, Dialogs, StdCtrls, Unit5;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

{ TForm7 }

procedure TForm7.FormCreate(Sender: TObject);
begin

end;

procedure TForm7.Label1Click(Sender: TObject);
begin

end;

procedure TForm7.Button1Click(Sender: TObject);
var
  x,y:Integer;
  A,B,C:Integer;

begin
  for x:=-10 to 10 do
  begin
    A:= trunc(Unit5.a);
    B:=trunc(Unit5.b);
    C:=trunc(Unit5.c);
    y:= (A*x*x)+(B*x)+C;
    Chart1LineSeries1.AddXY(x,y);

  end;

end;

end.

