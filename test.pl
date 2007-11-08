#!/usr/bin/perl
use X11::GUITest::record qw/:ALL :CONST/;

print "5. --> Please move your mouse for next 3 seconds\n";

SetRecordContext(MotionNotify);
#SetDeliveredEvents(2,3);
EnableRecordContext;


sleep(3);
DisableRecordContext();
print "ok 5 - Some movements\n" if (GetRecordInfo);
print "not ok 5 - No mouse movements \n" unless (GetRecordInfo);


print "6. --> Please press some keys for next 3 seconds\n";

SetRecordContext(KeyRelease, KeyPress);
#SetDeliveredEvents(2,3);
EnableRecordContext;
sleep(3);
DisableRecordContext();
print "ok 6\n" if (GetRecordInfo);
print "not ok 6\n" unless (GetRecordInfo);

