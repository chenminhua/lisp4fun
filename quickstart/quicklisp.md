```
curl -O https://beta.quicklisp.org/quicklisp.lisp
sbcl --load quicklisp.lisp
* (quicklisp-quickstart:install)
* (ql:system-apropos "vecto")
* (ql:quickload "vecto")
* (ql:add-to-init-file)
* (quit)
```

包都默认下载到了 ~/quicklisp/下面
