class OrxhestraCode < Formula
  include Language::Python::Virtualenv

  desc "AI coding agent for your terminal — powered by orxhestra"
  homepage "https://github.com/NicolaiLassen/orxhestra-code"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra-code/orxhestra_code-0.0.13.tar.gz"
  sha256 "c543236a839c9ca6e846e1279ab04568db13110d59b44817cac8a4ed7a9e1104"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx-coder", shell_output("#{bin}/orx-coder --help")
  end
end
