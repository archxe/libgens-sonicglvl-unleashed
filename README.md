# libgens-sonicglvl

SonicGLvl is a level editor/formats library for the PC version of Sonic Generations. It's licensed under the terms 
of the GNU General Public License, version 3 (GPLv3).

Current Development Roadmap: http://i.imgur.com/MiHNVrZ.jpg

All information regarding this repository should be found here: http://forums.sonicretro.org/index.php?showtopic=27333

# libgens-sonicglvl-unleashed

This is a version of SonicGLvl which primarily focuses on Sonic Unleashed (X360/PS3) level editing.
This fork includes:
- Daytime Sonic Objects, Gimmicks, Enemies and Bosses
- Mission Objects and Gimmicks
- Werehog Objects, Gimmicks, Enemies and Bosses
- System Objects for loading terrain, cameras, etc.
- Tornado Defence Objects
- Town Objects such as NPCs
- Stage/Country-specific gimmick objects

This does **not** include:
- Sonic Unleashed Shaders (which means a majority of stages will render incorrectly)
- Object models for the editor (these must be extracted from the game files yourself).

I plan to update these templates to add any missing objects (mostly from missions and unused objects not present in any existing layouts)

Setup Guide:

1. Download the code of this repo
2. Find and download the Xbox Compress SDK and extract it to the /bin folder (this will allow for terrain to load)
3. Open any stage from Unleashed (https://hedgedocs.com/docs/hedgehog-engine/swa/levels/ids/, https://hedgedocs.com/docs/hedgehog-engine/swa/towns/ids/)
4. Edit your stage, then save with Ctrl+S

Contributors:
- GordinRamsay (https://github.com/GordinRamsay)
- NextinHKRY (https://github.com/NextinMono)
- Starlight (https://github.com/StarlightDX)
