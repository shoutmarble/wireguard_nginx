wget -O edit.tar.zst https://github.com/microsoft/edit/releases/download/v1.2.0/edit-1.2.0-x86_64-linux-gnu.tar.zst

zstdcat edit.tar.zst | tar -xvf - --one-top-level=edit

