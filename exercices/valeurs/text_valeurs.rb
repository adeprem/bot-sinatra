DINER_CELEBRATION = {
ready:
"Cet exercice s'appelle 'Dîner de célébration de vie et va te projeter dans le futur. Ça te dit ?"
intro:
"Vamos ! Imaginons que dans 10 ans, les personnes les plus proches de toi décident d’organiser un dîner en ton honneur. A cet évènement tous ceux qui vous sont chers sont présents une coupe à la main.",
fete:
"Durant cette fête, ils ont tous préparé un discours en ton honneur. 🍾  Au cours de cette prise de parole ils vont pouvoir te témoigner en toute sincérité ce qu’ils pensent et ressentent pour toi. Que voudrais-tu qu’ils disent à ce moment ?",
reponse_valeurs:
"Super ! Tu vois, ce que tu viens d'écrire, ce sont en fait les valeurs qui te sont le plus chères. C'est très important de les connaître, et nous allons pouvoir les réutiliser lorsque nous travaillerons sur les valeurs engagées ensemble.",
note_valeurs:
"Je prends note de ce que tu as écris, et toi aussi tu devrais garder ces valeurs sur un carnet ou dans un coin de ta tête. Elles sont très importantes ! 😌",
nouvel_exercice:
"Maintenant que nous avons terminé, as-tu envie d'en faire un autre ?",
unknown_command:
  "Je ne comprends pas ce que tu as dit, peux-tu appuyer sur un bouton s'il te plait?"
}



START_EXERCISE = [
  {
    content_type: 'text',
    title: 'GO!',
    payload: 'GO'
  },
  {
    content_type: 'text',
    title: "Changer d'exo",
    payload: 'CHANGE_EXO'
  },
  {
    content_type: 'text',
    title: 'Autre dimension',
    payload: 'ANOTHER_DIMENSION'
  }
]

NOUVEL_EXERCICE  = [
  {
    content_type: 'text',
    title: 'Oui',
    payload: 'OUI'
  },
  {
    content_type: 'text',
    title: "Non",
    payload: 'NON'
  },
  {
    content_type: 'text',
    title: 'Changer de thème',
    payload: 'CHANGER_THEME'
  }
]
