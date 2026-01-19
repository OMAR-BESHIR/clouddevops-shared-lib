def call(String imageName, String tag, creds) {
    sh """
    echo ${creds_PSW} | docker login -u ${creds_USR} --password-stdin
    docker push ${imageName}:${tag}
    """
}

