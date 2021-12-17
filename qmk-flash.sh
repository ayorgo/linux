# To put in bootloader mode, hold the Esc key while plugging in the USB cable.
docker run -v $(pwd)/$1:/root/$1 -w /root -u 0 --privileged python:3.10 bash -c "\
pip install qmk==1.0.0 \
&& qmk setup --home /home/qmk_firmware -y \
&& sed -i 's/sudo //g' /home/qmk_firmware/util/install/debian.sh \
&& qmk setup -y \
&& qmk config user.keyboard=dztech/dz60rgb_ansi/v2 \
&& qmk config user.keymap=ayorgo \
&& qmk new-keymap \
&& qmk json2c $1 -o /home/qmk_firmware/keyboards/dztech/dz60rgb_ansi/keymaps/ayorgo/keymap.c \
&& qmk compile \
&& qmk flash"
