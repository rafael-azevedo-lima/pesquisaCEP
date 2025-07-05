unit buscacep.model.interfaces;

interface

uses
  buscacep.controller.interfaces, buscacep.controller.internet,
  buscacep.controller.consulta_cep, buscacep.controller.util;
type
  TModelInterfaces = class(TInterfacedObject,IControllerInterfaces)
    private
      FInternet: IControllerInternet;
      FConsultaCEP: IControllerConsultaCEP;
      FUtil: IControllerUtil;
      constructor Create;
      function Internet: IControllerInternet;
      function ConsultaCEP: IControllerConsultaCEP;
      function Util: IControllerUtil;
    public
      destructor Destroy; override;
      class function New: IControllerInterfaces;
  end;

implementation

uses
  buscacep.model.internet, buscacep.model.consulta_cep, buscacep.model.util;

{ TModelInterfaces }

function TModelInterfaces.ConsultaCEP: IControllerConsultaCEP;
begin
  if not(Assigned(Self.FConsultaCEP)) then
      Self.FConsultaCEP := TModelConsultaCEP.New;
  Result := Self.FConsultaCEP;
end;

constructor TModelInterfaces.Create;
begin
end;

destructor TModelInterfaces.Destroy;
begin
  inherited;
end;

function TModelInterfaces.Internet: IControllerInternet;
begin
  if not(Assigned(Self.FInternet)) then
      Self.FInternet := TModelInternet.New;
  Result := Self.FInternet;
end;

class function TModelInterfaces.New: IControllerInterfaces;
begin
  Result := Self.Create;
end;

function TModelInterfaces.Util: IControllerUtil;
begin
  if not(Assigned(Self.FUtil)) then
      Self.FUtil := TModelUtil.New;
  Result := Self.FUtil;
end;

end.
