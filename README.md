# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

1. Ruby eta Rails-ekin jarraituz, hauek instalatzea beharrezkoa izango da. Ireki Ubuntuko terminala eta hurrengo aginduak sartu:

		`sudo apt-get update`
		`sudo apt-get install curl`
		`\curl -L https://get.rvm.io | bash -s stable --ruby`
		`rvm get stable --autolibs=enable`
		`rvm install ruby`
		`rvm --default use ruby-2.4.2`
		`gem update --system`
		`echo "gem: --no-document" >> ~/.gemrc`
		`gem install bundler`
		`gem install nokogiri`
		`rvm use ruby-2.4.2@rails5.2 --create`
		`gem install rails --pre`
		`gem install rails`
		`gem install rails --version=3.2.18`
	
2. Proiektua deskonprimitu eta bere direktorioan sartu

		`gem install rails`
		`bundle install`
	
3. Datu basea sortu

		`rake db:drop`
		`rake db:create`
		`rake db:schema:load`
		`rake db:seed`
	
4. Zerbitzaria martxan jarri

		`rails server`
	
5. Aplikazioa ireki nabigatzailean

  	localhost:3000
	
6. Erabiltzailearekin logeatu (erabiltzailea = 12345678A eta pasahitza = pass)

* Egileak

	[aps54](https://github.com/aps54)
	
	[begosustatx](https://github.com/begosustatx)
	
	[augarte](https://github.com/augarte)
