unit buscacep.controller.interfaces;

interface

uses
  buscacep.controller.internet, buscacep.controller.consulta_cep,
  buscacep.controller.util;

type
  IControllerInterfaces = interface
    ['{2BA50B05-F5EF-41E7-AF49-2D2CFC2392DF}']
    function Internet: IControllerInternet;
    function ConsultaCEP: IControllerConsultaCEP;
    function Util: IControllerUtil;
  end;

implementation

end.
