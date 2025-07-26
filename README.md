
# deploy github documentation

- Create your own repository

- git init

- git clone https://github.com/m-idasa/Documents.git

- cp Documents in your repository directory without .git folder

- git add .

- git commit -m "first commit"

- git branch -M main

- git remote add origin https://github.com/m-idasa/<your-repository>.git

- git push -u origin main

- in github.com repository navigate to Setting -> Pages -> Build and deployment -> Source -> Deploy from a branch

- in github.com repository navigate to Setting -> Pages -> Build and deployment -> Branch -> (Select branch) main -> /root  then Save

It will take some minutes to deploy, then you can find your static documentation page at https://<username>.github.io/<your-repository>. This link will be apeared in Pages tab too.

## Other hints

- Add markdown files in root or prefered directory in root (no different)

- Use sample markdown files in repository for more useful commands

- Add your custom styles in /_sass/custom/custom.scss file

- Add any thing to Head in /_incloudes/head_custom.html such as links or meta tags

- To check if your chages build and deployed complety you can navigate to Actions tab in github 





