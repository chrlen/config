#! /bin/bash

toJpg(){
	find ${1} -name "*.CR2" | parallel -I% --max-args 1 convert % -sampling-factor 4:2:0 -strip  -quality 85 -interlace JPEG -colorspace sRGB %.jpg
}


flac2mp3(){
	for filename in $(ls -d $PWD/*.flac); do
		echo ${filename}
	done
}


setupMamba(){
	__conda_setup="$('/usr/local/Caskroom/mambaforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
		eval "$__conda_setup"
	else
		if [ -f "/usr/local/Caskroom/mambaforge/base/etc/profile.d/conda.sh" ]; then
			. "/usr/local/Caskroom/mambaforge/base/etc/profile.d/conda.sh"
		else
			export PATH="/usr/local/Caskroom/mambaforge/base/bin:$PATH"
		fi
	fi
	unset __conda_setup
}


timeZshStartup(){
	/usr/bin/time zsh -i -c exit	
}
