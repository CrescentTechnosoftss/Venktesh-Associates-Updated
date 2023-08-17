(function () {
    $('#liMasters').addClass('menu-open').children('a').addClass('active');
    $('#liDeliveryBoyMaster a').addClass('active');

    $('#btnSave').on('click', save);
    $('#btnClear').on('click', clear);
    $('#btnUpdate').on('click', update);

    $('#tblDeliveryBoy tbody').on('click', '.btn-primary', function () {
        const row = $(this).closest('tr');
        $('#rowIndex').val(row.index());
        $('#deliveryBoyId').val(row.children('td:eq(0)').text());
        $('#txtDeliveryBoyName').val(row.children('td:eq(1)').text());
        $('#txtContactNo').val(row.children('td:eq(2)').text());
        $('#txtEmailId').val(row.children('td:eq(3)').text());
        $('#txtAddress').val(row.children('td:eq(4)').text());

        $('#btnSave').hide();
        $('#btnUpdate').removeClass('d-none');
    });

    $('#tblDeliveryBoy tbody').on('click', '.btn-danger', function () {
        const id = $(this).closest('tr').children('td:eq(0)').text();
        const index = $(this).closest('tr').index();
        deleteEngineer(id, index);
    });

    function save() {
        const data = {
            deliveryBoy: $('#txtDeliveryBoyName').val(),
            contact: $('#txtContactNo').val(),
            email: $('#txtEmailId').val(),
            address: $('#txtAddress').val()
        };

        if (data.deliveryBoy === '') {
            toastr.error("Enter Delivery Boy's Name");
        }
        else {
            _processing('btnSave', 'Saving');
            axios.post(`${currentUrl}`, data)
                .then(response => {
                    if (response.data.status) {
                        const btnUpdate = '<button class="btn btn-primary btn-sm"><i class="fa fa-pencil-alt"></i></button>';
                        const btnDelete = '<button class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></button>';
                        const row = `<tr>
                        <td class="d-none">${response.data.id}</td>
                        <td>${data.deliveryBoy}</td>
                        <td>${data.contact}</td>
                        <td>${data.email}</td>
                        <td>${data.address}</td>
                        <td>${btnUpdate}&nbsp;${btnDelete}</td>
                        </tr>`;
                        $('#tblDeliveryBoy').append(row);
                        clear();
                        toastr.success(response.data.message);
                    }
                    else {
                        toastr.warning(response.data.message);
                    }
                })
                .then(() => { _processed('btnSave', 'Save'); });
        }
    }

    function update() {
        const data = {
            id: $('#deliveryBoyId').val(),
            deliveryBoy: $('#txtDeliveryBoyName').val(),
            contact: $('#txtContactNo').val(),
            email: $('#txtEmailId').val(),
            address: $('#txtAddress').val()
        };

        if (data.deliveryBoy === '') {
            toastr.error("Enter Delivery Boy's Name");
        } else {
            _processing('btnUpdate', 'Updating');
            axios.patch(`${currentUrl}/${data.id}`, data)
                .then(response => {
                    if (response.data.status) {
                        const index = parseInt($('#rowIndex').val());
                        const row = $(`#tblDeliveryBoy tbody`).children(`tr:eq(${index})`);

                        row.children('td:eq(1)').text(data.deliveryBoy);
                        row.children('td:eq(2)').text(data.contact);
                        row.children('td:eq(3)').text(data.email);
                        row.children('td:eq(4)').text(data.address);
                        clear();
                        toastr.success(response.data.message);
                    }
                    else {
                        toastr.warning(response.data.message);
                    }
                }).then(() => { _processed('btnUpdate', 'Update'); })
        }
    }

    /**
     * 
     * @param {number} id 
     * @param {number} index 
     */
    function deleteEngineer(id, index) {
        deleteConfirmation('Engineer')
            .then(swalResult => {
                if (swalResult.isConfirmed) {
                    axios.delete(`${currentUrl}/${id}`)
                        .then(response => {
                            $('#tblDeliveryBoy tbody').children(`tr:eq(${index})`).remove();
                            toastr.success(response.data);
                        });
                }
            });
    }

    function clear() {
        $('#btnSave').show();
        $('#btnUpdate').addClass('d-none');
        $('#txtDeliveryBoyName,#txtContactNo,#txtEmailId,#txtAddress,#deliveryBoyId,#rowIndex').val('');
    }



    /**
     * @param {string} elemName 
     * @param {string} value 
     * @returns {void}
     */
    function _processing(elemName, value) {
        $(`#${elemName}`).prop('disabled', true).html(`<i class="fa fa-spinner fa-spin"></i>&nbsp;${value}`);
    }

    /**
     * @param {string} elemName 
     * @param {string} value 
     * @returns {void}
     */
    function _processed(elemName, value) {
        $(`#${elemName}`).prop('disabled', false).text(value);
    }
}());