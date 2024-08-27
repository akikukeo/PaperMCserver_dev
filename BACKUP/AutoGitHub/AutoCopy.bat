@rem ¡‚¢‚é‚Æ‚±‚ë‚ÉƒJƒŒƒ“ƒgƒfƒBƒŒƒNƒgƒŠw’è
@echo [93mƒfƒBƒŒƒNƒgƒŠ‚Ìw’è‚ğs‚¢‚Ü‚·...
@cd %~dp0
@rem cd‚Åeƒtƒ@ƒCƒ‹‚ÉˆÚ“®(2‰ñ)
@rem PaperMCserver_dev‚ÖˆÚ“®‚·‚é
@cd ..\..



@rem %date% ‚©‚ç "/" ‚ğíœ‚·‚é
@set date_tmp=%date:/=%
@rem ”N
@set yyyy=%date_tmp:~0,4%
@rem Œ
@set mm=%date_tmp:~4,2%
@rem “ú
@set dd=%date_tmp:~6,2%
@rem %time% ‚Ì‹ó”’‚ğ "0" ‚Å–„‚ß‚½ŒãA":" ‚ğíœ‚·‚é
@set time_tmp=%time: =0%
@set time_tmp=%time_tmp::=%
@rem 
@set hh=%time_tmp:~0,2%
@rem •ª
@set mi=%time_tmp:~2,2%
@rem •b
@set ss=%time_tmp:~4,2%
@set date_tmp=%date:/=%
@set time_tmp=%time: =0%
@set time_tmp=%time_tmp::=%
@set yyyymmdd=%date_tmp:~0,8%
@set hhmiss=%time_tmp:~0,6%
@set now_time=%yyyymmdd%


@rem ƒtƒHƒ‹ƒ_‚ğì¬
@cd BACKUP
@md "%now_time%"
cd ..\..

robocopy PaperMCserver_dev PaperMCserver_dev\BACKUP\%now_time% /S /xd backup
exit /b