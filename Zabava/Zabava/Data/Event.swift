//
//  Event.swift
//  Zabava
//
//  Created by Lion on 21/03/2023.
//

import Foundation


enum Category : String {
    
    case cinema,groupActivity,outdoor,indoor,musique,sport,game,spectacle
    
}

struct Event: Identifiable {

    let id = UUID()
    let title: String
    let place: String
    let length: String //durée d'activité
    let price: Double
    let date : String
    let schedule: String // Horaire
    let image: String
    let isParticipate: Bool
    let isLiked: Bool
    let category: Category
    let latitude : Double
    let longitude: Double // latitude & longitude
    let accessibility: Bool
    let organizer: String
    let description : String
    let isTheSpotlight: Bool // A la une
    
    
    
}
var cinema = Event(title: "Soirée ciné K. Bigelow", place: "25 Rue du Premier Film, 69008 Lyon", length: "2H00", price: 9.00 , date: "26 Avril 2023", schedule: "18h30" , image: "Cinema", isParticipate: false, isLiked: false,category: .cinema, latitude: 45.734936, longitude:  4.886690, accessibility: true, organizer: "Institut Lumière", description: "SOIRÉE SPÉCIALE KATHRYN BIGELOW \nEn présence de Simon Riaux, journaliste cinéma et critique (Le Cercle, podcast : « Réalisé sans trucage »), scénariste. \n18h30 Conférence sur Kathryn Bigelow (env. 1h15) \n20h30 Démineurs (K. Bigelow, 2h11)", isTheSpotlight: false) //7//

var fitnessCourse = Event(title: "HIIT + Relaxation", place: "23 Rue des ombres, 69002 Lyon :", length: "1h30" , price: 5.00, date: "12 Avril 2023", schedule: "15h00" , image: "Fitness", isParticipate: true, isLiked: false, category: .sport, latitude: 45.757705, longitude: 4.832789, accessibility: true, organizer: "Interval, Salle de sport", description:"Le HIIT (High-Intensity Interval Training) est un type d'entraînement cardiovasculaire qui implique des périodes d'exercices intenses et des périodes de récupération active ou de repos. Les séances de HIIT sont généralement courtes, allant de 20 à 30 minutes.\nNous enchainerons sur la séance de relaxation sportive. Vous  serez guidés à travers une série d'exercices de relaxation, de respiration et de visualisation.\nLes techniques de relaxation incluent la relaxation musculaire progressive, la respiration diaphragmatique et la méditation", isTheSpotlight: true) //4//

var bowling = Event(title: "Bowling", place: "45 Rue de l'aube, 69004 Lyon", length: "2h00", price: 10.00, date: "17 Avril 2023", schedule: "21h00", image: "Bowling", isParticipate: true, isLiked: false, category: .sport, latitude: 45.777068, longitude:  4.827039, accessibility: false, organizer: "Bowling de l'ouest", description: "Situé en plein centre de la Croix Rousse à Lyon, le Bowling de l'ouest vous accueille pour partager de grands moments en famille, entre amis et avec les enfants. Notre bowling dispose de 30 pistes, de billards, et de 4 mini-pistes pour les tout-petits.\nNotre salle dispose du matériel nécessaire pour vos séminaires, incentive, team building, show-room, soirées d’entreprise…", isTheSpotlight: true) //5//

var cookingCourse = Event(title: "Cours de cuisine", place:"8 Rue Etienne Dolet, 69003 Lyon", length:"2h00", price: 15.00, date: "25 Juin 2023", schedule: "2h00", image: "CookingCourse", isParticipate: true, isLiked: false, category: .indoor, latitude: 45.758735, longitude: 4.874054, accessibility: true, organizer: "Cuisine de Cheffe", description: "Nous proposons des ateliers/cours de cuisine à Lyon dans notre restaurant Cuisine de Cheffe. \nNotre cheffe, Laura, vous guideras à travers chaque étape des différentes recettes, de la sélection des ingrédients à la présentation finale. \nBien entendu, vous repartirez avec vos plats.",  isTheSpotlight: true) //8//

var woodStowerEvent = Event(title: "Festival WoodStower", place: "Grand parc de Miribel Jonage", length: "4h00", price: 38.00, date: "23 Aout 2023", schedule: "21h00 à 2h00" , image: "WoodStower", isParticipate: true, isLiked:false, category: .outdoor, latitude: 45.791279, longitude: 4.97717, accessibility: true, organizer: "Association WoodsTower", description: "Le Festival Woodstower 2023 à Lyon est organisé chaque année du côté du Grand Parc de Miribel Jonage. Il revient du mercredi 23 au dimanche 27 août 2023 pour une nouvelle édition. Au programme de cet événement lyonnais : des concerts électro, rap, pop (Angèle, Damso, Biga*Ranx...) et de nombreuses animations autour du lac.", isTheSpotlight: true) //9//

