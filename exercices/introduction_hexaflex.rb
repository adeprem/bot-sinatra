require_relative 'textes_introduction_hexaflex'
require_relative 'moment_present/exos_moment_present'

class IntroductionHexaflex
  def self.presentation_hexaflex(recipient_id) # presente rapidement le sujet et demande au user de choisir une dimension
    Bot.on :message do |message|
      say(recipient_id, PRESENTATION_HEXAFLEX[:act])
      say(recipient_id, PRESENTATION_HEXAFLEX[:flexibilité]) # il faudra rajouter une liste d'articles explicanr chaque branche car pour l'instant le user ne sais pas de quoi il s'agit avant de cliquer
      say(recipient_id, PRESENTATION_HEXAFLEX[:question_choix_dimension], LISTE_DIMENSIONS)
    end
  end

  def self.analyse_choix_dimension
    Bot.on :message do |message|
      puts "Received '#{message.inspect}' from #{message.sender}" # debug only
      sender_id = message.sender['id']
      answer = message.text.downcase
      if answer.include?("présent") #|| answer.include?("moyennement")
        say(sender_id, REPONSE_CHOIX_DIM[:moment_present])
        exercice = MomentPresent.exo_random
        MomentPresent.exercice
      elsif answer.include?("défusion")
        say(sender_id, REPONSE_CHOIX_DIM[:defusion])
      elsif answer.include?("acceptation")
        say(sender_id, REPONSE_CHOIX_DIM[:acceptation])
      elsif answer.include?("valeurs")
        say(sender_id, REPONSE_CHOIX_DIM[:valeurs])
      elsif answer.include?("contexte")
        say(sender_id, REPONSE_CHOIX_DIM[:soi_contexte])
      elsif answer.include?("action")
        say(sender_id, REPONSE_CHOIX_DIM[:action])
      else
        say(sender_id, ANS_EFFICIENCY[:unknown_command], GESTION_STRESS)
        IntroductionHexaflex.analyse_choix_dimension
      end
    end
  end
end
