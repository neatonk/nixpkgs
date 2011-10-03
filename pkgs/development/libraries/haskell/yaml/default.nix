{ cabal, enumerator, transformers }:

cabal.mkDerivation (self: {
  pname = "yaml";
  version = "0.4.1.1";
  sha256 = "0qm7kfvi99m80m2lsmn98ssr2sfsw1rbbmzyjlg7bmvbaxsyw0b9";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ enumerator transformers ];
  meta = {
    homepage = "http://github.com/snoyberg/yaml/";
    description = "Low-level binding to the libyaml C library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})