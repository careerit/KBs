Linux Commands

Find if a package is installed

`sudo dpkg-query --show --showformat='${db:Status-Status}\n' <pkg_name>`
The command returns `installed` if the package exists, if not returns
`dpkg-query: no packages found matching <pkg_name>`

Example:
`sudo dpkg-query --show --showformat='${db:Status-Status}\n' apache2 `
