class JobPost < ApplicationRecord
  belongs_to :recrutement


#VALIDATES
  validates :nom_complet,
            :promotion,
            :experience,
            :nb_classe,
            :contact,
            :contact_whatsapp,
            :know_it,
            :school,
            :gender,
            :personal_pc,
            :recrutement_id, presence: true

 #CONSTANTES
 IT= ["Vrai Débutant (Rien) ", " Débutant ( Word, Excel)", "Autonaume (Word Excel et +)"]
PC= ["Non", "Non et peut avoir son PC", "Oui, J'ai un PC"]
end
