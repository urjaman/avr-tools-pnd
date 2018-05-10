
stashrm() {
	if [ -e $1 ]; then
		if [ -e $1.old ]; then
			echo "Wiping $1.old in 2s.."
			sleep 2
			TN=$1.old.$$
			mv $1.old $TN
			(rm -rf $TN) &
		fi
		echo "Moving $1 to $1.old"
		mv $1 $1.old
	fi
}
