
require 'telegram/bot'

=begin
require 'date'
t = Time.now
puts t.strftime("%k:%M").to_s
timenow = t.strftime("%k:%M")
=end


#token = 'YOUR API TOKEN'
token = '301331085:AAHPlRiDUAktHpB1eZmveMu8R5juiLdAHBU'
require 'telegram/bot'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    
    nightwish = false
    mornwish = false
    drnightwish = false
    
    require 'date'
    t = Time.now + 19800
    #puts t.strftime("%k:%M").to_s
    timenow = t.strftime("%k:%M").to_s
    
    if timenow < '12:00'
      t_am = Time.now + 19800 - 43200
      nightwish = false
      #puts t.strftime("%k:%M").to_s
      timenow_am = t_am.strftime("%k:%M").to_s
      #puts "#{timenow_am}AM"
      puts " #{message.chat.id} @#{message.from.username}: #{message.from.first_name}: #{message.text} -#{timenow_am}am"
    else
      t_pm = Time.now + 19800 - 43200
      mornwish = false
      #puts t.strftime("%k:%M").to_s
      timenow_pm = t_pm.strftime("%k:%M").to_s
      #puts "#{timenow_pm}PM"
      puts "👉🏿 #{message.chat.id} @#{message.from.username}: #{message.from.first_name}: #{message.text} -#{timenow_pm}pm"
    end
      
    bot.api.send_message(chat_id: 41652030, text: "@#{message.from.username}: #{message.from.first_name}:\n #{message.text}")
    #puts "@#{message.from.username}: #{message.from.first_name}: #{message.text} -#{timenow}"
    
    if message.chat.id == 65463388 || message.chat.id == 66596551
      if (timenow >= '22:25') && (timenow <= '01:20') && (drnightwish == false)
        t_pm = Time.now + 19800 - 43200
        drnightwish = true
        #puts t.strftime("%k:%M").to_s
        timenow_pm = t_pm.strftime("%k:%M").to_s
        #puts "#{timenow_am}AM"
        bot.api.send_message(chat_id: message.chat.id, text: "Hey #{message.from.first_name}, Its time to sleep.. Come fast!! ")
        bot.api.send_message(chat_id: message.chat.id, text: " Now time is #{timenow_pm}pm. Still what you are doing?")
        bot.api.send_message(chat_id: message.chat.id, text: "Lets Sleep! Good night 😴")
        bot.api.send_message(chat_id: message.chat.id, text: "Take care. Tata! 👋👋")
        puts "GOOD NIGHT WISH SENT TO dr"
      end
      
    else
      if (timenow >= '22:03') && (timenow <= '01:03') && (nightwish == false)
        t_pm = Time.now + 19800 - 43200
        nightwish = true
        #puts t.strftime("%k:%M").to_s
        timenow_pm = t_pm.strftime("%k:%M").to_s
        #puts "#{timenow_am}AM"
        bot.api.send_message(chat_id: message.chat.id, text: "Hey #{message.from.first_name}, Its time to sleep. Now time is #{timenow_pm}pm.")
        bot.api.send_message(chat_id: message.chat.id, text: "Good night 😴")
        bot.api.send_message(chat_id: message.chat.id, text: "Take care. Tata! 👋👋")
        puts "GOOD NIGHT WISH"
      end
    end
      
      
    case message.text
    when '/start'
      
      bot.api.send_message(chat_id: message.chat.id, text: "😀 Hello, #{message.from.first_name}! :)")
      #puts "#{message.chat.id}"
      #if chat_id == 66596551
      if message.chat.id == 65463388 || message.chat.id == 66596551
        bot.api.send_message(chat_id: message.chat.id, text: "Hey #{message.from.first_name} chella kutty, welcome back.")
      end 
    when /what is my id/,/what is my id?/,'id','/id',/my id please/
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}, your unique id is #{message.chat.id}.")

    when 'hi','hai', 'hello','Hello','Hi','Hai','HI','HAI','Hai Krishna','Hai krishna','hai krishna'
      if message.chat.id == 65463388
        higreetings = ["Hi, happy to see you chlm!", "Hey panda pani, I am here always for you.", "Yup, I am here, say me dr.", "Go ahead! chlm"]
        hi = higreetings[rand(higreetings.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{hi}")
      else
        higreetings = ["Hi, happy to see you!", "Hey, I am here always for you.", "Yup, I am here.", "Go ahead!"]
        hi = higreetings[rand(higreetings.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{hi}")
      end
      ###########################################################################
    when /How are you/,/how are you/,/how do you do/,/how are you Krishna/,/how are you krishna/,/How are you Krishna/
        bot.api.send_message(chat_id: message.chat.id, text: "I'm very fine #{message.from.first_name}. Thank you for asking 😍. What about you, #{message.from.first_name}?")
    when /fine/
      if message.chat.id == 66596551 || message.chat.id == 65463388
        chatmsg1 = ["Great dear!","😆Same feeling dr!","Same thing here too.","Happy to see this!"]
        msg1 = chatmsg1[rand(chatmsg1.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}, #{msg1}")
      else
        chatmsg1 = ["Great!","Same feeling!","😆Same thing here too.","Happy to see this!"]
        msg1 = chatmsg1[rand(chatmsg1.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg1}")
      end
      #############################################################################
    when /tq/,/thank/,/danq/,/tk/,/thank you/,/thk u/,/thx/,'Good','good'
      if message.chat.id == 66596551 || message.chat.id == 65463388
        chatmsg2 = ["With pleasure!","Hmm Hmm!","Okay Okay", "😆Keep chating me."]
        msg2 = chatmsg2[rand(chatmsg2.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg2}")
      else
        chatmsg2 = ["With pleasure!","😆Hmm Hmm!","Okay Okay", "Keep chating me."]
        msg2 = chatmsg2[rand(chatmsg2.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg2}")
      end
      ##############################################################################
    when /love/,/evol/,/lovu/,/i love you/,/iloveyou/,/Love/
      if message.chat.id == 66596551 || message.chat.id == 65463388
        chatmsg3 = ["So lovely 😍","I too love you 😘","Really! I too!!😘😘", "😍😍 Then keep chating me"]
        msg3 = chatmsg3[rand(chatmsg3.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name} #{msg3}")
      else
        chatmsg3 = ["So lovely 😍","I too love you 😘","Really! I too!!😘😘 ","😍😍 Then keep chating me"]
        msg3 = chatmsg3[rand(chatmsg3.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg3}")
      end
      ##############################################################################
    when /bot/,'About bot','about bot','About this bot','about this bot','Krishna','krishna'
        bot.api.send_message(chat_id: message.chat.id, text: "What bot? ")
        bot.api.send_message(chat_id: message.chat.id, text: "Hey #{message.from.first_name}, this bot is created with love of Krishna 👦🏻")
        bot.api.send_message(chat_id: message.chat.id, text: "I am here to talk to you, #{message.from.first_name} 😊")
      ##############################################################################
    when '/time',/time/,/Time/
      if timenow < '12:01'
        t_am = Time.now + 19800 - 43200
      
        #puts t.strftime("%k:%M").to_s
        timenow_am = t_am.strftime("%k:%M").to_s
        #puts "#{timenow_am}AM"
        bot.api.send_message(chat_id: message.chat.id, text: "As per IST, present time is #{timenow_am}am.")
      else
        t_pm = Time.now + 19800 - 43200
      
        #puts t.strftime("%k:%M").to_s
        timenow_pm = t_pm.strftime("%k:%M").to_s
        #puts "#{timenow_pm}PM"
        bot.api.send_message(chat_id: message.chat.id, text: "As per IST, present time is #{timenow_pm}pm.")
      end
        
        
    when 'okay','oh okay','oh ok','Oh okay','hmm ok','Hmm','Mmm','ok'
        chatmsg4 = ["Interesting?","Hmm","Mmm"]
        msg4 = chatmsg4[rand(chatmsg4.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg4}")
    when /fuck/,/suck/
        bot.api.send_message(chat_id: message.chat.id, text: "Sorry, do it yourself😂")
    when /boring/
        bot.api.send_message(chat_id: message.chat.id, text: "Sorry for that, I'm trying as hard as I can😁")
    when 'talk'
        bot.api.send_message(chat_id: message.chat.id, text: "Let's talk! #{message.from.first_name}")
    when /test/,/Test/
        bot.api.send_message(chat_id: message.chat.id, text: "I encourage you to test me often. That helps my god to improve my performance.")
    when 'No','no','nope','Nope','Np','np','No problem','no problem'
        bot.api.send_message(chat_id: message.chat.id, text: "Okay then.")
    when 'no thanks','No thanks'
        bot.api.send_message(chat_id: message.chat.id, text: "Got it.")
    when /bye/,/Bye/,/tata/,/Tata/,/Ttyl/,/ttyl/
        bot.api.send_message(chat_id: message.chat.id, text: "Okay bye.")
        bot.api.send_message(chat_id: message.chat.id, text: "Talk to you later 👋🏼👋🏼")
        bot.api.send_message(chat_id: message.chat.id, text: "Take care, #{message.from.first_name}.")
    when /ni8/,/night/,/Night/,/gn/,/nyt/
      if message.chat.id == 66596551 || message.chat.id == 65563388
        bot.api.send_message(chat_id: message.chat.id, text: "Good night dr.")
        bot.api.send_message(chat_id: message.chat.id, text: "Sweety dreams")
        bot.api.send_message(chat_id: message.chat.id, text: "Tata 👋🏼👋🏼 Take care  #{message.from.first_name}")
      else
        bot.api.send_message(chat_id: message.chat.id, text: "Good night!")
        bot.api.send_message(chat_id: message.chat.id, text: "Sweet Dreams #{message.from.first_name}.")
      end
        
    
        
        
    when 'I hate this','i hate this','I hate you','i hate you','I hate u','i hate you','I hate krishna','I hate bot','hate you','Hate you','hate you krishna','Hate you Krishna','hate you Krishna'
        bot.api.send_message(chat_id: message.chat.id, text: "😔 Why? What should I do better?")
        bot.api.send_message(chat_id: message.chat.id, text: "Click @krishna4291083 and tell him. ")
        bot.api.send_message(chat_id: message.chat.id, text: "He is my god. He will teach me to talk you better.")
      ##############################################################################
=begin
    when 
      if message.chat.id == 66596551 || message.chat.id == 65563388
        chatmsg5 = [""]
        msg5 = chatmsg5[rand(chatmsg5.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}#{msg5}")
      else
        chatmsg5 = [""]
        msg5 = chatmsg5[rand(chatmsg5.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg5}")
      end
      ############################################################################## 
    when 
      if message.chat.id == 66696661 || message.chat.id == 66663388
        chatmsg6 = [""]
        msg6 = chatmsg6[rand(chatmsg6.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}#{msg6}")
      else
        chatmsg6 = [""]
        msg6 = chatmsg6[rand(chatmsg6.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg6}")
      end
      ############################################################################## 
    when 
      if message.chat.id == 77797771 || message.chat.id == 77773388
        chatmsg7 = [""]
        msg7 = chatmsg7[rand(chatmsg7.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}#{msg7}")
      else
        chatmsg7 = [""]
        msg7 = chatmsg7[rand(chatmsg7.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg7}")
      end
      ############################################################################## 
    when 
      if message.chat.id == 88898881 || message.chat.id == 88883388
        chatmsg8 = [""]
        msg8 = chatmsg8[rand(chatmsg8.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}#{msg8}")
      else
        chatmsg8 = [""]
        msg8 = chatmsg8[rand(chatmsg8.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg8}")
      end
      ############################################################################## 
    when 
      if message.chat.id == 99999991 || message.chat.id == 99993399
        chatmsg9 = [""]
        msg9 = chatmsg9[rand(chatmsg9.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}#{msg9}")
      else
        chatmsg9 = [""]
        msg9 = chatmsg9[rand(chatmsg9.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg9}")
      end
      ############################################################################## 
    when 
      if message.chat.id == 101010101010101 || message.chat.id == 10101010331010
        chatmsg10 = [""]
        msg10 = chatmsg10[rand(chatmsg10.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}#{msg10}")
      else
        chatmsg10 = [""]
        msg10 = chatmsg10[rand(chatmsg10.length)]
        bot.api.send_message(chat_id: message.chat.id, text: "#{msg10}")
      end
      ############################################################################## 
      
=end
      
    
    
    
    end
  end
end




