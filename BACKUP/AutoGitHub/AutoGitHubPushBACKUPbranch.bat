
@echo [91m!�x��!����͎������܂���!���s�͐T�d��![0m
@rem ������Ƃ���ɃJ�����g�f�B���N�g���w��
@echo [93m�f�B���N�g���̎w����s���܂�...[0m
cd %~dp0
@rem cd�Őe�t�@�C���Ɉړ�(2��)
@rem PaperMCserver_dev�ֈړ�����
cd ..\..
@echo [93m���w�肵�܂����B�p�X�̊m�F�����Ă��������B��[0m
@rem �`�F�b�Npause
pause

@rem �o�b�N�A�b�v���s
@echo [93m�o�b�N�A�b�v���s���܂�...[0m

@rem BACKUP�u�����`�Ƀ`�F�b�N�A�E�g
git checkout BACKUP
@echo [93mBACKUP��checkout���܂����B[0m

@rem GitHub��origin main��origin BACKUP����pull����
git pull origin main
git pull origin BACKUP
@echo [93mGitHub��main��BACKUP����pull���܂����B[0m
@rem �`�F�b�Npause
pause

@rem add����
git add -A
@rem commit����(���b�Z�[�W�͕ύX�����ق�����������)
git commit -m "Auto Backup Program to Git,GitHub"
@echo [93m-m "Auto Backup Program to Git,GitHub"��commit���܂����B[0m
@echo [91m������push���s���܂��B[0m
@echo [91m!�x��!push�͎������܂���!���s�͐T�d��![0m
@rem �`�F�b�Npause
pause


@rem GitHub��origin BACKUP��push����
git push origin BACKUP
@echo [93mBACKUP�u�����`��push���s���܂����BGitHub���m�F���Ă��������B
pause