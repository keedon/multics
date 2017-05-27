&version 2
&-  ***********************************************************
&-  *                                                         *
&-  * Copyright, (C) Honeywell Information Systems Inc., 1984 *
&-  *                                                         *
&-  ***********************************************************

&- Created to allow the Volume Backup Daemons to run under a limited service subsystem.
&- This exec_com should be run from the project_start_up_ process overseer to ensure
&- that these Daemons never reach an unprotected command level.

&- Modified 1985-02-21, BIM: added _lss to names.

&if &[equal [user name] Volume_Dumper] &then &goto volume_dumper
&if &[equal [user name] Volume_Retriever] &then &goto volume_retriever
&if &[equal [user name] Volume_Reloader] &then &goto volume_reloader
&quit

&label volume_dumper
enter_lss volume_dumper_lss
&quit

&label volume_retriever
enter_lss volume_retriever_lss
&quit

&label volume_reloader
enter_lss volume_reloader_lss
&quit
&
&
&                                          -----------------------------------------------------------
&
& 
& 
& Historical Background
& 
& This edition of the Multics software materials and documentation is provided and donated
& to Massachusetts Institute of Technology by Group Bull including Bull HN Information Systems Inc. 
& as a contribution to computer science knowledge.  
& This donation is made also to give evidence of the common contributions of Massachusetts Institute of Technology,
& Bell Laboratories, General Electric, Honeywell Information Systems Inc., Honeywell Bull Inc., Groupe Bull
& and Bull HN Information Systems Inc. to the development of this operating system. 
& Multics development was initiated by Massachusetts Institute of Technology Project MAC (1963-1970),
& renamed the MIT Laboratory for Computer Science and Artificial Intelligence in the mid 1970s, under the leadership
& of Professor Fernando Jose Corbato. Users consider that Multics provided the best software architecture for
& managing computer hardware properly and for executing programs. Many subsequent operating systems
& incorporated Multics principles.
& Multics was distributed in 1975 to 2000 by Group Bull in Europe , and in the U.S. by Bull HN Information Systems Inc., 
& as successor in interest by change in name only to Honeywell Bull Inc. and Honeywell Information Systems Inc. .
& 
&                                          -----------------------------------------------------------
&
& Permission to use, copy, modify, and distribute these programs and their documentation for any purpose and without
& fee is hereby granted,provided that the below copyright notice and historical background appear in all copies
& and that both the copyright notice and historical background and this permission notice appear in supporting
& documentation, and that the names of MIT, HIS, Bull or Bull HN not be used in advertising or publicity pertaining
& to distribution of the programs without specific prior written permission.
&     Copyright 1972 by Massachusetts Institute of Technology and Honeywell Information Systems Inc.
&     Copyright 2006 by Bull HN Information Systems Inc.
&     Copyright 2006 by Bull SAS
&     All Rights Reserved
& 
&
