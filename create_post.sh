#!/usr/bin/env bash

# Add it to your .bashrc.
# Usage: create_post "My post name"
#    or: create_post
# The script will generate the slug, ask for author's, ask
# if you want to generate permalink and tags

function create_post {
	title=$1

	# if no post title was supplied
	if [[ -z "$title" ]]; then
		read -p "Enter the post title: " title
	fi

	slug=$(echo "$title" | iconv -t ascii//TRANSLIT |
		sed -r s/[~\^´\`\']+//g | sed -r s/[^a-zA-Z0-9]+/-/g |
		sed -r s/^-+\|-+$//g | tr A-Z a-z)

	dir='_posts/'
	# if _posts dir don't exists on current dir, test if we are inside the _posts dir
	if [ ! -d "_posts" ]; then
		dir=''
		if [[ $(pwd) != *_posts ]]; then
			echo "You must be inside the blog root or _posts dir"
			exit
		fi
	fi

	file="$dir$(date +%Y-%m-%d)-$slug.md"

	if [[ -f "$file" ]]; then
		echo "Post '$file' already exists"
	else
		touch "$file"
		echo "---" >>$file
		echo "title: \"$title\"" >>$file
		echo "date: $(date +'%Y-%m-%d %H:%M:%S %z')" >>$file
		echo "layout: post" >>$file

		read -p "Inform the post author [Enter to leave empty]: " author

		if [[ ! -z "$author" ]]; then
			echo "author: $author" >>$file
		fi

		while true; do
			read -p "Generate permalink? [y/n] " yn
			case $yn in
			[Yy]*)
				echo "permalink: /$(date +%Y/%m/%d)/$slug/" >>$file
				break
				;;
			[Nn]*) break ;;
			*) echo "Please answer yes or no." ;;
			esac
		done

		read -p "Inform the post tags (separated by semicolon) [Enter to leave empty]: " tags

		while IFS=';' read -ra tag; do
			for i in "${tag[@]}"; do
				sTags="$sTags  - $i\n"
			done
		done <<<"$tags"

		if [[ ! -z "$sTags" ]]; then
			printf "tags: \n$sTags" >>$file
		fi

		echo "---" >>$file
		echo "Post created: '$file'"

		unset sTags
	fi
}
