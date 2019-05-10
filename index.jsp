

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Find plans and apply for medical, dental and term life
	coverage in California - Blue Shield of California</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="app.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>


	<div id="contentPanel">
		<div id="header">

			<div class="headLoginCont">
				<div id="topLogin">

					<span>Have an account?</span> <a href="#"
						onclick="javascript:submitReadyToapply('no_1');"><b>Log-in</b></a>
					<span class="topBar">|</span> <a href="#"
						onclick="javascript:submitReadyToapply('1');"><b>Register</b></a>

				</div>
			</div>
			<div style="clear: both;" class="borderDivider"></div>

			<!-- User types are: 	1&nbsp;I&M users
							2&nbsp;UnderWriting
							3&nbsp;Agent(DSA)
							4&nbsp;Account 
							Co-Ordinator(AC)
							5&nbsp;Prospect
							6&nbsp;Ebiz
							7&nbsp;MEMBER
	 -->
			<div class="headerRow">
				<div class="topLogos">
					<a href="http://www.blueshieldca.com"> <img
						src="https://bscapply.com/phx/images/BSC_logo.gif" width="244"
						height="32"></a> <img
						src=" https://bscapply.com/phx/images/header_line.gif" width="29"
						height="32"> <span class="headerPageTitle">
						Individual and Family Plans </span>

				</div>
				<div class="topContacts">
					<span class="contIcon"> <a href="tel:8003936130"><img
							src="https://bscapply.com/phx/images/Phone_icon.png" width="22"
							height="38"></a>
					</span> <span class="contTelTime"> <a class="contPhone"
						href="tel:1-888-273-0010">1-888-273-0010</a>
					</span> <br> <span class="contTime clearRight"> Monday to
						Friday 8 a.m. - 5.30 p.m. </span>

				</div>
			</div>

			<div style="clear: both;" class="borderDivider1"></div>
		</div>
	</div>

	<div id="contentPanel">
		<div id="contentOverlap"></div>
		<div id="contentToolbar">
			<div class="contToolRight"></div>
		</div>

		<div class="enrollTextContent"></div>
	</div>

	<div style="clear: both;" class="borderDivider"></div>
	<div class="bluePanel">
		<div id="contentPanel">

			<h2 class="smWhite">Get a quote and apply online</h2>
			<h3 class="heroWhite">Find a Medical, Dental, and/or Vision plan
				that fits your needs.</h3>

		</div>
	</div>

	<div class="helpMe_Choose">
		<div id="contentPanel">
			<div class="helpMe_content">
				<p>Need a little help?</p>
				<p>We're here to help. Answer a few questions and we'll show you
					your possible health plan options.</p>
			</div>
			<div>

				<input type="button" value="Help Me Choose"
					class="btn-default btn-done"
					onclick="invokeHmcPage();trackAsEvent('Help Me Choose', 'Help Me Choose', '');">

			</div>
		</div>
	</div>

	<div id="contentPanel">

		<h3 id="openEnrollment">


			Now Accepting Applications for Special Enrollment <span
				id="enrollDate"></span>
		</h3>

		<div class="enrollTextCont">

			<span class="enrollPara">
				<p class="lpText">
					Open Enrollment is closed; You may be eligible to enroll due to <label
						class="labelTitle">certain qualifying events</label> that involve
					a change in family status, such as marriage, birth of a child or
					loss of health insurance coverage to name a few. You can find a
					list of qualifying events below. There are a <label
						class="labelTitle"
						title="Please apply directly through www.coveredca.com if you have experienced one of the following qualifying events: American Indian Status (may be entitled to monthly SEP); New United States Citizen (citizenship newly obtained); Foster child status (does not include adoption); Other Exceptional Circumstance (circumstance must be validated by Covered California)">few
						qualifying events</label> that require applicants to apply directly
					through Covered California at www.coveredca.com. These include
					American Indian enrollment, United States citizenship, and foster
					child status. If you have not recently experienced a qualifying
					event, you may apply for medical coverage during the next Open
					Enrollment period which starts on October 15th.
					<!-- Added for Story PHX-331 - HCR_SSO MQE - Update the Get a Quote page START  -->

					<!-- Added for Story PHX-331 - HCR_SSO MQE - Update the Get a Quote page END  -->
					<span id="enrollDate"></span>
				</p>
			</span>
		</div>

	</div>
	<div style="clear: both;" class="borderDivider"></div>

	<form action="displayplans.jsp" commandName="zipCodeForm" id="myForm">

		<div class="enrollPlanArea">
			<div class="planFormSection">
				<ul class="plansFormElms">

					<h4>Apply for Medical, Dental, and/or Vision coverage.</h4>

					<div class="planPlanRate">
						<h4>Price is based on number of people, their age and location.</h4>
						<div></div>
						<h3>
							<!-- Added for Story PHX-331 - HCR_SSO MQE - Update the Get a Quote page START -->

							Health plans start at: <span class="rateColor">$<span id="planRates"></span></span>
							<input type="hidden" name="person" id="person">
						</h3>
					</div>
					

					<li><label class="labelTitle"
						title="During Special Enrollment, you must submit supporting documentation verifying your Qualifying Event occurred within the past 60 days. Depending on your Qualifying Event reason, your effective date will be either the first of the following month or the first of the second following month. In the case of newborns, the effective date is their DOB. Your effective date may differ than what's shown here and will be assigned once your completed application and documentation is received and verified by Blue Shield of California.">
							Coverage Start Date: </label> <span class="planCov">06/01/2019</span></li>
					<br />

					<div class="zipid">
						<label id="zipCodeLabel">ZIP code:</label><input type="text" value
							maxlength="5" class="planCovZip" name="zip_id" id="zip_id"
							oninput="zipCodeValidator()">
					</div>
					<br />

					<div>
						<input type="button" class="quoteButton" tabindex="0" name="myself" id="myself" value="Myself" onclick="mySelf()">
						
						<input type="date" name="myselfDate" id="myselfDate" placeholder="mm/dd/yyyy" oninput="myselfbtnDisplay()" style="visibility: hidden;"> 
						<input type="button" value="X" calss="quoteRemoveRow" name="remove" id="remove" onclick="Remove()" style="visibility: hidden;">

					</div>
					<br />


					<div>
						<input type="button" class="quoteButton" tabindex="0" id="Mypartner" value="My Partner" onclick="mypartner()">
						
						<input type="date" name="mypartnerDate" id="mypartnerDate" placeholder="mm/dd/yyyy" style="visibility:hidden;" oninput="myPartnerDisplay()"> 
						
						<input type="button" value="X" calss="quoteRemoveRow" name="patremove" id="patremove" onclick="patRemove()" style="visibility: hidden;">
						
						<div id="My partner"></div>
					</div>
					<br />


					<div>
						<div id="dependentDate">
							<input type="button" class="quoterow" tabindex="0" name="dependent1" id="dependent1" value="A Dependent" onclick="myDependent1()"> 
							<input type="date" name="depDate1" id="depDate1" placeholder="mm/dd/yyyy" style="visibility: hidden;"> 
							<input type="button" calss="quoteRemoveRow" value="X" name="depremove1" id="depremove1" onclick="depRemove1()" style="visibility: hidden;"><br><br> 
							<input type="button" class="quoterow" tabindex="0" name="dependent2" id="dependent2" value="A Dependent" onclick="myDependent2()" style="visibility: hidden;"> 
							<input type="date" name="depDate2" id="depDate2" placeholder="mm/dd/yyyy" style="visibility: hidden;"> 
							<input type="button" calss="quoteRemoveRow" tabindex="0" value="X" name="depremove2" id="depremove2" onclick="depRemove2()" style="visibility: hidden;"><br> 
							<input type="button" class="quoterow" name="dependent3" id="dependent3 value="A Dependent" onclick="myDependent3()" style="visibility: hidden;">

						</div>
					</div>
					<br />
					<br />
					<br />
					<div>
						<input type="submit" name="Plans" class="quoteButton"
							id="plansButton" value="See Plans" disabled>
					</div>

				</ul>
			</div>
		</div>

	</form>
	<div style="clear: both;"></div>



	<div class="greyPanel">
		<div id="contentPanel">

			<!-- Links Columns Starts here -->
			<div class="linksColumnRow">

				<div class="colFloat">
					<!-- First column of contact info -->
					<div class="quoteLinkColumnLP">
						<h3>Download a Spanish, Chinese, Vietnamese or Korean
							application.</h3>
						<p>
							Elegir un plan de aplicación y papel <a
								href="https://www.blueshieldca.com/bsca/bsc/wcm/connect/member/666cb2c3-f7e0-4e19-a6d6-da79c030469d/C12900-HCR-PR-SP.pdf?MOD=AJPERES&amp;ContentCache=NONE&amp;CACHE=NONE&amp;CACHEID=ROOTWORKSPACE.Z18_JOK61C41NGTU90Q0R5CE0L1000-666cb2c3-f7e0-4e19-a6d6-da79c030469d-muCHrSt"
								target="_blank">
						</p>
						<p>
							<img src="https://bscapply.com/phx/images/chinese.jpg" alt="">
							<a
								href="https://www.blueshieldca.com/bsca/bsc/wcm/connect/member/fb315ae6-51b0-46e3-9eab-459fc4cadac5/C12900-HCR-PR-CH.pdf?MOD=AJPERES&amp;ContentCache=NONE&amp;CACHE=NONE&amp;CACHEID=ROOTWORKSPACE.Z18_JOK61C41NGTU90Q0R5CE0L1000-fb315ae6-51b0-46e3-9eab-459fc4cadac5-muCDahH"
								target="_blank"> <img
								src="https://bscapply.com/phx/images/chineseApplicationPdf.jpg"
								alt=""></a>

						</p>
						<p>
							Chọn một ứng dụng kế hoạch và giấy <br\> <a
								href="https://www.blueshieldca.com/bsca/bsc/wcm/connect/member/9cf4d178-8d33-43df-94f6-306a95952733/C12900-HCR-PR-VI.pdf?MOD=AJPERES&amp;ContentCache=NONE&amp;CACHE=NONE&amp;CACHEID=ROOTWORKSPACE.Z18_JOK61C41NGTU90Q0R5CE0L1000-9cf4d178-8d33-43df-94f6-306a95952733-muCM6l4"
								target="_blank"> Ngôn ngữ ứng dụng của Việt Nam</a> </br\>
						</p>
						<p>

							플랜을 선택한 후 신청서를 다운로드 받으십시오<br\>
							<a
								href="https://www.blueshieldca.com/bsca/bsc/wcm/connect/member/045d27bf-9c96-4ccf-a4a8-6660b67d976d/C12900-HCR-PR-KO.pdf?MOD=AJPERES&amp;ContentCache=NONE&amp;CACHE=NONE&amp;CACHEID=ROOTWORKSPACE.Z18_JOK61C41NGTU90Q0R5CE0L1000-045d27bf-9c96-4ccf-a4a8-6660b67d976d-muCELMs"
								target="_blank"> 한국어 신청서</a> </br\>
						</p>

					</div>
				</div>
				<div class="colFloat">
					<!-- Alternate 1st column of contact info -->
					<div class="quoteLinkColumnLP">
						<h3>Qualifying Event Reasons</h3>
						<p>Review reasons for qualifying events here:</p>

						<p class="LanguageStyle">
							<a
								href="https://www.blueshieldca.com/bsca/bsc/public/broker/PortalComponents/StreamDocumentServlet?fileName=QualifyingEvents_english.pdf&amp;msi=true"
								target="_blank">Qualifying Event Reasons </a>
						</p>
						<p class="LanguageStyle">
							<a
								href="https://www.blueshieldca.com/bsca/bsc/public/broker/PortalComponents/StreamDocumentServlet?fileName=QualifyingEvents_Spanish.pdf&amp;msi=true"
								target="_blank">Razones del Evento Habilitante </a>
						</p>
						<p class="LanguageStyle">
							<a
								href="https://www.blueshieldca.com/bsca/bsc/public/broker/PortalComponents/StreamDocumentServlet?fileName=QualifyingEvents_Chinese.pdf&amp;msi=true "
								target="_blank">獲得資格的事件原因 </a>
						</p>
						<p class="LanguageStyle">
							<a
								href="https://www.blueshieldca.com/bsca/bsc/public/broker/PortalComponents/StreamDocumentServlet?fileName=QualifyingEvents_vietnamese.pdf&amp;msi=true"
								target="_blank">Lý Do Sự Kiện Đủ Tiêu Chuẩn </a>
						</p>

						<p class="LanguageStyle">
							<a
								href="https://www.blueshieldca.com/bsca/bsc/public/broker/PortalComponents/StreamDocumentServlet?fileName=QualifyingEvents_Korean.pdf&amp;msi=true"
								target="_blank">적격 사유 </a>
						</p>

					</div>
				</div>

				<div class="colFloat">
					<!-- Second column of contact info -->

					<div class="quoteLinkColumnLP LastCol">
						<!-- 			PHX-3261 -->
						<h3>Questions?</h3>
						<p class="lineHt16">
							Do you have Health Care Reform questions, or would you like to
							talk to a Blue Shield representative about enrolling in a health
							plan? Please call the number displayed in the top right corner of
							the screen.<br>
							<br>

							<!-- 			PHX-3261 -->

							<security:authorize access="!hasAnyRole('VERIFY_MEMBER_SSO')">
								<!-- Story 402 HCR_PQE_Display updated customer service hours
									 Description:update Service hours in "want help?" -->

								<span class="phxContact2"> <sp> Please call <b>1-888-273-0010</b>,
									<br>
									Monday - Friday 8 a.m. - 5.30 p.m. </sp></span>

								<!-- Story 402-end -->

							</security:authorize>
						</p>
					</div>
				</div>
				<div class="colFloat"></div>
			</div>
			<!-- Links Columns Ends here -->
		</div>
	</div>

	<div id="contentPanel">
		<div class="disclaimerPanel">

			<p>The coverage effective date, which is the date your coverage
				takes effect, may not be the date you requested. Here is one common
				reason why that might happen.</p>
			<p>If we receive your application between the 1st and 15th of the
				month, your coverage may get an effective date of the 1st of the
				next month depending on your qualifying event, which can include
				marriage, job loss, and other events. If we receive your application
				between the 16th and last day of the month, your coverage may get an
				effective date of the 1st of the following month. For example,
				coverage for an application we receive on January 5 will get an
				effective date of February 1, while coverage for an application we
				receive on January 20 will get an effective date of March 1.</p>

		</div>
	</div>

	<div style="clear: both;"></div>
	<div class="background_container">
		<div class="footer-general">
			<div id="contentPanel">
				<div class="col-md-6">
					<p class="subhead">Contact Us</p>
					<ul class="list-inline">
						<li class="icon-phone"></li>
						<li>
							<p>Customer Service (800) 393-6130</p>
							<p>Pre-admission (800) 541-6652</p>
							<p>Tech Support (800) 393-6130</p>
						</li>
						<li class="icon-mail"></li>
						<li>
							<p>Blue Shield of California</p>
							<p>PO Box 272540</p>
							<p>Chico, CA 95927-2540</p>
						</li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="list-inline">
						<li class="footer-line">
							<p class="subhead">Quick Links</p>



							<p>
								<a href="javascript:returnToHomepage('')" title="Home">Home</a>
							</p>

							<p>
								<a title="Blue Shield Homepage"
									href="https://www.blueshieldca.com/bsca/about-blue-shield/home.sp"
									id="uhp_footer_about" target="_blank">About Blue Shield</a>
							</p> <!-- Start PHX-4906 Update contact us link from Phoenix footer -->
							<p>
								<a title="Contact Blue Shield"
									href="https://www.blueshieldca.com/contact"
									id="uhp_footer_contactus" target="_blank">Contact Us</a>
							</p> <!--End PHX-4906 Update contact us link from Phoenix footer -->
							<p>
								<a title="Blue Shield Media Center"
									href="https://www.blueshieldca.com/bsca/about-blue-shield/media-center/home.sp"
									id="uhp_footer_newsroom" target="_blank">Media Center</a>
							</p>
						</li>
						<li class="footer-line-hide">
							<p class="subhead">&nbsp;</p>
							<p>
								<a title="Blue Shield Careers"
									href="https://www.blueshieldca.com/bsca/about-blue-shield/careers/home.sp"
									id="uhp_footer_careers" target="_blank">Careers</a>
							</p>
							<p>
								<a title="Blue Shield Terms of Use"
									href="https://www.blueshieldca.com/bsca/about-blue-shield/terms-of-use.sp"
									id="uhp_footer_terms" target="_blank">Terms of Use</a>
							</p>
							<p>
								<a title="Blue Shield Privacy Policy"
									href="https://www.blueshieldca.com/bsca/about-blue-shield/privacy/home.sp"
									id="uhp_footer_privacy" target="_blank">Privacy</a>
							</p> <!-- Start PHX-4906 removed Sitemap link from Phoenix footer -->
							<!-- <p><a title="Blue Shield Site Map" href="https://www.blueshieldca.com/bsca/sitemap/home.sp" id="uhp_footer_sitemap" target="_blank">Sitemap</a></p> -->
							<!-- End PHX-4906 removed Sitemap link from Phoenix footer -->
						</li>
						<li class="footer-line">
							<p id="viz" class="subhead">Get Social</p>
							<ul class="list-inline">
								<li><p>
										<a target="_blank" title=""
											href="http://www.facebook.com/BlueShieldCA"
											id="uhp_footer_facebook"
											onclick="dataLayer.push({'event': 'eventTracker', 'eventCat': 'Outbound Links', 'eventAct': 'Click', 'eventLbl': 'www.facebook.com/BlueShieldCA', 'eventVal': 0});"><i
											class="icon-facebook"></i></a>
									</p></li>
								<li><p>
										<a target="_blank" title=""
											href="http://twitter.com/blueshieldca"
											id="uhp_footer_twitter"
											onclick="dataLayer.push({'event': 'eventTracker', 'eventCat': 'Outbound Links', 'eventAct': 'Click', 'eventLbl': 'twitter.com/blueshieldca', 'eventVal': 0});"><i
											class="icon-twitter"></i></a>
									</p></li>
								<li><p>
										<a target="_blank" title=""
											href="http://www.youtube.com/blueshieldca"
											id="uhp_footer_youtube"
											onclick="dataLayer.push({'event': 'eventTracker', 'eventCat': 'Outbound Links', 'eventAct': 'Click', 'eventLbl': 'www.youtube.com/blueshieldca', 'eventVal': 0});"><i
											class="icon-youtube"></i></a>
									</p></li>
							</ul> <!-- PHX-2467 Add TRUSTe to PHX footer -->
							<div class="truste-phx">
								<a
									href="//privacy.truste.com/privacy-seal/validation?rid=60d76b36-c492-4fee-ac6d-43989073d923"
									target="_blank"><img style="border: none"
									src="//privacy-policy.truste.com/privacy-seal/seal?rid=60d76b36-c492-4fee-ac6d-43989073d923"
									alt="TRUSTe"></a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Footer Top Ends -->
		<!-- Footer Bottom -->
		<div class="footer-copyright">
			<div id="contentPanel">
				<div class="col-md-12">
					<p>
						© Blue Shield of California 1999-<span id="year">2019</span>. All
						rights reserved. Blue Shield of California is an independent
						member of the Blue Shield Association.
					</p>
					<p>
						<small>Health insurance products are offered by Blue
							Shield of California Life &amp; Health Insurance Company. Health
							plans are offered by Blue Shield of California.</small>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>