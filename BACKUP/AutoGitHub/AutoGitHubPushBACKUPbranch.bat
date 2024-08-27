
@echo [91m!警告!操作は取り消せません!実行は慎重に![0m
@rem 今いるところにカレントディレクトリ指定
@echo [93mディレクトリの指定を行います...
@cd %~dp0
@rem cdで親ファイルに移動(2回)
@rem PaperMCserver_devへ移動する
@cd ..\..
@echo ↓指定しました。パスの確認をしてください。↓
@rem チェックpause
pause

@rem バックアップ実行
@echo バックアップを開始します...[0m

@rem BACKUPブランチにチェックアウト
@git checkout BACKUP
@echo [93mBACKUPへcheckoutしました。[0m

@rem GitHubのorigin mainとorigin BACKUPからpullする
@git pull origin main
@git pull origin BACKUP
@echo [93mGitHubのmainとBACKUPからpullしました。[0m
@rem チェックpause
@pause

@rem addする
@git add -A
@rem commitする(メッセージは変更したほうがいいかも)
@git commit -m "Auto Backup Program to Git,GitHub"
@echo [93m-m "Auto Backup Program to Git,GitHub"でcommitしました。[0m
@echo [91mこれよりpushを行います。
@echo !警告!pushは取り消せません!実行は慎重に!
@rem チェックpause
@pause

@echo 91mpushを開始します...[0m
@rem GitHubのorigin BACKUPにpushする
@git push origin BACKUP
@echo [93mバックアップが完了しました。
@echo BACKUPブランチにpushが行われました。GitHubを確認してください。[0m
@pause