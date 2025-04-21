{
  lib,
  stdenv,
  fetchFromGitHub,
  meson,
  ninja,
  pkg-config,
  libimobiledevice,
  libgcrypt,
  libusbmuxd,
  openssl,
  gnutls,
}: stdenv.mkDerivation rec {
  pname = "jitterbugpair";
  version = "1.3.1";

  /*src = fetchFromGitHub {
    owner = "osy";
    repo = "Jitterbug";
    tag = "v${version}";
    hash = "sha256-BsMNiId02PrWifHH18p3MueIt6uBFByWxWnzTizVZmo=";
    fetchSubmodules = true;
  };*/
  src = ./.;

  nativeBuildInputs = [
    meson
    pkg-config
    ninja
  ];
  buildInputs = [
    libimobiledevice
    libgcrypt
    libusbmuxd
    openssl
    gnutls
  ];
}
