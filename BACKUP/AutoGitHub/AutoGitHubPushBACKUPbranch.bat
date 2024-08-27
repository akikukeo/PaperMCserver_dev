
@echo [91m!警告!操作は取り消せません!実行は慎重に![0m
@rem 今いるところにカレントディレクトリ指定
@echo [93mディレクトリの指定を行います...[0m
cd %~dp0
@rem cdで親ファイルに移動(2回)
@rem PaperMCserver_devへ移動する
cd ..\..
@echo [93m↓指定しました。パスの確認をしてください。↓[0m
@rem チェックpause
pause

@rem バックアップ実行
@echo [93mバックアップを行います...[0m

@rem BACKUPブランチにチェックアウト
git checkout BACKUP
@echo [93mBACKUPへcheckoutしました。[0m

@rem GitHubのorigin mainとorigin BACKUPからpullする
git pull origin main
git pull origin BACKUP
@echo [93mGitHubのmainとBACKUPからpullしました。[0m
@rem チェックpause
pause

@rem addする
git add -A
@rem commitする(メッセージは変更したほうがいいかも)
git commit -m "Auto Backup Program to Git,GitHub"
@echo [93m-m "Auto Backup Program to Git,GitHub"でcommitしました。[0m
@echo [91mこれよりpushを行います。[0m
@echo [91m!警告!pushは取り消せません!実行は慎重に![0m
@rem チェックpause
pause


@rem GitHubのorigin BACKUPにpushする
git push origin BACKUP
@echo [93mBACKUPブランチにpushが行われました。GitHubを確認してください。
pause