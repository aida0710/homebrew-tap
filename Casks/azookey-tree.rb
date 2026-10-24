cask "azookey-tree" do
  version "0.2.2"
  sha256 "3812cb57361e0a7062fd7447d13182198e1972fcf97b4c8ced8ac5361e9d8170"

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
