cask "azookey-tree" do
  version "0.1.0"
  sha256 "46959a27f7afc9919e7e518e2358085c887abd5bc601f507d52a6ab8eb756efa"

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
