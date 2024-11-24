<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-C7TMZ616ZP"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-C7TMZ616ZP');
    </script>

    <title>VancoCalc</title>
    <link rel="icon" type="image/png" href="images/favicon.png" />

    <!-- <link rel="stylesheet" href="bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link
        href="https://fonts.googleapis.com/css2?family=Raleway:wght@700;800&family=Roboto:ital,wght@0,400;0,700;1,400&display=swap"
        rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />

    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

    <!--
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.css" integrity="sha256-aa0xaJgmK/X74WM224KMQeNQC2xYKwlAt08oZqjeF0E=" crossorigin="anonymous">
    -->

    <link href="css/vancocalc.css" rel="stylesheet">

    <script type="text/javascript" src="js/mcmc.js"></script>
    <script type="text/javascript" src="js/distributions.js"></script>
    <script type="text/javascript" src="js/simple-statistics.min.js"></script>


    <!--
    <script src="jquery-3.5.1.slim.min.js"></script>
    <script src="popper.min.js"></script>
    <script src="bootstrap.min.js"></script>
    -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script> -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script>
        moment().format();
    </script>

    <!--
    <script src="Chart.bundle.min.js"></script>
    <script src="chartjs-plugin-annotation.min.js"></script>
    <script src="chartjs-plugin-datalabels.min.js"></script>
    -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"
        integrity="sha256-R4pqcOYV8lt7snxMQO/HSbVCFRPMdrhAFMH+vr9giYI=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0/dist/chartjs-plugin-datalabels.min.js"
        integrity="sha256-3kSXcicezu2sKkkqQae/hgspQC+t6zkOA0rS7QtlSyE=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-annotation@0.5.7/chartjs-plugin-annotation.min.js"
        integrity="sha256-Olnajf3o9kfkFGloISwP1TslJiWUDd7IYmfC+GdCKd4=" crossorigin="anonymous"></script>

    <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/js/tempusdominus-bootstrap-4.min.js"></script> -->
    <script type="text/javascript" src="js/tempusdominus-bootstrap-4.min.js"></script>

</head>

