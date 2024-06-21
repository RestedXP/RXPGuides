# Lib: HereBeDragons

## [2.13-release-6-g8a4bed6](https://github.com/Nevcairiel/HereBeDragons/tree/8a4bed65d2a0d5633cb8f4106d5dac5008fbe2d3) (2024-06-20)
[Full Changelog](https://github.com/Nevcairiel/HereBeDragons/compare/2.13-release...8a4bed65d2a0d5633cb8f4106d5dac5008fbe2d3) [Previous Releases](https://github.com/Nevcairiel/HereBeDragons/releases)

- Let processMap lookup map info if not provided  
    This simplifies the lookup logic a bit  
- Add TWW transform data  
- Update pin frame pool for 11.x compat  
    This is a bit ugly since the exposed frame pools use a secure pool that  
    we can't mess with, so instead create an unsecure texture pool (because  
    frame or even object pools are not exposed, thanks Blizzard), and  
    repurpose it to be a frame pool once again.  
- Update Library version, forgotten in previous commit  
    Also force a data update for Cataclysm  
- Update for Cataclysm Classic  
- Update TOC for 10.2.6  
