(function () {
    $('#liMasters').addClass('menu-open').children('a').addClass('active');
    $('#liUserMaster a').addClass('active');
    $('#tabs').tabs();
    $('#btnAddUser').on('click', addUser);
    $('#ddlUpdateUser').on('change', getUserDetails);
    $('#btnUpdateUser').on('click', updateUser);
    $('#btnDeleteUser').on('click', deleteUser);
    $('.btnClear').on('click', clear);

    function addUser() {
        const userType = $('#ddlAddUserType').val();
        const userName = $('#txtAddUserName').val();
        const password = $('#txtAddPassword').val();

        if (userName === '') {
            toastr.warning('Enter the User Name to Save');
        } else if (password === '') {
            toastr.warning('Enter the Password to Save');
        } else {
            const data = {
                userType,
                userName,
                password
            };
            axios.post(`${currentUrl}`, data)
                .then(response => {
                    if (response.data.status) {
                        toastr.success(response.data.message);
                    } else {
                        toastr.error(response.data.message);
                    }
                });
        }
    }

    function getUserDetails() {
        const user = $('#ddlUpdateUser').val();
        if (user !== '') {
            axios.get(`${currentUrl}/${user}`)
                .then(response => {
                    $('#ddlUpdateUserType').val(response.data.userType);
                    $('#txtUpdateUserName').val(response.data.name);
                });
        }
    }

    function updateUser() {
        const user = $('#ddlUpdateUser').val();
        const newName = $('#txtUpdateUserName').val();
        const userType = $('#ddlUpdateUserType').val();
        const password = $('#txtUpdatePassword').val();

        if (user === '') {
            toastr.warning('Select the User Name to Update');
        } else if (newName === '') {
            toastr.warning('Enter the New Name for User');
        } else {
            const data = {
                newName,
                userType,
                password
            };
            axios.patch(`${currentUrl}/${user}`, data)
                .then(response => {
                    if (response.data.status) {
                        toastr.success(response.data.message);
                    } else {
                        toastr.error(response.data.message);
                    }
                });
        }
    }

    function deleteUser() {
        const user = $('#ddlDeleteUser').val();
        if (user === '') {
            toastr.warning('Select the User Name to Delete');
        } else if ($('#ddlDeleteUser option').length === 2) {
            toastr.warning('Cannot Delete the Last User');
        } else {
            deleteConfirmation('User')
                .then(swalResult => {
                    if (swalResult.isConfirmed) {
                        axios.delete(`${currentUrl}/${user}`, {
                            responseType: 'text'
                        })
                            .then(response => {
                                toastr.success(response.data);
                                clear();
                            });
                    }
                });

        }
    }

    function clear() {
        $('.form-control').val('');
        $('#ddlAddUserType,#ddlUpdateUserType').val('user');
        axios.get(`${currentUrl}/users`)
            .then(response => {
                const options = [];
                $.each(response.data.users, (index, value) => {
                    options.push(`<option value="${value.id}">${value.name}</option>`);
                });
                $('#ddlUpdateUser,#ddlDeleteUser').populateSelect(options);
            });
    }
}());
