#!/usr/bin/python2
import os
import sys

sys.path.insert(0, os.path.abspath('..'))

if __name__ == "__main__":
    print(u"Works")
    os.environ.update(DJANGO_SETTINGS_MODULE="chatserver.settings")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
