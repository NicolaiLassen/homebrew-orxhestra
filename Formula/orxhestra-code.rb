class OrxhestraCode < Formula
  include Language::Python::Virtualenv

  desc "AI coding agent for your terminal — powered by orxhestra"
  homepage "https://github.com/NicolaiLassen/orxhestra-code"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra-code/orxhestra_code-0.1.2.tar.gz"
  sha256 "07e9027942fe234f4e514f5708712b0558fbce5998c883ac8990fb987e7757f8"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx-coder", shell_output("#{bin}/orx-coder --help")
  end
end
