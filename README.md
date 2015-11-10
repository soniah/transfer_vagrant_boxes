# transfer_vagrant_boxes
scripts for transferring vagrant boxes

# Installation

The scripts work on `*nix` platforms.

* place `vagrantRepackage.rb` on the source machine
* place `vagrantUnpackage.rb` on the target machine
* check that the two scripts are executable (`chmod +x vagrant*`)

# Usage

On the **source** machine:

    cd
    mkdir boxes; cd boxes
    ~/vagrantRepackage.rb
    
    # copy the boxes to your target machine
    cd
    rsync -av boxes/ target:boxes/
    
On the **target** machine:

    cd ~/boxes
    ~/vagrantUnpackage.rb
