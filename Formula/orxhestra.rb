class Orxhestra < Formula
  include Language::Python::Virtualenv

  desc "Build LLM agents with any LangChain provider — YAML-first orchestration framework"
  homepage "https://github.com/NicolaiLassen/orxhestra"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra/orxhestra-0.0.45.tar.gz"
  sha256 "85d66316d3f07727773e639d71fe95c4808c904c1b007dadb26b67391d312b7c"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx", shell_output("#{bin}/orx --help")
  end
end
