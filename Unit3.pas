unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, ExtCtrls, SMDBCtrl;

type
  TTabelRule = class(TForm)
    SMDBNavigator1: TSMDBNavigator;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabelRule: TTabelRule;

implementation
  uses Unit2,Unit4;

{$R *.dfm}

procedure TTabelRule.BitBtn1Click(Sender: TObject);
begin
TabelRule.Close;
FormTabel.Show;
end;

procedure TTabelRule.FormActivate(Sender: TObject);
begin
DM1.TabelAktif(True);
end;

end.
