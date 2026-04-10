class OrxhestraCode < Formula
  include Language::Python::Virtualenv

  desc "AI coding agent for your terminal — powered by orxhestra"
  homepage "https://github.com/NicolaiLassen/orxhestra-code"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra-code/orxhestra_code-0.0.18.tar.gz"
  sha256 "ed8b9a4cdfd70250d8f98bff39ef9b987e6a3b25666a94c5d2a2d0764ed2f8f6"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx-coder", shell_output("#{bin}/orx-coder --help")
  end
end
