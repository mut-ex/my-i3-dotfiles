import time
import redis

r = redis.StrictRedis()
p = r.pubsub(ignore_subscribe_messages=True)

def handler(message):
	print(message['data'].decode('utf-8'))

p.subscribe('timeleft')

for message in p.listen():
	print("{} min until next break!".format(message['data'].decode('utf-8')))
	break