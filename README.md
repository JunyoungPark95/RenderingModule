# RenderingModule
This repo contains a blender based assembly manual rendering as python module.

### Requirements

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

In my case, "C:\Program Files\Blender Foundation\Blender\"

2. Copy it from the current location
3. Paste it into the folder containing python.exe
* In my case, since I use a virtual env (Anaconda3)

* "C:\Users\$USER NAME$\Anaconda3\envs\$YOUR VIRTUAL ENVIRONMENT NAME$"

If this process is skipped, you _SHOULD_ not be possible to import in your Python environments using the Blender module in a Windows environment.
For Linux environments, the symbolic links are not properly connected and it leads that blender modules may not be imported.



