# multiple-GPU-vglrun

Allows you to use all available video cards, very useful when using TurboVNC and VirtualGL


For example Nvidia Tesla M60

+-----------------------------------------------------------------------------+                                                                                                                                                              
| NVIDIA-SMI 510.47.03    Driver Version: 510.47.03    CUDA Version: 11.6     |                                                                                                                                                              
|-------------------------------+----------------------+----------------------+                                                                                                                                                              
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |                                                                                                                                                              
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |                                                                                                                                                              
|                               |                      |               MIG M. |                                                                                                                                                              
|===============================+======================+======================|                                                                                                                                                              
|   0  Tesla M60           Off  | 00000000:06:00.0 Off |                  Off |                                                                                                                                                              
| N/A   25C    P0    40W / 150W |     27MiB /  8192MiB |     35%      Default |                                                                                                                                                              
|                               |                      |                  N/A |                                                                                                                                                              
+-------------------------------+----------------------+----------------------+                                                                                                                                                              
|   1  Tesla M60           Off  | 00000000:07:00.0 Off |                  Off |                                                                                                                                                              
| N/A   29C    P0    41W / 150W |     26MiB /  8192MiB |     34%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
|   2  Tesla M60           Off  | 00000000:86:00.0 Off |                  Off |
| N/A   31C    P0    38W / 150W |     26MiB /  8192MiB |     39%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
|   3  Tesla M60           Off  | 00000000:87:00.0 Off |                  Off |
| N/A   29C    P0    37W / 150W |     26MiB /  8192MiB |     39%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|    0   N/A  N/A      6267      G   /usr/bin/X                         22MiB |
|    0   N/A  N/A     25495      G   glxgears                            1MiB |
|    1   N/A  N/A      6267      G   /usr/bin/X                         21MiB |
|    1   N/A  N/A     25401      G   glxgears                            1MiB |
|    2   N/A  N/A      6267      G   /usr/bin/X                         21MiB |
|    2   N/A  N/A     25318      G   glxgears                            1MiB |
|    3   N/A  N/A      6267      G   /usr/bin/X                         21MiB |
|    3   N/A  N/A     25227      G   glxgears                            1MiB |
+-----------------------------------------------------------------------------+


INSTALL AMN start


copy the script to /etc/profile.d and restart bash terminal
