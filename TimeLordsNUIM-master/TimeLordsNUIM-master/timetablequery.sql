select C.Code, C.trans, CCOM.modulecode, E.occurrence, E.type, E.datetime, E.venue, E.durationInMins
from course as C, courseconsistsofmodules AS CCOM, event E
where C.code = 'HDSSDF' 
and C.Code = CCOM.coursecode
and CCOM.modulecode = E.modulecode
order by E.datetime;