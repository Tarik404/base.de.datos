sudo apt install apt-transport-https curl
curl -fsS https://brave-browser-rpm-release.s3.brave.com/brave-core.asc | sudo tee /etc/apt/trusted.gpg.d/brave.asc
echo "deb [arch=amd64] https://brave-browser-rpm-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
sudo dnf install dnf-plugins-core
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo sh -c 'echo -e "[brave-browser]
name=Brave Browser
baseurl=https://brave-browser-rpm-release.s3.brave.com/x86_64/
gpgcheck=1
gpgkey=https://brave-browser-rpm-release.s3.brave.com/brave-core.asc" > /etc/yum.repos.d/brave-browser.repo'
sudo dnf install brave-browser
yay -S brave-bin
sudo pacman -S yay
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo zypper refresh
sudo zypper install brave-browser
