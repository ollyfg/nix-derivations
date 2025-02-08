
{ lib, buildPythonPackage, fetchurl }:

buildPythonPackage rec {
  pname = "appengine-python-standard";
  version = "1.1.9";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/2c/49/c9569a830638e1509c8508d33901ca8e2b5303fecc11a585b973b936fc44/appengine_python_standard-1.1.9.tar.gz";
    sha256 = "sha256-DpO+dc5KX07SaYd7FPPHfcj4ls78EX3/DXYwRzzCuwU=";
  };

  doCheck = false;

  meta = with lib; {
    homepage = https://github.com/GoogleCloudPlatform/appengine-python-standard;
    description = "Google App Engine services SDK for Python 3";
    license = licenses.asl20;
    maintainers = [];
  };
}
