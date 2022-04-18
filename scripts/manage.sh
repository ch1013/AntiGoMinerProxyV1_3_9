#!/bin/bash
[[ $(id -u) != 0 ]] && echo -e "Ո��Root�Ñ����\�а��bԓ�_��" && exit 1

cmd="apt-get"
if [[ $(command -v apt-get) || $(command -v yum) ]] && [[ $(command -v systemctl) ]]; then
    if [[ $(command -v yum) ]]; then
        cmd="yum"
    fi
else
    echo "�@�����b�_����֧�����ϵ�y" && exit 1
fi


install(){
    if [ -d "/root/go_miner_proxy" ]; then
    		screen -X -S go_miner_proxy quit
        rm -rf /root/go_miner_proxy/GoMinerProxy
        rm -rf /root/go_miner_proxy/server.key
        rm -rf /root/go_miner_proxy/server.pem
        rm -rf /root/go_miner_proxy/PatchGompV139
    fi
    if screen -list | grep -q "go_miner_proxy"; then
        screen -X -S go_miner_proxy quit
    fi

    $cmd update -y
    $cmd install wget screen -y
    
    mkdir /root/go_miner_proxy
    wget https://raw.githubusercontent.com/minerproxys/AntiGoMinerProxyV1_3_9/main/scripts/run.sh -O /root/go_miner_proxy/run.sh --no-check-certificate
    chmod 777 /root/go_miner_proxy/run.sh
    wget https://raw.githubusercontent.com/minerproxys/AntiGoMinerProxyV1_3_9/main/others/cert.tar.gz -O /root/go_miner_proxy/cert.tar.gz --no-check-certificate
    tar -zxvf /root/go_miner_proxy/cert.tar.gz -C /root/go_miner_proxy
    
    wget https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/releases/download/1.3.9/GoMinerProxy_v1.3.9_linux_amd64.tar.gz -O /root/GoMinerProxy_v1.3.9_linux_amd64.tar.gz --no-check-certificate
    tar -zxvf /root/GoMinerProxy_v1.3.9_linux_amd64.tar.gz -C /root/go_miner_proxy
    
    chmod 777 /root/go_miner_proxy/PatchGompV139
    
    $cmd cd /root/go_miner_proxy
    ./PatchGompV139
    
    chmod 777 /root/go_miner_proxy/GoMinerProxy
    
    screen -dmS go_miner_proxy
    sleep 0.2s
    screen -r go_miner_proxy -p 0 -X stuff "cd /root/go_miner_proxy"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'
    screen -r go_miner_proxy -p 0 -X stuff "./run.sh"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'

    sleep 2s
    echo "������أ�������Ķ��ĵ� ʹ��˵������ؿ��꣩.doc"
    echo ""
    echo "GoMinerProxy V1.3.9�ѽ����b��/root/go_miner_proxy"
    cat /root/go_miner_proxy/pwd.txt
    echo ""
    echo "������ʹ��ָ��screen -r go_miner_proxy�鿴��ʽ�˿ں��ܴa"
}


uninstall(){
    read -p "���_�J���Ƿ�h��GoMinerProxy)[yes/no]��" flag
    if [ -z $flag ];then
         echo "��δ���_ݔ��" && exit 1
    else
        if [ "$flag" = "yes" -o "$flag" = "ye" -o "$flag" = "y" ];then
            screen -X -S go_miner_proxy quit
            rm -rf /root/go_miner_proxy
            echo "GoMinerProxy�ѳɹ��������ŷ�����ж�d"
        fi
    fi
}


update(){
    wget https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/releases/download/1.3.9/GoMinerProxy_v1.3.9_linux_amd64.tar.gz -O /root/GoMinerProxy_v1.3.9_linux_amd64.tar.gz --no-check-certificate

    if screen -list | grep -q "go_miner_proxy"; then
        screen -X -S go_miner_proxy quit
    fi
    rm -rf /root/go_miner_proxy/GoMinerProxy
    rm -rf /root/go_miner_proxy/server.key
    rm -rf /root/go_miner_proxy/server.pem
    rm -rf /root/go_miner_proxy/PatchGompV139

    tar -zxvf /root/GoMinerProxy_v1.3.9_linux_amd64.tar.gz -C /root/go_miner_proxy
    
    chmod 777 /root/go_miner_proxy/PatchGompV139
    
    $cmd cd /root/go_miner_proxy
    ./PatchGompV139
    
    chmod 777 /root/go_miner_proxy/GoMinerProxy

    screen -dmS go_miner_proxy
    sleep 0.2s
    screen -r go_miner_proxy -p 0 -X stuff "cd /root/go_miner_proxy"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'
    screen -r go_miner_proxy -p 0 -X stuff "./run.sh"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'

    sleep 2s
    echo "GoMinerProxy �ѽ�������V1.3.9�汾�K����"
    cat /root/go_miner_proxy/pwd.txt
    echo "������أ�������Ķ��ĵ� ʹ��˵������ؿ��꣩.doc"
    echo ""
    echo "������ʹ��ָ��screen -r go_miner_proxy�鿴��ʽݔ��"
}


