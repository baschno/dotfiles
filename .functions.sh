#! /usr/bin/env bash

function update() {
    distro=$(cat /etc/os-release | grep -e '^ID='|cut -d'=' -f2)

    echo "Distro: '$distro'"
    case $distro in
        "fedora")
            echo "dnf"
            sudo dnf upgrade
            ;;
        "ubuntu")
            echo "apt"
            sudo apt update && sudo apt upgrade -y
            ;;
        *)
            echo "Distro not recognized"
            ;;
    esac
    echo "snap && flatpak"
    snap refresh && flatpak update;
}