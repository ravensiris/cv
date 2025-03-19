{pkgs, ...}: {
  packages = with pkgs; [texlive.combined.scheme-full];

  scripts.cv.exec = ''
    ${pkgs.texlive.combined.scheme-full}/bin/xelatex cv.tex
  '';
}
