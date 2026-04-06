class Orxhestra < Formula
  include Language::Python::Virtualenv

  desc "Build LLM agents with any LangChain provider — YAML-first orchestration framework"
  homepage "https://github.com/NicolaiLassen/orxhestra"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra/orxhestra-0.0.42.tar.gz"
  sha256 "85e603fc1c53bbc7c5543d9a0a92353447393c2bea63877e1fc731db868c958b"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx", shell_output("#{bin}/orx --help")
  end
end
