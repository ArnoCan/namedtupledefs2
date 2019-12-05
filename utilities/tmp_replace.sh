#X="bin docsrc examples testdata tests UseCases"
X="namedtupledefs/NetFiles.py"
find ${X} -type f -exec sed -i 's|addPathToSearchPath|addpath_to_searchpath|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|clearPath|clearpath|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|delPathFromSearchPath|delpath_from_searchpath |g' {} \;
echo .
find ${X} -type f -exec sed -i 's|findRelPathInSearchPath|findrelpath_in_searchpath|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|findRelPathInSearchPathIter|findrelpath_in_searchpathiter|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getHome|gethome|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getTopFromPathString|gettop_from_pathstring|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getTopFromPathStringIter|gettop_from_pathstring_iter|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getCurrentUserName|getcurrent_username|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getDirUserHome|getdir_userhome|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getDirUserData|getdir_userdata|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getDirUserConfigData|getdir_userconfigdata|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getDirUserAppData|getdir_userappdata|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|setUpperTreeSearchPath|set_uppertree_searchpath|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|splitAppPrefix|splitapppathx|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|splitPathVar|splitapppathx|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|getAppPrefixLocalPath|splitapppathx_getlocalpath|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|escapeFilePath|escapepathx|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|unescapeFilePath|unescapepathx|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|searchFilterFilesAndPaths|findpattern|g' {} \;
echo .
find ${X} -type f -exec sed -i 's|expandPath|expandpath|g' {} \;

