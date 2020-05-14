# RenderingModule
This repo contains a blender based assembly manual rendering as python module.

### Requirements (For windows)

* python3.x (Recommended 3.6)
* blender 2.79
* blender module
<pre>
<code>$ pip install bpy</code>
</pre>

* Linking python with blender module

Note that : Windows is a known platform where these script files can be different, especially depending on your environment.

1. Find the blender module folder 2.79

* Version number (i.e., 2.79) may change depending on your version of the blender.

* In my case, <code>"C:\Program Files\Blender Foundation\Blender\"</code>

2. Copy it from the current location
3. Paste it into the folder containing python.exe

* In my case, since I use a virtual env (Anaconda3) 

<code> "C:\Users\$USER NAME$\Anaconda3\envs\$YOUR VIRTUAL ENVIRONMENT NAME$" </code>

If this process is skipped, you _SHOULD_ not be possible to import in your Python environments using the Blender module in a Windows environment.

### Requirements (For linux)

Just run 'build_script.sh' on your directory

change execution permissions as:
<code> chmod u+x build_script.sh </code>
build Blender using the script the following way:
<code> ./build_script.sh v2.80 python3.7 --precompiled-libs </code>


