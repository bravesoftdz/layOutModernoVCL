unit u_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tform_principal = class(TForm)
    pnl_principal: TPanel;
    pnl_topo: TPanel;
    pln_barra_topo: TPanel;
    pnl_central: TPanel;
    spb_fechar: TSpeedButton;
    pnl_menu: TPanel;
    spbCliente: TSpeedButton;
    SpeedButton1: TSpeedButton;
    spbVenda: TSpeedButton;
    spbCaixa: TSpeedButton;
    spbFinanceiro: TSpeedButton;
    pnl_barra_botao: TPanel;
    procedure spb_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure spbVendaMouseEnter(Sender: TObject);
    procedure spbVendaMouseLeave(Sender: TObject);
  private
    { Private declarations }
    procedure prc_focar_botao(BarraPainel: TPanel; Botao: TSpeedButton; focar: Boolean; local : string);

  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

procedure Tform_principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tform_principal.FormResize(Sender: TObject);
begin
  pnl_central.Top  := Round(form_principal.Height/2 - pnl_central.Height/2);
  pnl_central.Left := Round(form_principal.Width/2 - pnl_central.Width/2);
end;

procedure Tform_principal.prc_focar_botao(BarraPainel: TPanel;
  Botao: TSpeedButton; focar: Boolean; local: string);
begin
  if focar then
  begin
    if local = 'MENU' then
      Botao.Font.Color := clNavy;

    Botao.Font.Color := clNavy;
    //Botao.Font.Style := [fsBold];
    BarraPainel.Parent := Botao.Parent;
    BarraPainel.BringToFront;

    BarraPainel.Left    := Botao.Left;
    BarraPainel.top     := Botao.Top + (Botao.Height - 1);
    BarraPainel.Width   := Botao.Width;
    BarraPainel.Visible := True;
  end
  else
  begin
    Botao.Font.Color := clGray;
    Botao.Font.Style := [];
    BarraPainel.Visible := False;
  end;
end;

procedure Tform_principal.spbVendaMouseEnter(Sender: TObject);
begin
  //mostrar a barra abaixo do botao mouse estiver
  //focando
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), true, 'MENU' );

end;

procedure Tform_principal.spbVendaMouseLeave(Sender: TObject);
begin
  prc_focar_botao(pnl_barra_botao, (TComponent(Sender)
          as TSpeedButton), False, 'MENU' );

end;

procedure Tform_principal.spb_fecharClick(Sender: TObject);
begin
 Close;
end;

end.