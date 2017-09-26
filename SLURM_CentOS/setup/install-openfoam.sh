############# installs openfoam from /share/storage ############
FOAM_VERSION=OpenFOAM-2.3.x
STORAGE_DIR="/share/storage"
SOFTWARE_DIR="/share/data/software"
FOAM_INSTALL_DIR="$SOFTWARE_DIR/foam"


# check if /share/storage is mounted
if mount | grep /mnt/md0 > /dev/null; then
    echo "Storage mounted..."
else
        echo "Storage not mounted, please mount /share/storage!"
	exit 1
fi



#untar
tar -xzf $STORAGE_DIR/openfoam/OpenFOAM_CentOS7_HPC.tgz -C $FOAM_INSTALL_DIR
tar -xzf $STORAGE_DIR/openfoam/OpenFOAM_CentOS7_HPC_libs.tgz -C $FOAM_INSTALL_DIR


#fix foam install dir in bashrc file
sed -i.bak "s+^ *foamInstall=.*+foamInstall=$FOAM_INSTALL_DIR+g" $FOAM_INSTALL_DIR/$FOAM_VERSION/etc/bashrc


