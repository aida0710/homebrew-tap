cask "azookey-tree" do
  version "0.2.1"
  sha256 "a6ab546d8fc46eece60184da107aff8e65f9f2a5b22d50cb27c90f86cd83fb53"

  url "https://github.com/aida0710/azooKey-Desktop/releases/download/tree-v#{version}/azookey-tree-#{version}-arm64.zip"
  name "azooKey Tree"
  desc "Japanese input method with a tree of conversion candidates"
  homepage "https://github.com/aida0710/azooKey-Desktop"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  conflicts_with cask: "azookey"

  input_method "azooKeyMac.app"

  caveats <<~EOS
    This fork is ad-hoc signed and is not notarized.
    Add azooKey in System Settings > Keyboard > Input Sources after installation.
    ATOK is not removed. The official azooKey and this fork share an input method ID.
  EOS
end
