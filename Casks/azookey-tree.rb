cask "azookey-tree" do
  version "0.1.2"
  sha256 "4efba43a3d2a616db2c2a20a0a0b6009b1714fa797fdf9e3765cda6deca33c9f"

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
