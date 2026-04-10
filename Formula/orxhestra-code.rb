class OrxhestraCode < Formula
  include Language::Python::Virtualenv

  desc "AI coding agent for your terminal — powered by orxhestra"
  homepage "https://github.com/NicolaiLassen/orxhestra-code"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra-code/orxhestra_code-0.0.15.tar.gz"
  sha256 "9dc80d0366de086b383b77dba8ce78c962cb97a27e44c9b2960cda4737a0973e"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx-coder", shell_output("#{bin}/orx-coder --help")
  end
end
