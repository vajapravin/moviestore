namespace :dev do
  desc 'Home page slider movies'
  task home_slider: :environment do
    HomeSlider.destroy_all
    # Guardians.of.the.Galaxy.2014.1080p.BluRay.x264.YIFY.mp4
    HomeSlider.create(movie: Movie.find_by(sha1: 'f8aa98ff0a993b76c4e0a92b2c9b5be9f147b0a7'))
    # London.Has.Fallen.2016.HDRip.KORSUB.x264-STUTTERSHIT.mp4
    HomeSlider.create(movie: Movie.find_by(sha1: '91441a72bade4f48f57d2a3285877df141d1b377'))
    # Batman.v.Superman.Dawn.of.Justice.2016.EXTENDED.720p.BluRay.H264.AAC-RARBG.mp4
    HomeSlider.create(movie: Movie.find_by(sha1: 'b89ca2ce07fadcf535db0eff55b3af0f22bb461b'))
  end

  desc 'Send newsletter'
  task newsletter: :environment do
    users = ["4g.demo@in.airtel.com","8237132172@vtext.com","a_malli_mca@yahoo.com","abhijeet.patil@kasturinfotec.com","abhilashadobriyal21@gmail.com","abhinav.sharma@chd.trantorinc.com","abhishek@convenantindia.net","abhishek@covenantindia.net","adv.rahul17@gmail.com","advsunilaware@gmail.com","agarwalankit912011@gmail.com","ajayk@intelliswift.com","ajayp@hathway.com","akansha@freetalkie.com","akhil.patkar@kasturinfotec.com","akhil1425@gmail.com","akshay.chavan@sungardas.com","akshay.nahar27@gmail.com","akshaykore97@gmail.com","almas@testbytes.net","amey.deore@synechron.com","amit@amiworks.com","Amit3.Kumar@infogain.com","amiya@tentacletech.com","amolsatpute@hathway.net","amruthaappi4@gmail.com","anand.aileni@valuelabs.net","angat.patel@raweng.com","angrygreg@gmail.com","anilavarrier@gmail.com","anirudh@merchac.info","anjali@apexpune.com","anjalig@mangospring.com","ankit.emperor@gmail.com","ankit.gupta@igiusa.com","ankit@bigkittylabs.com","ankit@lkslabs.com","ankita.gupta@icicletech.com","ankita.sriwastava@aretove.com","ankush.pimpalghare@harbingergroup.com","ankush.shinde@synechron.com","annie_g25@yahoo.com","anupamb@xpanxion.co.in","anushka@hralways.com","arnab.b@careerxperts.com","aryantripathi23@gmail.com","ashish198907@gmail.com","ashishd@peepalsys.com","ashishsawa@gmail.com","ashok.vaja23@gmail.com","ashwini.dharme@kunalinfotech.net","ashwini@paragyte.com","asish.southhr@outlook.com","askme@prashanthi.info","babitap@hathway.com","badlucky33320@gmail.com","beinii@live.com","berabazar@rediffmail.com","bflcustomercare@bajajauto.co.in","bharat.banate@gmail.com","bharatupgraded@gmail.com","bhat.shwetha08@gmail.com","bhaveshchandrani@yahoo.in","bhavna@complitech.net","bhumika@ecsindia.biz","bibin.varghese@estuate.com","bijuvidyadharan@yahoo.in","billingdesk@hathway.net","blossomconsultancies2@gmail.com","bmileshosky@engineyard.com","brindathaker@foresightresourcing.com","c10479@baflonmove.com","care@paytm.com","career@agreeyamobility.net","careers@cybage.com","careers@getinsellout.com","careers@kunalinfotech.net","careers@persistent.co.in","catchpdp@gmail.com","catechnologies-apj@ca.com","ccoaforg14@gmail.com","chaitrali@phoenixconsultancy.co.in","cherolla.naresh@gmail.com","chethana@techcee.in","chingizoozoo.9@gmail.com","chirangi.mody@ethoshr.net","confirm-unsub-5rgrner23s3znbegywzjt141sfhqp0z1@yahoogroups.com","contact@7precisions.com","contact@go4tution.com","contact@vajapravin.com","contactus@kasturinfotec.com","cpriyanka@crri.co.in","creditcardsteam@icicibank.com","customercare@tikona.in","danabuchbut@gmail.com","darshan.patil@smudde.edu.in","debabrata.sahu@tekreliance.com","debarshi.nits@gmail.com","debashis.behera@fugenx.com","debashish.2k2@gmail.com","deepa@nsrplacements.com","deepak@9staffing.com","deepak@sos.net.in","deepali.kadam@satincorp.com","deeps719@gmail.com","deepti.bhagwat@c2lbiz.com","deepuj389@gmail.com","definelabs.pop1@gmail.com","definelabs.pop3@gmail.com","definelabs.xoom1@gmail.com","delete@wajam.com","desk@siebrains.com","devin.kamble@synechron.com","dhawalesatish123@gmail.com","dhivya.a@talentcapitalindia.com","diana.george@quadlogix.com","dilip.xion@gmail.com","dinesh_b@volensoftware.com","dinesh@volensoftware.com","dipiya.n@sutrajobs.com","dipra_das@yahoo.com","dpushkar1990@gmail.com","dube.saloni@exponent.com.sg","dvargas@wearegap.com","eehtlo2g2kca3c7t0340auu47k@reply.odesk.com","elena.recruiting@gteamstaff.com","er.arvind02@gmail.com","etti@v4c.co.in","fadenuga@kareintellex.com","finayev@gmail.com","fordind@ford.com","fraction1010th@gmail.com","gaikwad.amit19@gmail.com","ganesh.garle@definelabs.com","Gaurav.Sharma@payu.in","geetanjali@vanassociates.com","ggaglani@idyllic-software.com","gmhaise@gmail.com","google_support@genpact.com","gunjan.mohan@siebrains.com","guptakushal17@gmail.com","guptavikas1967@gmail.com","gyanig72@gmail.com","hai.mani41@gmail.com","hari.a@tekskills.in","harikesh.kolekar@definelabs.com","harikesh.kolekar@gmail.com","harmeet.singh@diaspark.com","harpreet@elitehrpractices.com","harsha@mink7.com","Harshada@paragyte.com","hduale@kareintellex.com","heera_devi@sify.com","hello@brit.co","help@uidai.gov.in","helpdesk@hathway.net","helpdesk@icicidirect.com","helpdeskpune@hathway.net","hemantvicky.patil@gmail.com","himanshubakshi279@gmail.com","HotfrogUnsubscribe@hotfrog.com","hr@amsindia.net","hr@bonanzahr.com","hr@careerattop.com","hr@ipt-buerolersch.ch","hr@jmkarrox.com","hr@mindscripts.com","hr@traxoid.com","hr@xperthometutions.com","hrj@talentcorner.in","hrmod@modussystems.com","humanresource@surveyanalytics.com","ia.status@smudde.edu.in","icc.neelam@gmail.com","imitpune@yahoo.co.in","india_careers@synygy.com","india-payroll@synechron.com","info@7precisions.com","info@getyoteam.com","info@igtrahd.com","info@mindscripts.com","info@mysmsmantra.com","info@progressiveinfotech.com","info@realpowersoft.com","info@sayitloud.in","internal-hr@synechron.com","iosprasad2@gmail.com","isha.thapar@extentia.com","itsrajivkumar@gmail.com","jagdish151947@gmail.com","jainteju81@gmail.com","jaiprakash.dubey@synechron.com","James.Lorch@cybercoders.com","jameskwesi001@hotmail.com","JaniceG@glam.com","jasons@99designs.com","jatinsharma1791@yahoo.com","jaya.bhardwaj@clariontechnologies.co.in","jayeshkvarma@gmail.com","jenny@weboniselab.com","jethava.jayesh@gmail.com","jignesh.desai@simphonyteleca.com","jignesh.desai@symphonyteleca.com","jignesh.solanki1991@gmail.com","jithu@mobignosis.net","job@radiantconsultants.com","joblinkservices@rediffmail.com","jobs-rails@tanookilabs.com","jobs@enflexis.com","jobs@jmkarrox.com","jobs@mazdigital.com","jobs@rafagajobzone.com","jobs@weboniselab.com","johanna@nametradeworld.com","joiningdocs@synechron.com","joytoppojoy@live.com","juhi_jaiswal@kellyservices.co.in","junaidi@mmu.edu.my","k.tejasvi@grs-its.com","kadambari@hathway.com","kadambari@hathway.net","kajal@sutrajobs.com","kalyani@ustechsolutionsinc.com","kamaliya.hamir@gmail.com","kanabarhardik111@gmail.com","karanvpurohit@gmail.com","kashyap.modi@ethoshr.net","kathir@msys-tech.com","kaur348@yahoo.com","kaushik_mauvalia@yahoo.co.in","kaushik_movalia@yahoo.com","kaushik.mauvaliya@yahoo.com","kaushik.movalia@yahoo.com","kavita@hredgeindia.com","kavitha@covenantindia.net","ketan_kapoor@careerattop.com","ketki@dharne.com","kiranreddyblr@gmail.com","kishorecheruku.ror@gmail.com","kishorecherukuror@gmail.com","komal.shah@ethoshr.net","kothariautolink@gmail.com","kranthi1027@gmail.com","Krish.pdm@gmail.com","krishan.kant@netwinindia.biz","krutika@karmaasolutions.com","kulkarnit@gmail.com","kumabhash@gmail.com","kumuda.rao@cybrilla.com","kumudini@panaceatek.com","kvnjohnson52@gmail.com","lagnika.sharma@mounttalent.com","lalit.chaudhari02@gmail.com","lalitkumar.chaudhari02@gmail.com","led.light@yahoo.com","leena@bestbraintech.net","listen@tatadocomo.com","loganathan.n@fugenx.com","logdown@rocodev.com","Lulu_Huan@epam.com","m.rajkishore@gmail.com","madhavi@iquest-consultants.com","madhura@teamlease.com","mahesh@knackservices.com","mail@hardikjoshi.me","mainhoosurabhi@gmail.com","Malini.poongundran@logica.com","manas.bal@fugenx.com","manasaheggere@gmail.com","manasi@alphonsoinformex.com","mani@railsfactory.org","manish_vbn@hotmail.com","manish.khaware@gmail.com","manish.kukreja@gmail.com","manish.pandey@synechron.com","Manishabisht@dataincindia.com","manjusha@flihigh.in","manmeet.kaur@surveyanalytics.com","mark@codenvy.com","mathursonalika@gmail.com","matt@littlelines.com","matthew.pearce@talentinternational.co.uk","maxbpro2009@gmail.com","maxim@lkslabs.com","me@eligrey.com","meenakshi.nerlay@clariontechnologies.co.in","megha.kakkar@vrindaconsultants.com","megha.murthy@estuate.com","megha1306@gmail.com","melissa@yummly.com","minaldharsenda@gmail.com","mitali.ghoshroy@gmail.com","mmhd116@gmail.com","modirj@hotmail.com","mohaideenismail04@gmail.com","mohan1981.mh@gmail.com","mosfet93@yahoo.com","motojee3@gmail.com","mpriya@valuewingcoe.com","mritunjay@winfoglobal.com","msa.gadgil@gmail.com","mtheju123@gmail.com","murali@orrisinfolab.com","mustakim_musa@yahoo.com","naglakshmi.st@techmahindra.com","naina@nettechjobs.com","nallupradeepreddy@gmail.com","naveen@bmsils.com","navneeta.sawant@nityo.com","nbird@sjm.com","neena.ravi@indiacom.com","neena.ravi2300@gmail.com","neha.dwivedi@globalhunt.in","neha.junnarkar@clogeny.com","nehaag@thoughtworks.com","Nidhi.Fauzdar@synechron.com","nikhil_2014@yahoo.co.in","nikunj@urbanplace.in","nileshdharsenda@yahoo.in","nileshpatil47@gmail.com","nileshpatil47@yahoo.com","nirvesh.mehrotra@payu.in","nisha@browserstack.com","nishtha.saraf@clariontechnologies.co.in","nitesh.thacker@gmail.com","nitesh@bigkittylabs.com","nitesh@lkslabs.com","niteshthacker@gmail.com","nitin@motifworks.com","nitin@tracehr.in","nlalrenuka@gmail.com","norbert@devreede.nu","numixdev@gmail.com","nunemusan@gmail.com","om.shingade@gmail.com","omkar.nisal@gmail.com","opshrd1@qicpl.com","osrc@dfm.io","PaisaLive-unsubscribe@yahoogroups.com","Parag.Rajput@infogain.com","Parthiban@atreyatech.com","patel_rahul008@yahoo.com","patel.rahul008@gmail.com","patrick@newrelic.com","paul_cornwell@vf.vc","pavithra.sampath@calsoftinc.com","pin2035@gmail.com","pinuhansora@yahoo.co.in","placement@enflexis.com","pmoran@newrelic.com","pooja.g@sutrajobs.com","pooja.nilangekar@facebook.com","pooja.s@sutralite.com","poom3d@gmail.com","poonam.jewel@gmail.com","poonam.yadav@agreeyamobility.net","poonam@amuratech.com","popathardik66@yahoo.in","ppalshetkar770@gmail.com","prabakar.mani@globalstep.com","prabin.saraya@gmail.com","pradeep.reddy@diaspark.com","pragyan.paramita@rays-academy.in","prajkta@edupristine.com","pramod.solanki@metablaze.com","pramod.solanky@metablaze.com","pramod@tgrouponline.in","prathibha@ameyashsolutions.com","praveen@99tests.com","praveen@tgrouponline.in","praveena.sathish@estuate.com","pravin.vaja@definelabs.com","pravin.vaja@diaspark.com","pravin@7precisions.com","pravin@lkslabs.com","pravin1732@gmail.com","pravinkumar.vaja@synechron.com","pravinpune@pravimovies.com","pravis_shankar@yahoo.co.in","prejith@roljobs.com","preya.shah@estuate.com","priti@spotonplacements.com","priyanka.j.babar@gmail.com","priyanka.malpekar@tcs.com","priyankana.kar@synechron.com","punesulekha@atsinfotech.net","purva.r@sutralite.com","pushkar.deshmukh@kasturinfotec.com","pushpa@thepremierconsultants.com","r.wright@roc-search.de","rachana@executivesearchindia.com","rafiq@tops-int.com","raghavendra@companiesinn.com","rahul28111@gmail.com","rahuls@smartek21.com","rainbow.dhanaji@gmail.com","rajeshlakkad69@gmail.com","rajeshwaris@suntechnologies.com","rajiv.singh@landisgyr.com","ramky@techrains.com","rampam89@bigpond.net.au","ranjan810@gmail.com","rashmi@iquest-consultants.com","rautnilesh8@gmail.com","ravi.potugari@gmail.com","rbi_fundrelease_order@dgoh.org","react@indiaantivirus.com","recruiter@adsolutionzs.com","recruiting@gteamstaff.com","recruitment@clariontechnologies.co.in","remove.me@goemerchant.com","remove@cyberweb.in","reshma_deshpande@persistent.co.in","reshma.hatle@globalstep.com","resume@vhire.biz","rgupta@bluefinassociates.com","rhussain@godaddy.com","richa.daweshar@synechron.com","richa@paragyte.com","richie.hillary@bluefintec.com","rishav.sengupta@estuate.com","ritesh.chauhan@diaspark.com","rkhaware@gmail.com","rm-0b86zga2bf3qt48auk0wg4byt2g2jdy@edm.efincare.com","rm-0b86zh0vbf37xv8aukwsy3byt2g2jey@e.shoponmail.com","rm-0b86zhbfbf3qt48aushagmbyt2g2jge@edm.efincare.com","rm-2b63aww4bfh37xxauy6g0cbym1qatqe@mailers.irctcshopping.com","rm-2b9v5zb8bfemqbkaumkapdbyjp6p6g6@offers.shopcluesmail.com","rohini@lkslabs.com","rohinithacker@gmail.com","rohit_mali55@yahoo.in","roshu_18dec@rediff.com","rubyrags@littlelines.com","rukmini.rk@careerxperts.com","sabrina.dibke@talentinternational.co.uk","sachindhawan2006@gmail.com","sachinkamble.3220@gmail.com","safsana@charterglobal.com","sahilkapure@gmail.com","sai@jobskafe.com","sainath_degloorkar@infosys.com","saipavan.ece@gmail.com","sales@auraseven.com","sales@goemerchant.com","sales@jumpline.com","sales@railsplayground.com","salesfeedback@inmotionhosting.com","salgaonkar.rashmith@gmail.com","sancho.thomas@siebrains.com","sandeshsoni1@gmail.com","sanjay.nk@314ecorp.com","sanjay@philbyconsulting.com","santoshdas2312@gmail.com","Sara_Zeng@epam.com","sarita.pareek@shrujansystems.com","sarita.shah@linktech.co.in","sathyan.anand@gmail.com","satish.borude@kasturinfotec.com","satishborude16@gmail.com","Saurabh.bongale@ranadive.net","saurabh@definelabs.com","Saurav@amworldwide.in","sayali11@gmail.com","schandini@geniusconsultant.com","service.superfone@micromaxinfo.com","shafi@careeraccess.in","shah@synup.com","shahanawaz1989@gmail.com","shalgaonkar.rashmith@gmail.com","sharath.jobskafe@gmail.com","sharnaz.mehtab@nttdata.com","Shashikant.Prasad@rsystems.com","Sheetal.Jadhav@landisgyr.com","sheetal.malagatti@careernet.co.in","sheetalwagh85@gmail.com","shilpa.s@bonanzahr.com","shinde.rahul34@gmail.com","shirecruitment@searshc.com","shiv1990gupta@gmail.com","shivani.mahajan@talentcorner.in","shodgson@newrelic.com","Shridhar@hostingworld.co.in","shrutika.v@bonanzahr.com","shwet.shalini@alikethoughts.com","shwetamahajan2014@gmail.com","shwetha.s@siliconindia.com","siddharth@estuate.com","siddharth@idyllic-software.com","sieva@studysoup.com","sihal.shah@gmail.com","simpson.alexander@siebrains.com","smruti.manjrekar@lntinfotech.com","smu.controllerde@smudde.edu.in","smuhelpdesk@smudde.edu.in","sneha.k@peoplefy.com","sneha.sata@hiddenbrains.in","sneha@insightconsultancy.in","soft@mycap.in","softnsys.careers@gmail.com","sonalambekar3@gmail.com","sonia.gupta@linkquestindia.com","sonikamaliya@gmail.com","sonivaja@gmail.com","sp34245@gmail.com","sreevidya_shalini@kellyservices.co.in","srinivas.sundaraj@gmail.com","staneli.dias@indiacom.com","stanely.dias@indiacom.com","stanley.dias@indiacom.com","starazaz@gmail.com","steve@aikontechnologiesinc.com","subu4602000@gmail.com","sudhadht@gmail.com","sudhir_kulkarni@persistent.co.in","sudhir252170@gmail.com","sudipta.ojha@fugenx.com","suhas_thonge@persistent.co.in","suhasthonge007@gmail.com","suneetha@pivmc.com","sunilaware.adv@gmail.com","sunilpatil1572@gmail.com","support@infabode.com","support@mvaayoo.com","supriya@amuratech.com","suren@uniclicks.in","svavhal15@gmail.com","swapniltodkar22@gmail.com","swarna@hcs.ind.in","swathi@kanisol.com","swathisegu28@gmail.com","swati.imsi@gmail.com","swetha.m@dwpractice.com","syed.sameel@gmail.com","Sylviai@smartek21.com","taj@mycareer.com","talk2sounak@gmail.com","taluna@dynproindia.com","tickets-362420-4b930d9929033f45004f5375c8b921c73cdf8bce@support.digitalocean.com","tim@apigee.com","timothy.vanpool@trustcommerce.com","transport@synechron.com","Tusha.Gosavi@amdocs.com","tushar.m@prismhrc.in","tushar@lkslabs.com","tutor@eduwizards.com","tutormba@gmail.com","ujjwal.ghosh@3i-infotech.com","ujwal221bendale@yahoo.com","umesh_kadam@persistent.co.in","unadkat.yogesh@gmail.com","unaoghare@sqrinfotech.com","urvashi.sharma@theiplex.com","usha.kempaiah@accenture.com","vaibhav.fuldevare@motifworks.com","vaibhav@definelab.com","vaibhav@definelabs.com","vaibhav@kanbaninfosystem.com","vaibhav@zigsaw.in","vaishali.p@o2quest.com","vaishaligaikwaad81@gmail.com","vaishaligaikwad55@yahoo.co.in","vaishaligaikwad81@yahoo.co.in","vaja.sonal@ymail.com","vaja.sonal@ymail.com","vajameena@yahoo.co.in","vajapiyush@gmail.com","vajapravin@facebook.com","vajapravin@rediffmail.com","vajapravin23@gmail.com","vasu@mangosense.com","veena.jain@estuate.com","venky.v2@gmail.com","venkyaum@gmail.com","venus@ziptask.com","vidhya@theatem.com","vidya.phalke@gmail.com","vijaya@unidusservices.com","viju.subi@gmail.com","vikas.karnik@vervegs.com","vikas@motifworks.com","vikash.agarwal@estuate.com","vinay.joshi@qualtech-consultants.com","vinay.s@digitallogics.in","vinaya@idctechnologies.com","vineeta.malkania@gmail.com","vishalmsa07@gmail.com","vishalnemade88@gmail.com","vitthal.gaikwad@definelabs.com","vitthal@bhosalelabs.com","vitthalbhosale@gmail.com","vivek.dey10@gmail.com","Vivek.Rathore@synechron.com","yash.bhatia@rediffmail.com","yelahanka_mgr@ktmindia.com","yunus.hala@gmail.com","yuvi@clogeny.com","zack.miyers@gmail.com","zeba.perveen@payu.in"]
    NewsletterMailer.send_newsletter(users).deliver_now
  end

  desc 'Facebook commenter URL'
  task facebook_commenter_url: :environment do
    Movie.where.not(name: nil).where(facebook_commenter_url: nil).where.not(imdbid: nil).each do |m|
      m.update_attributes(facebook_commenter_url: "/movie/#{m.imdbid}/#{m.name.parameterize}")
      ap "/movie/#{m.imdbid}/#{m.name.parameterize}"
    end
  end

  desc 'Home page featured movies'
  task featured: :environment do
    FeaturedMovie.destroy_all
    # Guardians.of.the.Galaxy.2014.1080p.BluRay.x264.YIFY.mp4
    FeaturedMovie.create(movie: Movie.find_by(sha1: '7a4d696b90814fa3c8286cf9b05574c303ecc6e7'))
    # London.Has.Fallen.2016.HDRip.KORSUB.x264-STUTTERSHIT.mp4
    FeaturedMovie.create(movie: Movie.find_by(sha1: 'd3419791b55d59babdeb326c45fdeb53d92b0d8c'))
    # Batman.v.Superman.Dawn.of.Justice.2016.EXTENDED.720p.BluRay.H264.AAC-RARBG.mp4
    FeaturedMovie.create(movie: Movie.find_by(sha1: 'c9c2d808fc855effd837afb6449a112af4c75ea4'))
  end

  desc 'Sync Openload.io'
  task sync_openload: :environment do
    ol = OpenLoad.new
    [{"id": "1947989","name": "2016"},{"id": "1949823","name": "2013"},{"id": "1951490","name": "2011"},{"id": "1951492","name": "2006"},{"id": "1951498","name": "1996"},{"id": "1951500","name": "2015"},{"id": "1951768","name": "2014"},{"id": "1964632","name": "2012"}].each do |folder|
      results = ol.folder_list(folder[:id]) # 2016
      results['result']['folders'].each do |f|
        movie_detail = ol.folder_list(f['id']) # 2016
        subtitle = nil
        movie = nil
        movie_detail['result']['files'].each do |file|
          if file['content_type'] == 'text/x-c'
            subtitle = Subtitle.find_or_create_by(link: file['link'])
          elsif file['content_type'] == 'video/mp4'
            movie = Movie.find_or_create_by(folderid: file['folderid'])
            movie.name = file['name'] if movie.new_record?
            movie.file_name = file['name']
            movie.sha1 = file['sha1']
            movie.folderid = file['folderid']
            movie.upload_at = file['upload_at']
            movie.status = file['status']
            movie.size = file['size']
            movie.content_type = file['content_type']
            movie.download_count = file['download_count']
            movie.cstatus = file['cstatus']
            movie.link = file['link']
            movie.linkextid = file['linkextid']
            movie.released_year = folder[:name]
          end
        end
        if movie
          movie.subtitle = subtitle
          movie.save
          if movie_detail['result']['folders'].size > 0 && movie_detail['result']['folders'][0]['name'] == 'banners'
            fetch_banners(movie, movie_detail['result']['folders'][0]['id'], ol)
          end
          ap "Movie #{movie.name} Synced!"
        end
      end
    end
  end

  def fetch_banners movie, folderid, ol
    banner_results = ol.folder_list(folderid)
    banner_results['result']['files'].each do |banner_file|
      if banner_file['content_type'] == 'image/jpeg'
        banner_download_ticket = ol.download_ticket(banner_file['linkextid'])
        unless banner_download_ticket['result']['captcha_url']
          banner_link = ol.download_link(banner_file['linkextid'], banner_download_ticket['result']['ticket'])
          banner = movie.banners.find_or_initialize_by(sha: banner_link['result']['sha1'])
          banner.image = open(banner_link['result']['url'])
          if banner.save
            ap "Found banner image #{movie.name} -> #{banner_link['result']['name']}"
          else
            ap banner.errors.full_messages.join(", ")
          end
        end
      end
    end
  end


  desc 'Sync IMDB'
  task sync_imdb: :environment do
    Movie.where.not(imdbid: nil).each do |movie|
      imdb_movie = Imdb::Serie.new(movie.imdbid)
      movie.released_date = imdb_movie.release_date
      movie.metascore = imdb_movie.metascore
      movie.tagline = imdb_movie.tagline
      movie.tag_list = imdb_movie.genres
      movie.company = imdb_movie.company
      movie.length = imdb_movie.length
      movie.vote_count = imdb_movie.votes
      movie.director_list = (imdb_movie.director - ["(more)"])
      movie.writer_list = (imdb_movie.writers - ["(more)"])
      movie.country_list = (imdb_movie.countries - ["(more)"])
      movie.cast_member_list = imdb_movie.cast_members
      movie.plot_summary = imdb_movie.plot_summary
      movie.poster = imdb_movie.poster
      movie.imdb_synced = true
      movie.save
      ap movie.name
    end
  end

  desc 'Update IMDB Id'
  task update_imdb: :environment do
    Movie.where.not(imdbid: nil).each do |movie|
      movie.update_attributes(imdbid: movie.imdbid.gsub('tt',''))
    end
  end

  desc 'Sync YTS Existing Movies'
  task yts_existing: :environment do
    Movie.where.not(imdbid: nil).each do |movie|
      yts = YTS::Movie.list('json', {limit: 1, query_term: "tt#{movie.imdbid}"})
      if yts['status'] && yts['data']['movie_count'] > 0
        begin
          yts['data']['movies'].each do |yts_m|
            movie.update_attributes(yts_m.only(Movie.column_names.except('id')))
            movie.update_attribute('yts_url', yts_m['url'])
            movie.update_attribute('name', yts_m['title'])
            movie.update_attribute('released_year', yts_m['year'])
          end
        rescue Exception => e
          ap "#{movie.id} #{movie.name} #{movie.imdbid} - #{e.message}", color: { string: :red }
          puts
        end
      end
    end
  end

  desc 'Sync YTS Existing Movies'
  task yts_non_existing: :environment do
    Movie.where(imdbid: nil).where.not(name: nil).each do |movie|
      yts = YTS::Movie.list('json', {limit: 1, query_term: movie.name.split("20").first.gsub('.', ' ').strip})
      if yts['status'] && yts['data']['movie_count'] > 0
        begin
          yts['data']['movies'].each do |yts_m|
            movie.update_attributes(yts_m.only(Movie.column_names.except('id')))
            movie.update_attribute('yts_url', yts_m['url'])
            movie.update_attribute('imdbid', yts_m['imdb_code'])
            movie.update_attribute('name', yts_m['title'])
            movie.update_attribute('released_year', yts_m['year'])
            ap movie.title_long
          end
        rescue Exception => e
          ap "#{movie.id} #{movie.name} #{movie.imdbid} - #{e.message}", color: { string: :red }
          puts
        end
      end
    end
  end  
end
