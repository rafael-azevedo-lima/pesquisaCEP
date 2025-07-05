program BuscaCEP;

uses
  Vcl.Forms,
  buscacep.view.principal in 'views\buscacep.view.principal.pas' {frmPrincipal},
  buscacep.controller.interfaces in 'controllers\buscacep.controller.interfaces.pas',
  buscacep.model.interfaces in 'models\buscacep.model.interfaces.pas',
  buscacep.controller.internet in 'controllers\buscacep.controller.internet.pas',
  buscacep.model.internet in 'models\buscacep.model.internet.pas',
  buscacep.controller.consulta_cep in 'controllers\buscacep.controller.consulta_cep.pas',
  buscacep.model.consulta_cep in 'models\buscacep.model.consulta_cep.pas',
  buscacep.controller.util in 'controllers\buscacep.controller.util.pas',
  buscacep.model.util in 'models\buscacep.model.util.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
