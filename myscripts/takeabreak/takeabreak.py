from os import system
from threading import Timer
import signal
import sys

from gi.repository import Notify, GdkPixbuf


minutes = 25

delta = 60
term_flag  = 0
file='/home/adil/myscripts/takeabreak/sample'

def cleanexit(*args):
	global term_flag
	term_flag = 1
	system("polybar-msg hook takeabreak 3")
	sys.exit(0)


signal.signal(signal.SIGINT, cleanexit)
signal.signal(signal.SIGTERM, cleanexit)

def tick():

	if term_flag:
		system("polybar-msg hook takeabreak 3")
		sys.exit(0)

	global minutes
	print("Minutes = ", minutes)
	if minutes > 0:

		minutes = minutes-1
		print("Tick! {} min left", minutes)

		with open(file, 'w') as myfile:
			if minutes == 0:
				myfile.write("Less than a minute until next break!".format(str(minutes)))
			else:
				myfile.write("{} min until next break".format(str(minutes)))
		system("polybar-msg hook takeabreak 1")

		t = Timer(delta, tick)
		t.start()

	else:
		system("polybar-msg hook takeabreak 2")

		from gi.repository import Notify
		Notify.init("takeabreak")

		image = GdkPixbuf.Pixbuf.new_from_file("/home/adil/myscripts/takeabreak/alert.png")

		notification = Notify.Notification.new("Hey! Time to take a break!")

		notification.set_icon_from_pixbuf(image)
		notification.set_image_from_pixbuf(image)

		notification.set_urgency(2)

		notification.show()

with open(file, 'w') as myfile:
	myfile.write("{} min until next break".format(str(minutes)))
system("polybar-msg hook takeabreak 1")

t = Timer(delta, tick)
t.start()