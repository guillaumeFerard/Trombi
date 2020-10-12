# coding: utf-8

import pygame
import math

from class_py.student_class import Student
from class_py.requeteSQL import SQL
from class_py.profile import Profile



pygame.init()


# set la taille de l'écran
screen_width = 1050
screen_height = 750

# generer la fenêtre du jeu
pygame.display.set_caption("Trombinoscope")
screen = pygame.display.set_mode((screen_width, screen_height))

# importer et charger le background*
background = pygame.image.load('asset/background.jpg')
background = pygame.transform.scale(background, (screen_width, screen_height))



list_licorne = []


list_coordonnee = [[100, 50],  [420, 50],  [740, 50],
                 [100, 276], [420, 276], [740, 276],
                 [100, 502], [420, 502], [740, 502]]

sql = SQL()
sql.requeteSQL()

for num in range(9):
    sql.requeteSQL()
    list_licorne.append(Student(list_coordonnee[num][0], list_coordonnee[num][1],
    sql.MyResult[num][1], sql.MyResult[num][2], sql.MyResult[num][3],
    sql.MyResult[num][4], sql.MyResult[num][5]))

# Instance de profile
profile = Profile(screen_width, screen_height)

running = True

# boucle tant que running est vrai
while running:
    if profile.profile_selected:
        screen.blit(profile.background, (0,0))
        screen.blit(profile.home.image, profile.home.rect)
        profile.update(screen)
    else:
        # appliquer le background
        screen.blit(background, (0,0))

        for avatar in list_licorne:
            screen.blit(avatar.image, avatar.rect)

    # update le screen
    pygame.display.flip()

    # si le joueur ferme cette fenêtre
    for event in pygame.event.get():
        # check que l'event est le fait de fermer la fenêtre
        if event.type == pygame.QUIT:
            running = False
            pygame.quit()
            print("Le jeu se ferme")

        elif event.type == pygame.MOUSEBUTTONDOWN:
            if profile.profile_selected == False:
                
                for avatar in list_licorne:
                    if avatar.rect.collidepoint(event.pos):
                        profile.launch_profile(avatar.avatar, avatar.name, avatar.first_name, avatar.project, avatar.course)
                

            else:
                
                if profile.home.rect.collidepoint(event.pos):
                    profile.return_home()