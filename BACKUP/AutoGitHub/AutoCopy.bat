@rem 今いるところにカレントディレクトリ指定
@echo [93mディレクトリの指定を行います...
@cd %~dp0
@rem cdで親ファイルに移動(2回)
@rem PaperMCserver_devへ移動する
@cd ..\..



@rem %date% から "/" を削除する
@set date_tmp=%date:/=%
@rem 年
@set yyyy=%date_tmp:~0,4%
@rem 月
@set mm=%date_tmp:~4,2%
@rem 日
@set dd=%date_tmp:~6,2%
@rem %time% の空白を "0" で埋めた後、":" を削除する
@set time_tmp=%time: =0%
@set time_tmp=%time_tmp::=%
@rem 時
@set hh=%time_tmp:~0,2%
@rem 分
@set mi=%time_tmp:~2,2%
@rem 秒
@set ss=%time_tmp:~4,2%
@set date_tmp=%date:/=%
@set time_tmp=%time: =0%
@set time_tmp=%time_tmp::=%
@set yyyymmdd=%date_tmp:~0,8%
@set hhmiss=%time_tmp:~0,6%
@set now_time=%yyyymmdd%


@rem フォルダを作成
@cd BACKUP
@md "%now_time%"
cd ..\..

robocopy PaperMCserver_dev PaperMCserver_dev\BACKUP\%now_time% /S /xd backup
exit /b