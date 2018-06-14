Dirty Unicorns Oreo (12.X) for Harpia
=====================================

Current Status
--------------

All things are working except 
* GPS(working partially)

Download
--------

My current builds are available [here](https://www.androidfilehost.com/?w=files&flid=276774)
* Always download the build which have LATEST string in the file name

Build Instructions
------------------
Create a build directory

	mkdir -p du
	cd du

Initialize your local repository using the DU trees:

    repo init -u git://github.com/DirtyUnicorns/android_manifest.git -b o8x-caf

Now move your magic wand
	
	wget -O angry_unicorn.sh https://github.com/Harpia-development/du_harpia/raw/master/angry_unicorn.sh
	bash angry_unicorn.sh

Do this everytime before every sync for tracking changes.


Then to sync up:

     repo sync  --force-sync --force-broken --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j$(nproc --all)
     
Move magic band again	
	
	bash patch.sh
	
Do this everytime after sync for applying patches.
	

Now start the build...

	. build/envsetup.sh 
	lunch du_harpia-userdebug
	mka bacon 

Please see the [Dirty Unicorns website](https://dirtyunicorns.com/) for further information.
