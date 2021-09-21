userName = ''
userEmail = ''
company = 'Unilever'
managerEmail = ''
managerName = ''
password = ''

function askForInformation() {
    userEmail = prompt('Insert the user email')
    managerEmail = prompt('Insert the manager email')
    company = prompt('Insert the company', 'Unilever')
    password = prompt('Generate a password')
    userName = convertToName(userEmail)
    managerName = convertToName(managerEmail)
}

function convertToName(email) {
    email = email.replaceAll('@unilever.com', '').replaceAll('.', ' ').replaceAll('-', ' ')
    return email
}

function fillTemplate(){
    textField = document.querySelector('div._16VySYOFix816mo3KsgOhw._1m89yrwkVHJAoAZ_JC8cw3._3VMDfFa1O01ntQj14k1rpD._2h8akM49fdZRv6KHq8jy75._3VQzn9yg47NIR2H1tIIeag')

    askForInformation()

    textField.innerHTML = textField.innerHTML.replaceAll('[user_name]', userName).replaceAll('[user_email]', userEmail).replaceAll('[manager_name]', managerName).replaceAll('[company]', company).replaceAll('[password]', password)
}