## 架构
### 硬件
声卡：connectors,Audio Circuits,INterface
### 驱动
OSS->ALSA->Tiny-alsa（advanced linux sound architecture）
### HAL
硬件抽象层
### Audio LIb
库  
libmedia,libaudioflinger
### framework
AudioFlinger  
AudioPolicyService

AudioTrack  
AudioRecorder

plugin
### app
## AudioFlinger
playBackThread & AudioMixer
## AudioolicyService
AudioPolicyINterface,AudioPolicyManagerBase,AudioPolicyManagerDefault
