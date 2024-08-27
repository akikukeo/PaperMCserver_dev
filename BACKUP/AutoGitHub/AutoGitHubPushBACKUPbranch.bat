
@echo [91m!Œx!‘€ì‚Íæ‚èÁ‚¹‚Ü‚¹‚ñ!Às‚ÍTd‚É![0m
@rem ¡‚¢‚é‚Æ‚±‚ë‚ÉƒJƒŒƒ“ƒgƒfƒBƒŒƒNƒgƒŠw’è
@echo [93mƒfƒBƒŒƒNƒgƒŠ‚Ìw’è‚ğs‚¢‚Ü‚·...[0m
@cd %~dp0
@rem cd‚Åeƒtƒ@ƒCƒ‹‚ÉˆÚ“®(2‰ñ)
@rem PaperMCserver_dev‚ÖˆÚ“®‚·‚é
@cd ..\..
@echo [93m«w’è‚µ‚Ü‚µ‚½BƒpƒX‚ÌŠm”F‚ğ‚µ‚Ä‚­‚¾‚³‚¢B«[0m
@rem ƒ`ƒFƒbƒNpause
pause

@rem ƒoƒbƒNƒAƒbƒvÀs
@echo [93mƒoƒbƒNƒAƒbƒv‚ğs‚¢‚Ü‚·...[0m

@rem BACKUPƒuƒ‰ƒ“ƒ`‚Éƒ`ƒFƒbƒNƒAƒEƒg
@git checkout BACKUP
@echo [93mBACKUP‚Öcheckout‚µ‚Ü‚µ‚½B[0m

@rem GitHub‚Ìorigin main‚Æorigin BACKUP‚©‚çpull‚·‚é
@git pull origin main
@git pull origin BACKUP
@echo [93mGitHub‚Ìmain‚ÆBACKUP‚©‚çpull‚µ‚Ü‚µ‚½B[0m
@rem ƒ`ƒFƒbƒNpause
pause

@rem add‚·‚é
@git add -A
@rem commit‚·‚é(ƒƒbƒZ[ƒW‚Í•ÏX‚µ‚½‚Ù‚¤‚ª‚¢‚¢‚©‚à)
git commit -m "Auto Backup Program to Git,GitHub"
@echo [93m-m "Auto Backup Program to Git,GitHub"‚Åcommit‚µ‚Ü‚µ‚½B[0m
@echo [91m‚±‚ê‚æ‚èpush‚ğs‚¢‚Ü‚·B[0m
@echo [91m!Œx!push‚Íæ‚èÁ‚¹‚Ü‚¹‚ñ!Às‚ÍTd‚É![0m
@rem ƒ`ƒFƒbƒNpause
pause


@rem GitHub‚Ìorigin BACKUP‚Épush‚·‚é
git push origin BACKUP
@echo [93mBACKUPƒuƒ‰ƒ“ƒ`‚Épush‚ªs‚í‚ê‚Ü‚µ‚½BGitHub‚ğŠm”F‚µ‚Ä‚­‚¾‚³‚¢B
pause