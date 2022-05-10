
file = "."
prefix = "swift-"
changeto = "s-"
key = "IDECodeSnippetCompletionPrefix"
for file in `ls | grep .codesnippet`
do
    name=`/usr/libexec/PlistBuddy -c "Print :IDECodeSnippetCompletionPrefix" $file`
    echo "1111-$name"
    # name=``
    name=`echo ${name/swift-/s-}`
    echo "222222-$name"
    /usr/libexec/plistBuddy -c "set IDECodeSnippetCompletionPrefix ${name}" $file

    /usr/libexec/PlistBuddy -c "Print :IDECodeSnippetCompletionPrefix" $file
done
#/usr/libexec/plistBuddy -c "set CFBundleShortVersionString ${buildVersion}" ${mainTargetPath}/Info.plist
