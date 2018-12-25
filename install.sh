#!/bin/bash
. "$(dirname $0)/vars.sh"
case "$1" in
    create)
        echo create
        ./load.sh $HOST $DATABASE $USER $PASSWORD create $LOAD_PATH
        ;;
    drop)
        ./load.sh $HOST $DATABASE $USER $PASSWORD drop $LOAD_PATH
        ;;
    insert)
        ./load.sh $HOST $DATABASE $USER $PASSWORD insert $LOAD_PATH
        ;;
    new)
        ./load.sh $HOST $DATABASE $USER $PASSWORD drop $LOAD_PATH
        ./load.sh $HOST $DATABASE $USER $PASSWORD create $LOAD_PATH
        ./load.sh $HOST $DATABASE $USER $PASSWORD insert $LOAD_PATH
        ;;
    new-compile)
        ./load.sh $HOST $DATABASE $USER $PASSWORD drop $LOAD_PATH
        ./load.sh $HOST $DATABASE $USER $PASSWORD create $LOAD_PATH
        ./load.sh $HOST $DATABASE $USER $PASSWORD insert $LOAD_PATH
        ./compile.sh
        ;;
    backup-create)
        ID=$2
        ./backup.sh $HOST $DATABASE $USER $PASSWORD $BACKUP_PATH $ID
        ./load.sh $HOST $DATABASE $USER $PASSWORD create $LOAD_PATH
        ;;
    backup-drop)
        ID=$2
        ./backup.sh $HOST $DATABASE $USER $PASSWORD $BACKUP_PATH $ID
        ./load.sh $HOST $DATABASE $USER $PASSWORD drop $LOAD_PATH
        ;;
    backup-insert)
        ID=$2
        ./backup.sh $HOST $DATABASE $USER $PASSWORD $BACKUP_PATH $ID
        ./load.sh $HOST $DATABASE $USER $PASSWORD insert $LOAD_PATH
        ;;
    backup)
        ID=$2
        ./backup.sh $HOST $DATABASE $USER $PASSWORD $BACKUP_PATH $ID
        ;;
    restore)
        NAME=$2
        if [ $# -gt 1 ]
        then
            if [ $# -eq 2 ]
            then
                ./load.sh $HOST $DATABASE $USER $PASSWORD $NAME $BACKUP_PATH
            else
                TABLE=""
                for PARAMETER in "$@"
                do
                    COUNT=$(( COUNT+1 ))
                    if [ $COUNT -gt 2 ]
                    then
                        TABLE=$TABLE" "$PARAMETER
                    fi
                done
                    echo "tables "$TABLE
                    ./load.sh $HOST $DATABASE $USER $PASSWORD $NAME $BACKUP_PATH $TABLE
            fi
        fi
    ;;
esac
#./log.sh
