def call(String repo, String imageName, String tag, creds) {

    sh """
    rm -rf manifests
    git clone https://${creds_USR}:${creds_PSW}@${repo.replace("https://","")} manifests

    cd manifests

    sed -i 's|image: .*|image: ${imageName}:${tag}|' deployment.yaml

    git config user.email "jenkins@ci.com"
    git config user.name "jenkins"

    git add deployment.yaml
    git commit -m "Update image to ${imageName}:${tag}"
    git push
    """
}

