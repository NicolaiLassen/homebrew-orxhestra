class Orxhestra < Formula
  include Language::Python::Virtualenv

  desc "Build LLM agents with any LangChain provider — YAML-first orchestration framework"
  homepage "https://github.com/NicolaiLassen/orxhestra"
  url "https://files.pythonhosted.org/packages/source/o/orxhestra/orxhestra-0.0.43.tar.gz"
  sha256 "3ee50852128081ab6e0f861026ef3e0c19f0f9bcd214531d4f3da52d0847840d"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "orx", shell_output("#{bin}/orx --help")
  end
end
