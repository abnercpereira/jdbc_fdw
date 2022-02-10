echo %VsSolutionDir%
echo %VsSolutionBuildDir%
"C:\Program Files\Java\jdk1.8.0_301\bin\javac.exe" -d "%VsSolutionBuildDir%" JDBCDriverLoader.java JDBCUtils.java resultSetInfo.java
if exist "%VsSolutionBuildDir%\dist" rmdir "%VsSolutionBuildDir%\dist" /s /q
mkdir "%VsSolutionBuildDir%\dist"
mkdir "%VsSolutionBuildDir%\dist\lib"
mkdir "%VsSolutionBuildDir%\dist\share\extension"
copy "%VsSolutionBuildDir%\jdbc_fdw.dll" "%VsSolutionBuildDir%\dist\lib"
copy "%VsSolutionBuildDir%\jdbc_fdw.lib" "%VsSolutionBuildDir%\dist\lib"
copy "%VsSolutionBuildDir%\JDBCDriverLoader.class" "%VsSolutionBuildDir%\dist\lib"
copy "%VsSolutionBuildDir%\JDBCUtils.class" "%VsSolutionBuildDir%\dist\lib"
copy "%VsSolutionBuildDir%\resultSetInfo.class" "%VsSolutionBuildDir%\dist\lib"
copy "%VsSolutionDir%jdbc_fdw.control" "%VsSolutionBuildDir%\dist\share\extension"
copy "%VsSolutionDir%jdbc_fdw--1.0.sql" "%VsSolutionBuildDir%\dist\share\extension"