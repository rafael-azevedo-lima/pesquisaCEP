unit buscacep.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  buscacep.controller.interfaces, Vcl.OleCtrls, SHDocVw;

type
  TfrmPrincipal = class(TForm)
    gbxCEP: TGroupBox;
    edtPesquisaCEP: TEdit;
    btnPesquisaCEP: TButton;
    gbxResultado: TGroupBox;
    lblCEP: TLabel;
    edtCEP: TEdit;
    lblEstado: TLabel;
    edtEstado: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    lblBairro: TLabel;
    edtBairro: TEdit;
    lblLogradouro: TLabel;
    edtLogradouro: TEdit;
    lblLatitude: TLabel;
    edtLatitude: TEdit;
    lblLongitude: TLabel;
    edtLongitude: TEdit;
    lblReferencia: TLabel;
    gbxInformacoes: TGroupBox;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaCEPEnter(Sender: TObject);
    procedure btnPesquisaCEPClick(Sender: TObject);
    procedure edtPesquisaCEPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FInterfaces: IControllerInterfaces;
    procedure SetInterfaces(const Value: IControllerInterfaces);
  public
    property Interfaces: IControllerInterfaces read FInterfaces write SetInterfaces;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  buscacep.model.interfaces;

{$R *.dfm}

procedure TfrmPrincipal.btnPesquisaCEPClick(Sender: TObject);
begin
  with Self.Interfaces do
  begin
      Internet.URI := 'https://brasilapi.com.br';
      if Internet.InternetConectada then
      begin
          ConsultaCEP.ConsultaCEP(edtPesquisaCEp.Text);
          edtCEP.Text         := ConsultaCEP.CEP;
          edtEstado.Text      := ConsultaCEP.Estado;
          edtCidade.Text      := ConsultaCEP.Cidade;
          edtBairro.Text      := ConsultaCEP.Bairro;
          edtLogradouro.Text  := ConsultaCEP.Logradouro;
          edtLatitude.Text    := ConsultaCEP.Latitude;
          edtLongitude.Text   := ConsultaCEP.Longitude;
      end
      else
          raise Exception.Create(Internet.InternetErrorResponse);
  end;
end;

procedure TfrmPrincipal.edtPesquisaCEPEnter(Sender: TObject);
begin
  Self.FInterfaces.Util.LimpaCampos(frmPrincipal);
end;

procedure TfrmPrincipal.edtPesquisaCEPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
      btnPesquisaCEP.SetFocus;
      btnPesquisaCEP.Click;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Self.SetInterfaces(TModelInterfaces.New);
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  if (Self.ClientHeight < 530) then
      Self.ClientHeight := 530;
  if (Self.ClientWidth < 350) then
      Self.ClientWidth := 350;
end;

procedure TfrmPrincipal.SetInterfaces(const Value: IControllerInterfaces);
begin
  FInterfaces := Value;
end;

end.