start(){
    if screen -list | grep -q "go_miner_proxy"; then
        echo -e "�z�y������GoMinerProxy�ц��ӣ�Ո�����}����" && exit 1
    fi
    
    screen -dmS go_miner_proxy
    sleep 0.2s
    screen -r go_miner_proxy -p 0 -X stuff "cd /root/go_miner_proxy"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'
    screen -r go_miner_proxy -p 0 -X stuff "./run.sh"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'
    
    echo "GoMinerProxy�ц���"
    echo "������ʹ��ָ��screen -r go_miner_proxy�鿴��ʽݔ��"
}


restart(){
    if screen -list | grep -q "go_miner_proxy"; then
        screen -X -S go_miner_proxy quit
    fi
    
    screen -dmS go_miner_proxy
    sleep 0.2s
    screen -r go_miner_proxy -p 0 -X stuff "cd /root/go_miner_proxy"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'
    screen -r go_miner_proxy -p 0 -X stuff "./run.sh"
    screen -r go_miner_proxy -p 0 -X stuff $'\n'

    echo "GoMinerProxy �ѽ�������"
    echo "������ʹ��ָ��screen -r go_miner_proxy�鿴��ʽݔ��"
}


stop(){
    screen -X -S go_miner_proxy quit
    echo "GoMinerProxy ��ֹͣ"
}


change_limit(){
    if grep -q "1000000" "/etc/profile"; then
        echo -n "����ϵ�y�B�Ӕ����ƿ������޸ģ���ǰ�B�����ƣ�"
        ulimit -n
        exit
    fi

    cat >> /etc/sysctl.conf <<-EOF
fs.file-max = 1000000
fs.inotify.max_user_instances = 8192

net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_tw_reuse = 1
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_max_syn_backlog = 16384
net.ipv4.tcp_max_tw_buckets = 6000
net.ipv4.route.gc_timeout = 100

net.ipv4.tcp_syn_retries = 1
net.ipv4.tcp_synack_retries = 1
net.core.somaxconn = 32768
net.core.netdev_max_backlog = 32768
net.ipv4.tcp_timestamps = 0
net.ipv4.tcp_max_orphans = 32768

# forward ipv4
# net.ipv4.ip_forward = 1
EOF

    cat >> /etc/security/limits.conf <<-EOF
*               soft    nofile          1000000
*               hard    nofile          1000000
EOF

    echo "ulimit -SHn 1000000" >> /etc/profile
    source /etc/profile

    echo "ϵ�y�B�Ӕ��������޸ģ��ք�reboot�؆���ϵ�y������Ч"
}


check_limit(){
    echo -n "����ϵ�y��ǰ�B�����ƣ�"
    ulimit -n
}


echo "======================================================="
echo "GoMinerTool-ETHASH һ�I�_�����ű�Ĭ�ϰ�װ��/root/go_miner_proxy"
echo "***************************�_���汾(Script Version)���ƽ�V1.3.9"
echo "*****************************�н�CC��ddos�������нӸ����ƽ�����"                             
echo "*****�����汾��ˮ�ƽ⣬��Ⱥ���ƣ� https://t.me/MinerProxyHackGO"
echo "                                                               "
echo "  1����  �b ���ƽ�(Install �滻����Ǯ��)   �Ƽ�"
echo "  2��ж  �d (Uninstall)"
echo "  3����  �� ���ƽ�(Update)"
echo "  4����  �� (Start)"
echo "  5����  �� (Restart)"
echo "  6��ͣ  ֹ (Stop)"
echo "  7��һ�I���Linux�B�Ӕ�����,���ք��؆�ϵ�y��Ч"
echo "     (Remove the limit on the number of Linux connections,"
echo "      Need to manually restart the system to take effect.)"
echo "  8���鿴��ǰϵ�y�B�Ӕ����� (View the current system connection limit)"
echo "������أ�������Ķ��ĵ� ʹ��˵������ؿ��꣩.doc"
echo "======================================================="
read -p "$(echo -e "��ѡ��(Choose)[0-8]��")" choose
case $choose in

    1)
        install
        ;;
    2)
        uninstall
        ;;
    3)
        update
        ;;
    4)
        start
        ;;
    5)
        restart
        ;;
    6)
        stop
        ;;
    7)
        change_limit
        ;;
    8)
        check_limit
        ;;
    *)

        echo "Ոݔ�����_�Ĕ��֣�(Please enter the correct number!)"
        ;;
esac