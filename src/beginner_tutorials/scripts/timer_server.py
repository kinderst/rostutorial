#!/usr/bin/env python

from __future__ import print_function

from beginner_tutorials.srv import AddTwoInts,AddTwoIntsResponse
from beginner_tutorials.srv import Timer, TimerResponse
import rospy
import time

def handle_timer(req):
    request_start_time = time.time()
    if req.printing:
        print("Returning [%s]"%(request_start_time))
    return TimerResponse(request_start_time)

def timer_server():
    rospy.init_node('timer_server')
    s = rospy.Service('timer', Timer, handle_timer)
    print("Ready to do some timing.")
    rospy.spin()

if __name__ == "__main__":
    timer_server()