<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>New Receipt/Payment</title>
    <link rel="stylesheet" href="styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .required-field::after{
             content: "*";
             color: red;
        }
    </style>
</head>

<body>

<div class="container-fluid">
    <!-- NavBar Starts -->
    <nav class="navbar navbar-expand-sm navbar-light bg-light" >
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03 ">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

                <li class="nav-item mx-2">
                    <a class="nav-link" href="#">Product <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item dropdown dmenu mx-2">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop1" data-toggle="dropdown">
                        Policy Setup
                    </a>
                    <div class="dropdown-menu sm-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li>

                <li class="nav-item dropdown dmenu mx-2">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop2" data-toggle="dropdown">
                        Parameters
                    </a>
                    <div class="dropdown-menu sm-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li>

                <li class="nav-item mx-2">
                    <a class="nav-link" href="#">Application</a>
                </li>

                <li class="nav-item mx-2">
                    <a class="nav-link" href="#">Receipt</a>
                </li>

                <li class="nav-item dropdown dmenu mx-2">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop3" data-toggle="dropdown">
                        Accounting
                    </a>
                    <div class="dropdown-menu sm-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li>

                <li class="nav-item mx-2">
                    <a class="nav-link" href="#">Customer Service</a>
                </li>

                <li class="nav-item dropdown dmenu mx-2">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop4" data-toggle="dropdown">
                        Report
                    </a>
                    <div class="dropdown-menu sm-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li>
                <li class="nav-item dropdown dmenu mx-2">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop5" data-toggle="dropdown">
                        BOD
                    </a>
                    <div class="dropdown-menu sm-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li>

            </ul>
        </div>
    </nav>
    <!-- NavBar Ends -->

    <div class="row pt-3 pl-3 flex-column">
        <h2 class="  display-3" style="font-size: 30px">
            <b> Receipt/Payment(Create) </b>
        </h2>
    </div>

    <hr width="" color="#b3b3b3">

</div>

<!-- Form Container -->
<div class="container-fluid">
    <form>
        <div class="row">
            <div class="col-sm-3">

                <div class="form-group">
                    <label for="receiptNumber" class="font-weight-bold required-field">Receipt No</label>
                    <input type="text" class="form-control" id="receiptNumber">
                </div>

                <div class="form-group">
                    <label for="paymentMode" class="font-weight-bold required-field">Payment Mode</label>
                    <select class="form-control" id="paymentMode">
                        <option value="" disabled >Select One Option</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="loanAccount" class="font-weight-bold required-field">Loan Account #</label>
                    <input type="text" class="form-control" id="loanAccount">
                </div>

                <div class="form-group">
                    <label for="receiptAmount" class="font-weight-bold required-field">Receipt Amount</label>
                    <input type="number" class="form-control" id="receiptAmount">
                </div>

                <div class="form-group">
                    <label for="remark" class="font-weight-bold ">Remark</label>
                    <textarea class="form-control" id="remark" rows="3"></textarea>
                </div>
            </div>

            <div class="col-sm-3 offset-sm-4">

                <div class="form-group">
                    <label for="receiptType" class="font-weight-bold required-field">Receipt Type</label>
                    <select class="form-control" id="receiptType">
                        <option value="" disabled >Select One Option</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="receiptBasis" class="font-weight-bold required-field">Receipt Basis</label>
                    <select class="form-control" id="receiptBasis">
                        <option value="" disabled >Select One Option</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="dateOfReceipt" class="font-weight-bold required-field">Date of Receipt</label>
                    <input type="date" class="form-control" id="dateOfReceipt" placeholder="dd/mm/yy">
                </div>

                <div class="form-group">
                    <label for="receiptPurpose" class="font-weight-bold required-field">Receipt Purpose</label>
                    <select class="form-control" id="receiptPurpose">
                        <option value="" disabled>Select One Option</option>
                    </select>

                </div>

                <label class="font-weight-bold required-field">Auto Allocation</label>
                <br>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Yes</label>
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2" checked>
                    <label class="form-check-label" for="inlineRadio2" >No</label>
                </div>
            </div>
        </div>



    </form>
    <hr width="" color="#b3b3b3">
    <div class="row" style="margin-bottom:20px">
        <div class="col-sm-3 offset-sm-9">
            <button type="button" class="btn btn-primary" id="save">Save</button>
            <button type="button" class="btn btn-primary" id="clear">Clear</button>
        </div>
    </div>
</div>
</body>
</html>