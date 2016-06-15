# synergy-php-api
Builds a docker image that supports the SynergyAuthAPI


BUILD INSTRUCTIONS
------------------

    # get hcpss-EduCrypt
    cd ~
    git clone git@gitlab.com:nickadam/hcpss-EduCrypt.git synergy-php-api/hcpss-EduCrypt

    # get hcpss-SynergyAuthAPI
    git clone git@gitlab.com:nickadam/hcpss-SynergyAuthAPI.git synergy-php-api/hcpss-SynergyAuthAPI

    # build image
    docker built -t synergy-api synergy-php-api