var traboule = Event(title: "Visite guidée dans les traboubles", place: "2 rue de la barre, 69001 Lyon", length: "2h30", price: 20.00, date: "18 Avril 2023", schedule: "14h30", image: "Traboules", isParticipate: true, isLiked: false, category: .outdoor, latitude: 45.767737, longitude: 4.832901, accessibility: false, organizer: "Les Traboulheureux", description: "Bienvenue dans cette visite guidée des traboules secrètes des quais de Saône ! Pendant la visite, je vous raconterai l'histoire des traboules et leur rôle dans la vie de la ville. \nNous visiterons également des bâtiments historiques magnifiquement restaurés et des cours intérieures pittoresques. \nLa visite se terminera sur les quais de Saône, où nous pourrons discuter de tout ce que nous avons vu et appris.", isTheSpotlight: true) //6//

 var photographie = Event(title: "Stage de Photo", place: "77 Route de Vienne, 69007 Lyon", length: "2h00", price: 45.00, date: "30 Mars 2023", schedule: "10h00", image: "Photography", isParticipate: true, isLiked: false, category: .outdoor, latitude: 45.743955, longitude: 4.847672, accessibility: false, organizer: "Pixel Perfect Studio", description: "Un stage photo guidé par des photographes passionnés, pour une formation ou initiation de qualité.\nVous serez initiés aux notions de base telles que l'exposition, la composition, la mise au point, la profondeur de champ et la vitesse d'obturation. vous apprendrez également à manipuler un appareil photo, à choisir le bon objectif et à régler les paramètres pour obtenir des images nettes et bien exposées.\nCet atelier peut être adapté à tous les niveaux, du débutant absolu à l'amateur avancé, et peut être personnalisé en fonction des besoins et des intérêts des participants. Le matériel est fourni par le studio et vous aurez la possibilité de repartir avec vos clichés.", isTheSpotlight: true) //3//

var escapeGame = Event(title: "Escape Game Lyon", place: "11 Rue de la Part-Dieu, 69003 Lyon", length: "1h30", price: 45.00, date: "27 Mars 2023", schedule: "14h45", image: "Escapegame", isParticipate: true, isLiked: false, category: .game, latitude: 45.761615, longitude: 4.849636, accessibility: false, organizer: "Enigma-Lyon", description: "Découvrez l’Escape Game à Lyon qui vous fait vivre la vie d’agent secret. Situé à la Part-Dieu, John Doe vous propose de  résoudre des énigmes dans une immersion totale! \nJohn Doe propose 6 salles d'Escape Game à Lyon : la Prison de Blue Castle, la Mine de Black Rock, le Casino Magnifico et le Temple de l'Infini. \n Menez l'enquête, résolvez les énigmes et faites preuve d'esprit d'équipe pour réussir. Des scénarios accessibles pour les joueurs de tous les niveaux.", isTheSpotlight: true) //2//

var writing = Event(title: "Atelier d'écriture", place: "47 Rue de Sèze, 69006 Lyon", length: "1h30", price: 25.00, date: "20 Mars 2023", schedule: "18h00", image: "writing", isParticipate: true, isLiked: false, category: .indoor, latitude: 45.764561, longitude: 4.853315, accessibility: false, organizer: "L'Horizon littéraire", description: "Envie de participer à un atelier d’écriture ou à un stage d’écriture à Lyon ? En quête d’une technique d’écriture, d’un guide pour devenir écrivain, de conseils pour améliorer votre style ? Vous êtes les bienvenus.", isTheSpotlight: true) //1//


var tabOfEvents: [Event] = [cinema, fitnessCourse, bowling, cookingCourse, woodStowerEvent, traboule, photographie, escapeGame, writing]

var spotlightArray: [Event] = [fitnessCourse,cookingCourse,bowling,photographie,traboule]

var arrayNewEvent: [Event] = [cookingCourse,fitnessCourse]

var evenement: [Event] = [fitnessCourse,bowling,traboule,cinema,cookingCourse]

var favoriteEventArray: [Event] = [cookingCourse, woodStowerEvent]

var pastEventsArray : [Event] = [photographie,escapeGame,writing ] //Events terminés

var currentEventArray: [Event] = [fitnessCourse,bowling,traboule,cinema,cookingCourse] //Event à venir
