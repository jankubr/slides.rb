require 'slides'

architecture_diagram =<<DIAGRAM
              ________________________              _______________________________________                 _____________________________
            |                         |           |                                       |               |                               |
            |     VOIP provider       |           |            VOIP server                |               |     Something in Ruby         |
PSTN <==>   |                         | <======>  |                                       | <==========>  |                               |
            |    Landline number      |           | call routing, voice mail, conferences |               |   controls the call logic     |
            |_________________________|           |_______________________________________|               |______________________________ |
DIAGRAM



@slides = [
  ['about', ['- Voice apps in Ruby', "\n- Jan Kubr\n"]],
  ['architecture', architecture_diagram],
  ['options', {
              :sip_provider => ["Fayn", "ha-loo", "802.cz"],
              :voip_server => ["Asterisk", "Freeswitch"],
              :something_in_ruby => ["Adhearsion", "Telegraph", "Liverpie", "Freec"]
              }
  ],
  ['thanks', { 
              :adhearsion => 'http://adhearsion.com',
              :telegraph => 'http://code.google.com/p/telegraph/',
              :liverpie => 'http://www.liverpie.com',
              :freec => 'http://github.com/jankubr/freec',
              'slides.rb' => ':-)'
             }
  ]  
]