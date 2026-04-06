class Orxhestra < Formula
  include Language::Python::Virtualenv

  desc "Build LLM agents with any LangChain provider — YAML-first orchestration framework"
  homepage "https://github.com/NicolaiLassen/orxhestra"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra/orxhestra-0.0.40.tar.gz"
  sha256 "6d85b975e0c8f97579e224331e808b3dd9b1d484e18ebf3149fb9657f65a5b38"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx", shell_output("#{bin}/orx --help")
  end
end
