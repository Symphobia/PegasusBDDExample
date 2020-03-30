Feature: PegasusBilet

@bilet
Scenario: Bilet al

	# Test işlemleri için lütfen kişisel bilgilerinizi {} ile ayrılan alanlara giriniz

	* #nxm2CookieSubmitButton objesine tıklanır
	* .nxm2_select-nereden .select2-selection__arrow objesine tıklanır
	* .nxm2_select-nereden input.select2-search__field alanına İstanbul-S.Gökçen değeri girilir
	* .nxm2_select-nereye .select2-selection__arrow objesine tıklanır
	* .nxm2_select-nereye input.select2-search__field alanına Ankara değeri girilir
	* #dp1 objesine tıklanır
	* Gidiş için 10 Haziran 2020 tarihi girilir
	* Dönüş için 25 Temmuz 2020 tarihi girilir
	* #fligth-searh .nxm2_form-button objesine tıklanır
	* 4 saniye beklenir
	* .departure-list div:nth-child(1) button.item-content objesine tıklanır
	* .departure-list .expanded div:nth-child(3) .package-price objesine tıklanır
	* .return-list div:nth-child(1) button.item-content objesine tıklanır
	* .return-list .expanded div:nth-child(3) .package-price objesine tıklanır
	* .action-buttons .submit-button objesine tıklanır
	* 4 saniye beklenir
	# Ad
	* .name .text-input input alanına {} değeri girilir
	# Soyad
	* .surname .text-input input alanına {] değeri girilir
	# Doğum günü (iki rakam olacak şekilde)
	* .passenger-birthday-wrapper .date-text-input div input alanına {} değeri girilir
	# Doğum ayı (iki rakam olacak şekilde)
	* .passenger-birthday-wrapper .date-text-input div ~div input alanına {} değeri girilir
	# Doğum yılı (dört rakam olacak şekilde)
	* .passenger-birthday-wrapper .date-text-input div ~div ~div input alanına {} değeri girilir
	# Cinsiyet seçiminde 'value' alanında 'Erkek' için 'M', 'Kadın' için 'F' harflerini kullanın
	* input[value='{}'] objesine tıklanır
	# Telefon kodu (örn: 532)
	* .phone-wrapper .number-container .tr-area input alanına {} değeri girilir
	# Telefon numarasının geri kalanı
	* .phone-wrapper .number-container .phone-number input alanına {} değeri girilir
	# TC Kimlik No
	* .tckn .text-input input alanına {} değeri girilir
	* .info-form-submit-button objesine tıklanır
	# E-posta adresi
	* .email .text-input input alanına {} değeri girilir
	* .info-form-submit-button objesine tıklanır
	* 4 saniye beklenir
	* div.seat-map div:nth-child(3) div div:nth-child(2) button:nth-child(2) objesine tıklanır
	* .submit-button objesine tıklanır
	* div.seat-map div:nth-child(3) div div:nth-child(2) button:nth-child(2) objesine tıklanır
	* .submit-button objesine tıklanır
	* 1 saniye beklenir
	* .submit-button objesine tıklanır
	* 1 saniye beklenir
	* .submit-button objesine tıklanır
	* 1 saniye beklenir
	* .submit-button objesine tıklanır
	* 1 saniye beklenir
	* .submit-button objesine tıklanır
	* 1 saniye beklenir
	* .ife-submit-button objesine tıklanır
	* 1 saniye beklenir
	* .submit-button objesine tıklanır
	* 4 saniye beklenir

	#* //*[@id="nxm2CookieSubmitButton"] objesine tıklanır
	#* //*[@id="fligth-searh"]/div[2]/div[1]/div/span/span[1]/span/span[2] objesine tıklanır
	#* /html/body/span/span/span[1]/input alanına İstanbul-S.Gökçen değeri girilir
	#* //*[@id="fligth-searh"]/div[2]/div[2]/div/span/span[1]/span/span[2] objesine tıklanır
	#* /html/body/span/span/span[1]/input alanına Ankara değeri girilir
	#* //*[@id="dp1"] objesine tıklanır
	#* Gidiş için 10 Haziran 2020 tarihi girilir
	#* Dönüş için 25 Temmuz 2020 tarihi girilir
	#* //*[@id="fligth-searh"]/div[3]/div[4]/div/button objesine tıklanır
	#* 2 saniye beklenir
	#* //*[@id="boarding-card-body"]/div[1]/div[3]/div[2]/div[2]/div[2]/div[1] objesine tıklanır
	#* //*[@id="boarding-card-body"]/div[1]/div[3]/div[2]/div[2]/div[2]/div[1]/div/div[2]/div[3]/button/div[2] objesine tıklanır
	#* //*[@id="boarding-card-body"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[1] objesine tıklanır
	#* //*[@id="boarding-card-body"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[1]/div/div[2]/div[3]/button/div[2] objesine tıklanır
	#* 1 saniye beklenir
	#* //*[@id="boarding-card-body"]/div[1]/div[6]/div[2]/button[2] objesine tıklanır
	#* 2 saniye beklenir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[1]/div/div/input alanına Muhsin değeri girilir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[2]/div/div/input alanına Bayram değeri girilir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[3]/div[2]/div[1]/div[1]/div/div/input alanına 12 değeri girilir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[3]/div[2]/div[1]/div[2]/div/div/input alanına 08 değeri girilir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[3]/div[2]/div[1]/div[3]/div/div/input alanına 1995 değeri girilir
	#* //*[@id="boarding-card-body"]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[4]/div[2]/div/div[2]/input objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[5]/div[1]/div/div[3]/div[1]/div/input alanına 543 değeri girilir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[5]/div[1]/div/div[3]/div[2]/div/input alanına 3819321 değeri girilir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[6]/div/div[2]/div/div/input objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[3]/div/div[1]/div/div/form/div/div/div/div[6]/div/div[2]/div/div/input alanına 13460253206 değeri girilir
	#* //*[@id="boarding-card-body"]/div/div[3]/div/div[2]/button/div[2]/div[1] objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[2]/div/div[2]/div/form/div/div[2]/div[4]/div/div/input objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[2]/div/div[2]/div/form/div/div[2]/div[4]/div/div/input alanına muhsin.bayram@outlook.com değeri girilir
	#* //*[@id="boarding-card-body"]/div/div[2]/div/div[4]/button/div objesine tıklanır
	#* 5 saniye beklenir
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[2]/div[5]/div[4]/div[2]/div[1]/div[2]/div/div[2]/div[6]/div/div[2]/button[2] objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[2]/div[5]/div[4]/div[4]/button objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[2]/div[5]/div[4]/div[2]/div[1]/div[2]/div/div[2]/div[6]/div/div[2]/button[2] objesine tıklanır
	#* /html/body/div[2]/div/div[4]/div[2]/div/div[2]/div[5]/div[4]/div[4]/button objesine tıklanır
	#* //*[@id="boarding-card-body"]/div/div[2]/div[5]/div[3]/div[3]/button objesine tıklanır
	#* //*[@id="boarding-card-body"]/div/div[2]/div[5]/div[3]/div[3]/button objesine tıklanır
	#* //*[@id="boarding-card-body"]/div/div[2]/div[5]/div[3]/div[3]/button objesine tıklanır
	#* //*[@id="boarding-card-body"]/div/div[2]/div[5]/div[3]/div[3]/button objesine tıklanır
	#* //*[@id="boarding-card-body"]/div/div[2]/div[5]/div[5]/button objesine tıklanır
	#* //*[@id="boarding-card-body"]/div/div[2]/div[5]/div[2]/button objesine tıklanır