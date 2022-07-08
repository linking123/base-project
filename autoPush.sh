#!/bin/bash
git status

today="`date +%Y%m%d`"
while true;
do
    read -t 3 -p "是否继续提交? [Y/n] " input
    input=${num:-y}

    case $input in
        [yY][eE][sS]|[yY])
            echo "继续提交"
            git add -A
            if [ -z "$1" ]
            then
                git commit -m "add $today"
            elif [[ "a" = "$1" ]]
            then
                git commit -m "add $today"
            elif [[ "u" = "$1" ]]
            then
                git commit -m "update $today"
            else
                git commit -m "$1"
            fi
            git push origin main
            exit 1
            ;;

        [nN][oO]|[nN])
            echo "中断提交"
            exit 1
                   ;;

        *)
        echo "输入错误，请重新输入"
        ;;
    esac
done

