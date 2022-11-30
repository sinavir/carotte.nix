{ buildPythonPackage, fetchFromGitHub }:
buildPythonPackage {
  pname = "assignhooks";
  version = "1.0.2";
  src = fetchFromGitHub {
    owner = "patgolez10";
    repo = "assignhooks";
    rev = "7025199f23bd336ebffd26417fd99a5acab94eba";
    sha256 = "sha256-lMQc29dG+N0qCFH8XNmtpn/waW4rq3rzh3P42nhPygk=";
  };
}