<body>
    <main role="main" class="container-fluid">
        <div class="row">
            <div class="col-md-3 bg-white main-heading" id="inputColumn">
                <div id="mainTitle">
                    <span id="poweredBy"><i>Powered by</i>
                        <a href="https://appliedsciences.klick.com" target="_blank">
                            <img src="images/Klick-Applied Sciences_Logo_Final_Horizontal_White.png" height="50px" />
                        </a>
                    </span>

                    <h1>VancoCalc</h1>

                    <span class="subTitle">Vancomycin Dosage Calculator</span>
                    <span class="subTitle2">Using Bayesian modeling & Pharmacokinetics</span>

                </div>

                <div id="progressContainer">

                    <svg class="checkmark" id="checkMark1" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                        viewBox="2 2 20 20">
                        <path
                            d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm4.393 7.5l-5.643 5.784-2.644-2.506-1.856 1.858 4.5 4.364 7.5-7.643-1.857-1.857z" />
                    </svg>
                    <svg class="checkmark" id="checkMark2" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                        viewBox="2 2 20 20">
                        <path
                            d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm4.393 7.5l-5.643 5.784-2.644-2.506-1.856 1.858 4.5 4.364 7.5-7.643-1.857-1.857z" />
                    </svg>
                    <svg class="checkmark" id="checkMark3" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                        viewBox="2 2 20 20">
                        <path
                            d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm4.393 7.5l-5.643 5.784-2.644-2.506-1.856 1.858 4.5 4.364 7.5-7.643-1.857-1.857z" />
                    </svg>

                    <div class="progress custom-progress" id="progressDisplay1">
                        <div id="progressBar1" class="progress-bar custom-progress-bar" role="progressbar"></div>

                    </div>
                    <div class="progress custom-progress" id="progressDisplay2">
                        <div id="progressBar2" class="progress-bar custom-progress-bar" role="progressbar"></div>
                    </div>
                </div>

                <div id="inputParameters">
                    <div id="inputCards">
                        <div class="card border border-bottom-0" id="patientInfoCard">
                            <div class="card-header" id="patientInformationHeading">
                                Patient Information
                            </div>

                            <div id="patientInfoSummary" class="infoSummary patientInfoCollapse collapse"
                                aria-labelledby="patientInformationHeading">
                                <div class="card-body">
                                    <div class="row no-gutters">
                                        <div class="col">
                                            <ul class="list-unstyled">
                                                <li><b>Age: </b><span id="patientInfoSummary_age"></span></li>
                                                <li><b>Weight: </b><span id="patientInfoSummary_weight"></span></li>
                                                <li><b>Sex: </b><span id="patientInfoSummary_sex"></span></li>
                                                <li><b>Height: </b><span id="patientInfoSummary_height"></span></li>
                                                <li><b>Creatinine: </b><span id="patientInfoSummary_creatinine"></span>
                                                </li>
                                                <li><b>Critically ill: </b>
                                                    <span id="patientInfoSummary_criticallyill"></span>
                                                </li>
                                                <li><b>Renal function: </b>
                                                    <span id="patientInfoSummary_renalFunction"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-*-auto align-self-end" style="padding-left:0.2rem;">
                                            <button type="button"
                                                class="btn btn_inputColumnSecondary btn-sm float-right"
                                                data-toggle="collapse" data-target=".patientInfoCollapse"
                                                id="btn_patientInfoEdit">Edit</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div id="patientInfoForm" class="infoForm patientInfoCollapse collapse show"
                                aria-labelledby="patientInformationHeading">
                                <div class="card-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="patientAge">Age</label>
                                            <div class="row no-gutters">
                                                <input class="form-control form-control-sm" type="text"
                                                    autocomplete="off" style="max-width: 4rem;" id="patientAge">
                                                <span style="margin-left:8px;"
                                                    class="align-self-center"><b>years</b></span>
                                                <div class="invalid-feedback">Invalid</div>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="patientWeight">Weight</label>
                                            <div class="input-group input-group-sm">
                                                <input type="text" class="form-control" autocomplete="off"
                                                    style="max-width: 4rem; border-top-right-radius: 0.2rem; border-bottom-right-radius: 0.2rem;"
                                                    id="patientWeight">

                                                <div class="btn-group btn-group-toggle"
                                                    style="max-width: 9rem;margin-left:1rem;" data-toggle="buttons">
                                                    <label class="btn btn-sm btn-custom-radio">
                                                        <input type="radio" name="weightUnits" value="kg"
                                                            autocomplete="off" checked> kg
                                                    </label>
                                                    <label class="btn btn-sm btn-custom-radio">
                                                        <input type="radio" name="weightUnits" value="lb"
                                                            autocomplete="off"> lb
                                                    </label>
                                                </div>

                                                <div class="invalid-feedback">Invalid</div>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="patientSex">Sex</label>
                                            <div class="input-group btn-group btn-group-toggle"
                                                style="max-width: 10rem;" data-toggle="buttons">
                                                <label class="btn btn-sm btn-custom-radio active">
                                                    <input type="radio" name="patientSex" value="male"
                                                        autocomplete="off"> male
                                                </label>
                                                <label class="btn btn-sm btn-custom-radio">
                                                    <input type="radio" name="patientSex" value="female"
                                                        autocomplete="off">
                                                    female
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="patientHeight">Height</label>
                                            <div class="input-group input-group-sm">
                                                <input class="form-control" autocomplete="off"
                                                    style="max-width: 4rem; border-top-right-radius: 0.2rem; border-bottom-right-radius: 0.2rem;"
                                                    id="patientHeight">

                                                <div class="btn-group btn-group-toggle"
                                                    style="max-width: 9rem;margin-left:1rem;" data-toggle="buttons">
                                                    <label class="btn btn-sm btn-custom-radio active">
                                                        <input type="radio" name="heightUnits" value="in"
                                                            autocomplete="off" checked> in
                                                    </label>
                                                    <label class="btn btn-sm btn-custom-radio">
                                                        <input type="radio" name="heightUnits" value="cm"
                                                            autocomplete="off"> cm
                                                    </label>
                                                </div>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="patientCreatinine">Creatinine</label>
                                            <div class="input-group input-group-sm">
                                                <input class="form-control" autocomplete="off"
                                                    style="max-width: 4rem; border-top-right-radius: 0.2rem; border-bottom-right-radius: 0.2rem;"
                                                    id="patientCreatinine">

                                                <div class="btn-group btn-group-toggle"
                                                    style="max-width: 12rem;margin-left:1rem;" data-toggle="buttons">
                                                    <label class="btn btn-sm btn-custom-radio active">
                                                        <input type="radio" name="creatinineUnits" value="mg/dL"
                                                            autocomplete="off" checked> mg/dL
                                                    </label>
                                                    <label class="btn btn-sm btn-custom-radio">
                                                        <input type="radio" name="creatinineUnits" value="umol/L"
                                                            autocomplete="off"> &micro;mol/L
                                                    </label>
                                                </div>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="patientCriticallyIll">Critically ill</label>
                                            <div class="input-group btn-group btn-group-toggle"
                                                style="max-width: 10rem;" data-toggle="buttons">
                                                <label class="btn btn-sm btn-custom-radio active">
                                                    <input type="radio" name="patientCriticallyIll" value="no"
                                                        autocomplete="off" checked> no
                                                </label>
                                                <label class="btn btn-sm btn-custom-radio">
                                                    <input type="radio" name="patientCriticallyIll" value="yes"
                                                        autocomplete="off">
                                                    yes
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Renal function</label>

                                            <div id="renalFunction_moreInfo" style="display:inline;">
                                                <a tabindex="0" data-toggle="popover"
                                                    data-container="#renalFunction_moreInfo" data-trigger="click"
                                                    data-content="This tool may not be appropriate for patients on any renal replacement such as dialysis."
                                                    style="display:inline;font-size:1rem;color:rgb(var(--primary-color-darker));margin-left:0.25rem;">
                                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                                        class="bi bi-info-circle" fill="currentColor"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd"
                                                            d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                                        <path
                                                            d="M8.93 6.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588z" />
                                                        <circle cx="8" cy="4.5" r="1" />
                                                    </svg>
                                                </a>
                                            </div>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" autocomplete="off"
                                                    id="noRenalReplacementConfirmation">
                                                <label class="custom-control-label" style="padding-top: 4px;"
                                                    for="noRenalReplacementConfirmation">
                                                    <b>Confirm no renal replacement</b></label>
                                            </div>
                                        </div>

                                        <button type="button" class="btn btn_inputColumnPrimary btn-sm float-left"
                                            style="margin-top:.5rem;" data-toggle="collapse"
                                            data-target=".patientInfoCollapse" id="btn_patientInfoConfirm">
                                            Continue to Dose History</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card rounded-0 border border-top-0 border-bottom-0" id="doseHistoryCard">
                            <div class="card-header" id="doseHistoryHeading">
                                Dose History
                            </div>
                            <div id="doseHistorySummary" class="collapse infoSummary doseHistoryCollapse"
                                aria-labelledby="doseHistoryHeading">
                                <div class="card-body">
                                    <div class="row no-gutters">
                                        <div class="col">
                                            <ul class="list-unstyled">
                                                <li style="margin-bottom:0.3rem;"><b>Dose history available: </b><span
                                                        id="doseHistorySummary_available"></span>
                                                </li>
                                                <li class="loadingDose_summary_noloadingdose"
                                                    style="display: none; margin-bottom: 0.3rem; margin-top: 0.3rem;">
                                                    <b>Loading dose:</b> no
                                                </li>
                                                <li class="loadingDose_summary"
                                                    style="display:none; color: rgb(var(--primary-color)); margin-bottom: 0.3rem; margin-top: 0.3rem;">
                                                    <b>Loading dose details:</b>
                                                </li>
                                                <li class="loadingDose_summary" style="display: none;">
                                                    <b>Dose amount: </b><span id="loadingDoseSummary_amount"></span>
                                                </li>
                                                <li class="loadingDose_summary" style="display: none;">
                                                    <b>Infusion time: </b><span
                                                        id="loadingDoseSummary_infusiontime"></span>
                                                </li>
                                                <li class="loadingDose_summary" style="display: none;">
                                                    <b>Start time: </b><br /><span
                                                        id="loadingDoseSummary_startTime"></span>
                                                </li>

                                                <li class="doseHistory1_summary"
                                                    style="color: rgb(var(--primary-color)); margin-bottom: 0.3rem; margin-top: 0.3rem;">
                                                    <b>Maintenance dose details:</b>
                                                </li>
                                                <li class="doseHistory1_summary">
                                                    <b>Dose amount: </b><span id="doseHistorySummary_amount"></span>
                                                </li>
                                                <li class="doseHistory1_summary">
                                                    <b>Dose interval: </b><span id="doseHistorySummary_interval"></span>
                                                </li>
                                                <li class="doseHistory1_summary">
                                                    <b>Infusion time: </b><span
                                                        id="doseHistorySummary_infusiontime"></span>
                                                </li>
                                                <li class="doseHistory1_summary">
                                                    <b>Start time: </b><br /><span
                                                        id="doseHistorySummary_startTime"></span>
                                                </li>
                                                <li class="doseHistory1_summary">
                                                    <b>Number of maintenance doses given: </b><span
                                                        id="doseHistorySummary_numdoses"></span>
                                                </li>

                                                <li class="doseHistory2_summary_noadditionaldose"
                                                    style="display: none; margin-bottom: 0.3rem; margin-top: 0.3rem;">
                                                    <b>Additional dose:</b> no
                                                </li>
                                                <li class="doseHistory2_summary"
                                                    style="display:none; color: rgb(var(--primary-color)); margin-bottom: 0.3rem; margin-top: 0.3rem;">
                                                    <b>Additional maintenance dose details:</b>
                                                </li>
                                                <li class="doseHistory2_summary" style="display: none;">
                                                    <b>Dose amount: </b><span id="doseHistory2Summary_amount"></span>
                                                </li>
                                                <li class="doseHistory2_summary" style="display: none;">
                                                    <b>Dose interval: </b><span
                                                        id="doseHistory2Summary_interval"></span>
                                                </li>
                                                <li class="doseHistory2_summary" style="display: none;">
                                                    <b>Infusion time: </b><span
                                                        id="doseHistory2Summary_infusiontime"></span>
                                                </li>
                                                <li class="doseHistory2_summary" style="display: none;">
                                                    <b>Start time: </b><br /><span
                                                        id="doseHistory2Summary_startTime"></span>
                                                </li>
                                                <li class="doseHistory2_summary" style="display: none;">
                                                    <b>Number of maintenance doses given: </b><span
                                                        id="doseHistory2Summary_numdoses"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-*-auto align-self-end" style="padding-left:0.2rem;">
                                            <button type="button"
                                                class="btn btn_inputColumnSecondary btn-sm float-right"
                                                data-toggle="collapse" data-target=".doseHistoryCollapse"
                                                id="btn_doseHistoryEdit">Edit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="doseHistoryForm" class="collapse infoForm doseHistoryCollapse"
                                aria-labelledby="doseHistoryHeading">
                                <div class="card-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="doseHistoryAvailable">Dose history available</label>
                                            <div class="input-group btn-group btn-group-toggle"
                                                style="max-width: 10rem;" data-toggle="buttons">
                                                <label class="btn btn-sm btn-custom-radio active">
                                                    <input type="radio" name="doseHistoryAvailable" value="yes"
                                                        autocomplete="off" checked> Yes
                                                </label>
                                                <label class="btn btn-sm btn-custom-radio">
                                                    <input type="radio" name="doseHistoryAvailable" value="no"
                                                        autocomplete="off">
                                                    No
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group doseHistory1_info" style="margin-top: 0.8rem;">
                                            <div class="custom-checkbox">
                                                <input type="checkbox" class="css-checkbox " autocomplete="off"
                                                    id="addLoadingDose">
                                                <label class="css-label " for="addLoadingDose">
                                                    <span class="fa fa-plus"></span>
                                                    <span class="fa fa-minus"></span>
                                                    <b style="padding-top: 4px; margin-left: 6px;"
                                                        id="addLoadingDoseLabel">Add loading dose</b>
                                                </label>
                                            </div>
                                        </div>


                                        <div class="loadingDose_info"
                                            style="display:none; color: rgb(var(--primary-color));margin-bottom: 0.3rem;">
                                            <b>Loading dose details:</b>
                                        </div>
                                        <div class="form-group loadingDose_info" style="display:none;">
                                            <label for="loadingDose_amount">Amount</label>
                                            <div class="row no-gutters">
                                                <input class="form-control form-control-sm" type="text"
                                                    autocomplete="off" style="max-width: 4rem;" id="loadingDose_amount">
                                                <span style="margin-left:4px;"
                                                    class="align-self-center"><b>mg</b></span>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group loadingDose_info" style="display:none;">
                                            <label>Time loading dose given</label>
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="loadingDose_time"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="loadingDose_time_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#loadingDose_time"
                                                                style="max-width: 5rem;" />
                                                            <div class="input-group-append"
                                                                data-target="#loadingDose_time"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="loadingDose_date"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="loadingDose_date_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#loadingDose_date"
                                                                style="margin-left:8px;" />
                                                            <div class="input-group-append"
                                                                data-target="#loadingDose_date"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-calendar-o"></i></div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="row no-gutters">
                                                <div id="loadingDose_invalidTime" class="invalid-feedback"
                                                    style="margin-top: -0.25rem;">Invalid</div>
                                            </div>
                                        </div>


                                        <div class="doseHistory1_info"
                                            style="color: rgb(var(--primary-color));margin-bottom: 0.3rem;margin-top: 0.5rem;">
                                            <b>Maintenance dose details:</b>
                                        </div>


                                        <div class="form-row doseHistory1_info">
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="doseHistory_amount">Amount</label>
                                                    <div class="row no-gutters">
                                                        <input class="form-control form-control-sm" type="text"
                                                            autocomplete="off" style="max-width: 4rem;"
                                                            id="doseHistory_amount">
                                                        <span style="margin-left:4px;"
                                                            class="align-self-center"><b>mg</b></span>
                                                        <div class="invalid-feedback">Invalid</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="doseHistory_interval">Interval</label>
                                                    <div class="row no-gutters">
                                                        <span style="margin-right:4px;" class="align-self-center">
                                                            <b>q</b>
                                                        </span>
                                                        <input class="form-control form-control-sm" type="text"
                                                            autocomplete="off" style="max-width: 4rem;"
                                                            id="doseHistory_interval">
                                                        <span style="margin-left:4px;" class="align-self-center">
                                                            <b>h</b>
                                                        </span>
                                                        <div class="invalid-feedback">Invalid</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group doseHistory1_info">
                                            <label for="doseHistory_infusiontime">Infusion
                                                time</label>
                                            <div class="row no-gutters">
                                                <input class="form-control form-control-sm" type="text"
                                                    style="max-width: 4rem;" autocomplete="off"
                                                    id="doseHistory_infusiontime">
                                                <span style="margin-left:4px;"
                                                    class="align-self-center"><b>hr(s)</b></span>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group doseHistory1_info">
                                            <label>Start time of first infusion</label>
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="doseStart_time"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="doseStart_time_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#doseStart_time"
                                                                style="max-width: 5rem;" />
                                                            <div class="input-group-append"
                                                                data-target="#doseStart_time"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="doseStart_date"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="doseStart_date_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#doseStart_date"
                                                                style="margin-left:8px;" />
                                                            <div class="input-group-append"
                                                                data-target="#doseStart_date"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-calendar-o"></i></div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="row no-gutters">
                                                <div id="doseStart_invalidTime" class="invalid-feedback"
                                                    style="margin-top: -0.25rem;">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group doseHistory1_info">
                                            <label for="doseHistory_numdoses">Number of doses given</label>
                                            <input class="form-control form-control-sm" style="max-width: 3rem;"
                                                autocomplete="off" id="doseHistory_numdoses">
                                            <div class="invalid-feedback">Invalid</div>
                                        </div>

                                        <div class="form-group doseHistory1_info">
                                            <div class="custom-checkbox">
                                                <input type="checkbox" class="css-checkbox " autocomplete="off"
                                                    id="addAdditionalDose">
                                                <label class="css-label " for="addAdditionalDose">
                                                    <span class="fa fa-plus"></span>
                                                    <span class="fa fa-minus"></span>
                                                    <b style="padding-top: 4px; margin-left: 6px;"
                                                        id="additionalDoseLabel">Add additional dose</b>
                                                </label>
                                            </div>
                                        </div>

                                        <div class="doseHistory2_info"
                                            style="display:none;color: rgb(var(--primary-color));margin-bottom: 0.3rem;margin-top: 0.5rem;">
                                            <b>Additional maintenance dose details:</b>
                                        </div>


                                        <div class="form-row doseHistory2_info" style="display:none;">
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="doseHistory2_amount">Amount</label>
                                                    <div class="row no-gutters">
                                                        <input class="form-control form-control-sm" type="text"
                                                            autocomplete="off" style="max-width: 4rem;"
                                                            id="doseHistory2_amount">
                                                        <span style="margin-left:4px;"
                                                            class="align-self-center"><b>mg</b></span>
                                                        <div class="invalid-feedback">Invalid</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="doseHistory2_interval">Interval</label>
                                                    <div class="row no-gutters">
                                                        <span style="margin-right:4px;" class="align-self-center">
                                                            <b>q</b>
                                                        </span>
                                                        <input class="form-control form-control-sm" type="text"
                                                            autocomplete="off" style="max-width: 4rem;"
                                                            id="doseHistory2_interval">
                                                        <span style="margin-left:4px;" class="align-self-center">
                                                            <b>h</b>
                                                        </span>
                                                        <div class="invalid-feedback">Invalid</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group doseHistory2_info" style="display:none;">
                                            <label for="doseHistory2_infusiontime">Infusion
                                                time</label>
                                            <div class="row no-gutters">
                                                <input class="form-control form-control-sm" type="text"
                                                    style="max-width: 4rem;" autocomplete="off"
                                                    id="doseHistory2_infusiontime">
                                                <span style="margin-left:4px;"
                                                    class="align-self-center"><b>hr(s)</b></span>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group doseHistory2_info" style="display:none;">
                                            <label>Start time of first infusion</label>
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="doseStart2_time"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="doseStart2_time_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#doseStart2_time"
                                                                style="max-width: 5rem;" />
                                                            <div class="input-group-append"
                                                                data-target="#doseStart2_time"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="doseStart2_date"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="doseStart2_date_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#doseStart2_date"
                                                                style="margin-left:8px;" />
                                                            <div class="input-group-append"
                                                                data-target="#doseStart2_date"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-calendar-o"></i></div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="row no-gutters">
                                                <div id="doseStart2_invalidTime" class="invalid-feedback"
                                                    style="margin-top: -0.25rem;">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group doseHistory2_info" style="display:none;">
                                            <label for="doseHistory2_numdoses">Number of doses given</label>
                                            <input class="form-control form-control-sm" style="max-width: 3rem;"
                                                autocomplete="off" id="doseHistory2_numdoses">
                                            <div class="invalid-feedback">Invalid</div>
                                        </div>


                                        <button type="button" class="btn btn_inputColumnPrimary btn-sm float-left"
                                            style="margin-top:.5rem;" data-toggle="collapse"
                                            data-target=".doseHistoryCollapse" id="btn_doseHistoryConfirm">
                                            Continue to Drug Levels</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card border border-top-0" id="drugLevelsCard">
                            <div class="card-header" id="drugLevelsHeading">
                                Drug Levels
                            </div>
                            <div id="drugLevelsSummary" class="collapse infoSummary drugLevelsCollapse"
                                aria-labelledby="drugLevelsHeading">
                                <div class="card-body">
                                    <div class="row no-gutters">
                                        <div class="col">
                                            <ul class="list-unstyled">
                                                <li style="margin-bottom:0.3rem;"><b>Drug levels available: </b><span
                                                        id="drugLevelsSummary_available"></span>
                                                </li>
                                                <li id="noDrugLevels_info" style="display: none;">
                                                    Vancomycin dosing will be calculated using population
                                                    pharmacokinetic parameters.
                                                </li>
                                                <li class="firstLevelSummary"><b>Drug level #1: </b><span
                                                        id="drugLevelsSummary_measurement1Amount"></span>
                                                </li>
                                                <li class="firstLevelSummary"><b>Time measurement taken: </b><br /><span
                                                        id="drugLevelsSummary_measurement1Time"></span>
                                                </li>
                                                <li class="firstLevelSummary">
                                                    <span id="drugLevelsSummary_measurement1Hours"></span>
                                                </li>
                                                <li class="firstLevelSummary"
                                                    style="margin-bottom:0.3rem;margin-top:0.5rem;"><b>Additional level:
                                                    </b><span id="drugLevelsSummary_additionalAvailable"></span>
                                                </li>
                                                <li class="additionalLevelSummary" style="display: none;"><b>Drug level
                                                        #2:
                                                    </b><span id="drugLevelsSummary_measurement2Amount"></span>
                                                </li>
                                                <li class="additionalLevelSummary" style="display: none;"><b>Time
                                                        measurement taken: </b><br /><span
                                                        id="drugLevelsSummary_measurement2Time"></span>
                                                </li>
                                                <li class="additionalLevelSummary" style="display: none;">
                                                    <span id="drugLevelsSummary_measurement2Hours"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-*-auto align-self-end" style="padding-left:0.2rem;">
                                            <button type="button"
                                                class="btn btn_inputColumnSecondary btn-sm float-right"
                                                data-toggle="collapse" data-target=".drugLevelsCollapse"
                                                id="btn_drugLevelsEdit">Edit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="drugLevelsForm" class="collapse infoForm drugLevelsCollapse"
                                aria-labelledby="drugLevelsHeading">
                                <div class="card-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="drugLevelsAvailable">Drug level(s) available</label>
                                            <div class="input-group btn-group btn-group-toggle"
                                                style="max-width: 10rem;" data-toggle="buttons">
                                                <label class="btn btn-sm btn-custom-radio active">
                                                    <input type="radio" name="drugLevelsAvailable" value="yes"
                                                        autocomplete="off" checked> Yes
                                                </label>
                                                <label class="btn btn-sm btn-custom-radio">
                                                    <input type="radio" name="drugLevelsAvailable" value="no"
                                                        autocomplete="off">
                                                    No
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group measurement1_info">
                                            <label for="measurement1_amount">Drug level #1</label>
                                            <div class="row no-gutters">
                                                <input class="form-control form-control-sm" type="text"
                                                    autocomplete="off" style="max-width: 4rem;"
                                                    id="measurement1_amount">
                                                <span style="margin-left:4px;"
                                                    class="align-self-center"><b>mcg/mL</b></span>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group measurement1_info">
                                            <label>Time measurement taken</label>
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="measurement1_time"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="measurement1_time_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#measurement1_time"
                                                                style="max-width: 5rem;" />
                                                            <div class="input-group-append"
                                                                data-target="#measurement1_time"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="measurement1_date"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="measurement1_date_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#measurement1_date"
                                                                style="margin-left:8px;" />
                                                            <div class="input-group-append"
                                                                data-target="#measurement1_date"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-calendar-o"></i></div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="row no-gutters">
                                                <div id="measurement1_invalidTime" class="invalid-feedback"
                                                    style="margin-top: -0.25rem;">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group measurement1_info">
                                            <div class="custom-checkbox">
                                                <input type="checkbox" class="css-checkbox " autocomplete="off"
                                                    id="addAdditionalLevel">
                                                <label class="css-label " for="addAdditionalLevel">
                                                    <span class="fa fa-plus"></span>
                                                    <span class="fa fa-minus"></span>
                                                    <b style="padding-top: 4px; margin-left: 6px;"
                                                        id="additionalLevelLabel">Add additional level</b>
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-group measurement2_info" style="display:none;">
                                            <label for="measurement2_amount">Drug level #2</label>
                                            <div class="row no-gutters">
                                                <input class="form-control form-control-sm" type="text"
                                                    autocomplete="off" style="max-width: 4rem;"
                                                    id="measurement2_amount">
                                                <span style="margin-left:4px;"
                                                    class="align-self-center"><b>mcg/mL</b></span>
                                                <div class="invalid-feedback">Invalid</div>
                                            </div>
                                        </div>
                                        <div class="form-group measurement2_info" style="display:none;">
                                            <label>Time measurement taken</label>
                                            <div class="row no-gutters">
                                                <div class="col-auto">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="measurement2_time"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="measurement2_time_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#measurement2_time"
                                                                style="max-width: 5rem;" />
                                                            <div class="input-group-append"
                                                                data-target="#measurement2_time"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-clock-o"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group">
                                                        <div class="input-group date" id="measurement2_date"
                                                            data-target-input="nearest">
                                                            <input type="text" autocomplete="off"
                                                                id="measurement2_date_input"
                                                                class="form-control form-control-sm border-right-0 datetimepicker-input"
                                                                data-target="#measurement2_date"
                                                                style="margin-left:8px;" />
                                                            <div class="input-group-append"
                                                                data-target="#measurement2_date"
                                                                data-toggle="datetimepicker">
                                                                <div class="input-group-text"><i
                                                                        class="fa fa-calendar-o"></i></div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="row no-gutters">
                                                <div id="measurement2_invalidTime" class="invalid-feedback"
                                                    style="margin-top: -0.25rem;">Invalid</div>
                                            </div>
                                        </div>

                                        <button type="button" class="btn btn_inputColumnPrimary btn-sm float-left"
                                            style="margin-top:.5rem;" data-toggle="collapse"
                                            data-target=".drugLevelsCollapse" id="btn_drugLevelsConfirm">
                                            Calculate Optimal Dose</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn_inputColumnPrimary btn-sm btn-block" id="btn_clearAll">Clear
                        All</button>

                </div>
            </div>

            <div class="col" id="outputColumn">
                <div id="bannerWarning" class="alert alert-warning alert-dismissible collapse" role="alert"
                    style="margin-top:-1rem;">
                    <span class="warning-text"></span>

                    <button id="btn_warningClose" type="button" class="close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="row" id="target_row">
                    <div class="col" style="padding-bottom: 1rem;">
                        <div id="calcDose">
                            <h6>Suggested Dose</h6>
                            <table class="table table-sm table-borderless w-auto">
                                <tbody>
                                    <tr>
                                        <td class="align-middle" style="width:55%;">Dose</td>
                                        <td class="align-middle">
                                            <input type="text" class="form-control form-control-sm"
                                                style="max-width: 4rem;" id="doseSchedule_amount">
                                            <span style="margin-left:3px;">mg</span>
                                            <div class="suggestedDoseInvalid">Invalid</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-middle">Frequency</td>
                                        <td class="align-middle">
                                            <input type="text" class="form-control form-control-sm"
                                                style="max-width: 4rem;" id="doseSchedule_interval">
                                            <span style="margin-left:3px;">hrs</span>
                                            <div class="suggestedDoseInvalid">Invalid</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-middle">Infusion Time</td>
                                        <td class="align-middle">
                                            <input type="text" class="form-control form-control-sm"
                                                style="max-width: 4rem;" id="doseSchedule_infusiontime">
                                            <span style="margin-left:3px;">hrs</span>
                                            <div class="suggestedDoseInvalid">Invalid</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="align-middle"><button type="button" id="btn_recalculate"
                                                class="btn btn_outputColumnPrimary btn-block btn-sm">Recalculate</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="dropdown-divider currentDoseSection"></div>
                        <div id="currentDose" class="currentDoseSection">
                            <h6>Current Dosing Schedule</h6>
                            <table class="table table-sm table-borderless">
                                <tbody>
                                    <tr id="currentDose_pk_loadingdose">

                                    </tr>
                                    <tr>
                                        <td style="width:35%"><b>Dose</b></td>
                                        <td><span id="currentDose_pk_summary">--- mg</span></td>
                                    </tr>
                                    <tr>
                                        <td><b>AUC<sub>24</sub>/MIC</b></td>
                                        <td><span id="currentDose_pk_auc">---</span> mcg*hr/mL</td>
                                    </tr>
                                    <tr>
                                        <td><b>Peak</b></td>
                                        <td><span id="currentDose_pk_peak">---</span> mcg/mL</td>
                                    </tr>
                                    <tr>
                                        <td><b>Trough</b></td>
                                        <td><span id="currentDose_pk_trough">---</span> mcg/mL</td>
                                    </tr>

                                </tbody>
                            </table>

                        </div>

                    </div>
                    <div id="optionsSection" class="col-sm-8 my-3 my-md-0 px-0" style="padding-bottom: 1rem;">
                        <div class="row no-gutters">
                            <div class="col-5">
                                <h6>Compare Dosing Options</h6>
                            </div>
                            <div class="col-7">
                                <div id="editTargetSection" class="" style="margin-bottom: 0.5rem;">
                                    <div id="editTargetHeader" class="text-right">
                                        <span class="target_badge" style="vertical-align: middle;">Target:</span> <span
                                            id="targetText" style="vertical-align: middle;"> AUC<sub>24</sub> 400 - 600
                                            mcg*hr/mL</span>
                                        <button type="button" id="btn_editTarget"
                                            class="btn btn_outputColumnPrimary btn-sm">
                                            EDIT (Trough/AUC)
                                        </button>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div id="targetEditor" style="display:none;">
                                                <div class="form-group">
                                                    <label for="targetType">Target type</label>
                                                    <div class="input-group btn-group btn-group-toggle"
                                                        style="max-width: 10rem;" data-toggle="buttons">
                                                        <label
                                                            class="btn btn-sm btn-custom-radio-secondary editTargetButton active">
                                                            <input type="radio" name="targetType" value="auc"
                                                                autocomplete="off" checked> AUC<sub>24</sub>
                                                        </label>
                                                        <label
                                                            class="btn btn-sm btn-custom-radio-secondary editTargetButton">
                                                            <input type="radio" name="targetType" value="trough"
                                                                autocomplete="off">
                                                            Trough
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label for="targetMin">Min</label>
                                                            <div class="row no-gutters">
                                                                <input class="form-control form-control-sm" type="text"
                                                                    autocomplete="off" style="max-width: 4rem;"
                                                                    id="targetMin">
                                                                <span style="margin-left:4px;"
                                                                    class="align-self-center"><b>mg</b></span>
                                                                <div class="invalid-feedback">Invalid</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label for="targetMax">Max</label>
                                                            <div class="row no-gutters">
                                                                <input class="form-control form-control-sm" type="text"
                                                                    autocomplete="off" style="max-width: 4rem;"
                                                                    id="targetMax">
                                                                <span style="margin-left:4px;"
                                                                    class="align-self-center">
                                                                    <b>h</b>
                                                                </span>
                                                                <div class="invalid-feedback">Invalid</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>


                        <ul class="nav nav-tabs nav-justified" id="dosingFrequenciesTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="q8h-tab" data-toggle="pill" href="#q8h-content"
                                    role="tab" aria-controls="q8h" aria-selected="true">q8h</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="q12h-tab" data-toggle="pill" href="#q12h-content" role="tab"
                                    aria-controls="q12h" aria-selected="false">q12h</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="q24h-tab" data-toggle="pill" href="#q24h-content" role="tab"
                                    aria-controls="q24h" aria-selected="false">q24h</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="q36h-tab" data-toggle="pill" href="#q36h-content" role="tab"
                                    aria-controls="q36h" aria-selected="false">q36h</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="q48h-tab" data-toggle="pill" href="#q48h-content" role="tab"
                                    aria-controls="q48h" aria-selected="false">q48h</a>
                            </li>
                        </ul>
                        <div class="tab-content border rounded-bottom border-top-0" id="dosingFrequencies-tabContent">
                            <div class="tab-pane fade show active" id="q8h-content" role="tabpanel"
                                aria-labelledby="q8h-tab">
                                <div class="table-responsive">
                                    <table class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="align-middle"><b>Dose</b></th>
                                                <th scope="col" class="align-middle">
                                                    <b>AUC<sub>24</sub>/MIC</b><br>(mcg*hr/mL)</th>
                                                <th scope="col" class="align-middle"><b>Peak</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle"><b>Trough</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody id="dosingOptionsTable_q8h">
                                            <tr>
                                                <td>-- mg</td>
                                                <td> -- </td>
                                                <td> -- </td>
                                                <td> -- </td>
                                                <td> <button class="tableSelectButtons btn btn-sm mb-0 py-0"
                                                        disabled>Select</button> </td>
                                            </tr>
                                            <tr>
                                                <td>-- mg</td>
                                                <td> -- </td>
                                                <td> -- </td>
                                                <td> -- </td>
                                                <td> <button class="tableSelectButtons btn btn-sm mb-0 py-0"
                                                        disabled>Select</button> </td>
                                            </tr>
                                            <tr>
                                                <td>-- mg</td>
                                                <td> -- </td>
                                                <td> -- </td>
                                                <td> -- </td>
                                                <td> <button class="tableSelectButtons btn btn-sm mb-0 py-0"
                                                        disabled>Select</button> </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="q12h-content" role="tabpanel" aria-labelledby="q12h-tab">
                                <div class="table-responsive">

                                    <table class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="align-middle"><b>Dose</b></th>
                                                <th scope="col" class="align-middle">
                                                    <b>AUC<sub>24</sub>/MIC</b><br>(mcg*hr/mL)</th>
                                                <th scope="col" class="align-middle"><b>Peak</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle"><b>Trough</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody id="dosingOptionsTable_q12h">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="q24h-content" role="tabpanel" aria-labelledby="q24h-tab">
                                <div class="table-responsive">

                                    <table class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="align-middle"><b>Dose</b></th>
                                                <th scope="col" class="align-middle">
                                                    <b>AUC<sub>24</sub>/MIC</b><br>(mcg*hr/mL)</th>
                                                <th scope="col" class="align-middle"><b>Peak</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle"><b>Trough</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody id="dosingOptionsTable_q24h">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="q36h-content" role="tabpanel" aria-labelledby="q36h-tab">
                                <div class="table-responsive">

                                    <table class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="align-middle"><b>Dose</b></th>
                                                <th scope="col" class="align-middle">
                                                    <b>AUC<sub>24</sub>/MIC</b><br>(mcg*hr/mL)</th>
                                                <th scope="col" class="align-middle"><b>Peak</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle"><b>Trough</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody id="dosingOptionsTable_q36h">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="q48h-content" role="tabpanel" aria-labelledby="q48h-tab">
                                <div class="table-responsive">

                                    <table class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="align-middle"><b>Dose</b></th>
                                                <th scope="col" class="align-middle">
                                                    <b>AUC<sub>24</sub>/MIC</b><br>(mcg*hr/mL)</th>
                                                <th scope="col" class="align-middle"><b>Peak</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle"><b>Trough</b><br>(mcg/mL)</th>
                                                <th scope="col" class="align-middle">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody id="dosingOptionsTable_q48h">
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="row" id="globalParameters" style="margin-top: 0.25rem;font-size: 0.8rem;">
                            <div class="col">
                                Infusion times are based on a maximum infusion rate of 1000 mg/hr
                                <br />
                                MIC:
                                <span id="globalParameters_mic_text">1.0</span>
                                <input class="form-control form-control-sm globalParameters" type="text"
                                    autocomplete="off"
                                    style="max-width: 3rem; display:inline-block;text-align: center;display:none;"
                                    id="globalParameters_mic" value=""> mcg/mL
                                <button type="button" id="btn_editMIC"
                                    class="btn btn-sm btn_outputColumnSecondary badge" style="margin-bottom: 0;">
                                    Edit
                                </button>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="loadingContainer">
                    <div class="loadingSpinner justify-content-center collapse">
                        <div class="spinner-border spinner-border-sm" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                </div>

                <div class="row" id="pk_chart_row">
                    <div id="predictedPK" class="col">

                        <h6>Predicted PK</h6>
                        <table class="table table-sm table-borderless">
                            <tbody>
                                <tr>
                                    <td><b>Dose</b></td>
                                    <td><span id="predicted_pk_summary">--- mg</span></td>
                                </tr>
                                <tr>
                                    <td style="width:35%"><b>AUC<sub>24</sub>/MIC</b></td>
                                    <td><span id="predicted_pk_auc">--- mcg*hr/mL</span></td>
                                </tr>
                                <tr>
                                    <td><b>Peak</b></td>
                                    <td><span id="predicted_pk_peak">--- mcg/mL</span></td>
                                </tr>
                                <tr>
                                    <td><b>Trough</b></td>
                                    <td><span id="predicted_pk_trough">--- mcg/mL</span></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <div class="col-sm-8">
                        <div class="row">
                            <div id="chartInteractions" style="display:none;">Add trendlines:</div>
                        </div>

                        <div class="row">
                            <div id="chartContainer">
                                <canvas id="myChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" id="info_row">
                    <div class="col-md-4">
                        <div class="row">
                            <div id="calculationInformation" class="col">
                                <div class="divider divider-secondary"></div>
                                <h6>Calculation Information</h6>
                                <table class="table table-sm table-borderless">
                                    <tbody>
                                        <tr>
                                            <td class="w-50"><b>Calculation method</b></td>
                                            <td><span id="calculationMethod">---</span></td>
                                        </tr>
                                        <tr>
                                            <td><b>PK model</b></td>
                                            <td><span id="predicted_pk_model">---</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col">
                                <div class="divider divider-tertiary"></div>
                                <h6>Kinetic Parameters</h6>
                                <table class="table table-sm table-borderless">
                                    <tbody>
                                        <tr>
                                            <td style="width: 60%;"><b>Creatinine clearance (CrCl)</b></td>
                                            <td><span id="kineticParameters_crcl">---</span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Elimination constant (K<sub>el</sub>)</b></td>
                                            <td><span id="kineticParameters_kel">---</span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Volume of distribution (Vd) &plusmn; SD</b></td>
                                            <td><span id="kineticParameters_vd">---</span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Clearance (CL<sub>vanco</sub>) &plusmn; SD</b></td>
                                            <td><span id="kineticParameters_cl">---</span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Half-life</b>
                                                <div id="halfLife_moreInfo" style="display:inline;">
                                                    <a tabindex="0" data-toggle="popover"
                                                        data-container="#halfLife_moreInfo" data-trigger="click"
                                                        data-content="<table class='table table-sm'>
                                                            <thead>
                                                              <tr>
                                                                <th scope='col' class='text-center'># Half lives</th>
                                                                <th scope='col' class='text-center'>% Steady State</th>
                                                              </tr>
                                                            </thead>
                                                            <tbody>
                                                              <tr>
                                                                <td class='text-center'>1</td>
                                                                <td class='text-center'>50%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>2</td>
                                                                <td class='text-center'>75%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>3</td>
                                                                <td class='text-center'>87.5%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>4</td>
                                                                <td class='text-center'>93.8%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>5</td>
                                                                <td class='text-center'>96.9%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>6</td>
                                                                <td class='text-center'>98.4%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>7</td>
                                                                <td class='text-center'>99.2%</td>
                                                              </tr>
                                                              <tr>
                                                                <td class='text-center'>8</td>
                                                                <td class='text-center'>99.6%</td>
                                                              </tr>
                                                            </tbody>
                                                          </table>"
                                                        style="display:inline;font-size:1rem;color:rgb(var(--primary-color-darker));margin-left:0.25rem;">
                                                        <svg width="1em" height="1em" viewBox="0 0 16 16"
                                                            class="bi bi-info-circle" fill="currentColor"
                                                            xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd"
                                                                d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                                            <path
                                                                d="M8.93 6.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588z" />
                                                            <circle cx="8" cy="4.5" r="1" />
                                                        </svg>
                                                    </a>
                                                </div>
                                            </td>
                                            <td><span id="kineticParameters_halflife">---</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col">
                                <div class="divider divider-quaternary"></div>
                                <h6>About</h6>
                                <div id="aboutText">
                                    This calculator uses Bayesian analysis to estimate a dosing schedule using one or
                                    two measured vancomycin levels.
                                    <br />
                                    <br />
                                    VancoCalc v0.9 - This tool is currently a beta version undergoing testing and
                                    research.
                                </div>
                                <button type="button" class="btn btn_inputColumnPrimary btn-sm "
                                    style="margin-top:.5rem;" id="btn_loadExample">
                                    Load example</button>

                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn_inputColumnPrimary btn-sm"
                            data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <script type="text/javascript" src="js/vancocalc.js"></script>

</body>

</html>
