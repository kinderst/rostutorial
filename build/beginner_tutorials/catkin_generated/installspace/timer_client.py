#!/usr/bin/env python3

from __future__ import print_function

import sys
import rospy
from beginner_tutorials.srv import *

def timer_client(x, y):
    rospy.wait_for_service('timer')
    try:
        timer = rospy.ServiceProxy('timer', AddTwoInts)
        resp1 = timer(x, y)
        print("respl: ", resp1)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting %s+%s"%(x, y))
    print("yo: %s + %s = %s"%(x, y, timer_client(x, y)))