class OrxhestraCode < Formula
  include Language::Python::Virtualenv

  desc "AI coding agent for your terminal — powered by orxhestra"
  homepage "https://github.com/NicolaiLassen/orxhestra-code"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra-code/orxhestra_code-0.1.1.tar.gz"
  sha256 "1bbceddeca3795c413476ae25fed3d82a3e7b0feb07f5368d72ed0a7a3d2932e"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx-coder", shell_output("#{bin}/orx-coder --help")
  end
end
