#Erabiltzaileak
@user = User.new do |u|
              u.nan = "12345678A",
              u.izena = "user",
              u.abizenak = "userA",
              u.pasahitza = "pass",
              u.emaila = "user@gmail.com"
              u.telefonoa = "688611111"
              u.helbidea = "Bilbo"
              u.sortze_data = Time.now.strftime("%Y-%m-%d")
        end
@user.save()

@user = User.new do |u|
              u.nan = "01234567B",
              u.izena = "user2",
              u.abizenak = "userB",
              u.pasahitza = "pass",
              u.emaila = "user2@gmail.com"
              u.telefonoa = "688622222"
              u.helbidea = "Donostia"
              u.sortze_data = Time.now.strftime("%Y-%m-%d")
        end
@user.save()

#Kontuak
@account = Account.new do |a|
				a.kontu_zenbakia = "0123456789012",
              	a.ebiltzaile_id = "01234567B",
              	a.kopurua = "5",
             	a.sortze_data = Time.now.strftime("%Y-%m-%d")
			end
@account.save()

@account = Account.new do |a|
				a.kontu_zenbakia = "1234567890123",
              	a.ebiltzaile_id = "12345678A",
              	a.kopurua = "100",
             	a.sortze_data = Time.now.strftime("%Y-%m-%d")
			end
@account.save()

@account = Account.new do |a|
				a.kontu_zenbakia = "1234567891234",
              	a.ebiltzaile_id = "12345678A",
              	a.kopurua = "30",
             	a.sortze_data = Time.now.strftime("%Y-%m-%d")
			end
@account.save()