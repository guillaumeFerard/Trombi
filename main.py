# coding: utf-8

import pygame

from class_py.student_class import Student
from class_py.requeteSQL import SQL
from class_py.profile import Profile



pygame.init()


# set screen size
screen_width = 1050
screen_height = 750

# generate the surface with chosen name
pygame.display.set_caption("Trombinoscope")
screen = pygame.display.set_mode((screen_width, screen_height))

# import and load background image
background = pygame.image.load('asset/background.jpg')
background = pygame.transform.scale(background, (screen_width, screen_height))



list_licorne = []


list_coordonnees = [[100, 50],  [420, 50],  [740, 50],
                 [100, 276], [420, 276], [740, 276],
                 [100, 502], [420, 502], [740, 502]]

sql = SQL()
sql.requeteSQL()

for num in range(9):
    sql.requeteSQL()
    list_licorne.append(Student(list_coordonnees[num][0], list_coordonnees[num][1],
    sql.MyResult[num][1], sql.MyResult[num][2], sql.MyResult[num][3],
    sql.MyResult[num][4], sql.MyResult[num][5]))

# Instance of Profile class
profile = Profile(screen_width, screen_height)

running = True

# game loop
while running:
    if profile.profile_selected:
        screen.blit(profile.background, (0,0))
        screen.blit(profile.home.image, profile.home.rect)
        profile.update(screen)
    else:
        # display background image
        screen.blit(background, (0,0))

        # display student avatar on the screen
        for avatar in list_licorne:
            screen.blit(avatar.image, avatar.rect)

    # update screen
    pygame.display.flip()

    # possibles event in game
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
            pygame.quit()
            print("Le jeu se ferme")

        # click on avatar display student informations
        elif event.type == pygame.MOUSEBUTTONDOWN:
            if profile.profile_selected == False:
                
                for avatar in list_licorne:
                    if avatar.rect.collidepoint(event.pos):
                        profile.launch_profile(avatar.avatar, avatar.name, avatar.first_name, avatar.project, avatar.course)
                
            else:
                if profile.home.rect.collidepoint(event.pos):
                    profile.return_home()