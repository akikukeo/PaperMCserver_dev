@rem ������Ƃ���ɃJ�����g�f�B���N�g���w��
@echo [93m�f�B���N�g���̎w����s���܂�...
@cd %~dp0
@rem cd�Őe�t�@�C���Ɉړ�(2��)
@rem PaperMCserver_dev�ֈړ�����
@cd ..\..



@rem %date% ���� "/" ���폜����
@set date_tmp=%date:/=%
@rem �N
@set yyyy=%date_tmp:~0,4%
@rem ��
@set mm=%date_tmp:~4,2%
@rem ��
@set dd=%date_tmp:~6,2%
@rem %time% �̋󔒂� "0" �Ŗ��߂���A":" ���폜����
@set time_tmp=%time: =0%
@set time_tmp=%time_tmp::=%
@rem ��
@set hh=%time_tmp:~0,2%
@rem ��
@set mi=%time_tmp:~2,2%
@rem �b
@set ss=%time_tmp:~4,2%
@set date_tmp=%date:/=%
@set time_tmp=%time: =0%
@set time_tmp=%time_tmp::=%
@set yyyymmdd=%date_tmp:~0,8%
@set hhmiss=%time_tmp:~0,6%
@set now_time=%yyyymmdd%


@rem �t�H���_���쐬
@cd BACKUP
@md "%now_time%"
cd ..\..

robocopy PaperMCserver_dev PaperMCserver_dev\BACKUP\%now_time% /S /xd backup
exit /b