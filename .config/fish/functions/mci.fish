# Defined in - @ line 0
function mci --description 'alias mci=mvn clean install'
	mvn clean install $argv;
end
