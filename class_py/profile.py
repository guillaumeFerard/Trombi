import pygame

from class_py.home import Home
from class_py.requeteSQL import SQL

class Profile():
    
    def __init__(self, width, height):
        self.profile_selected = False
        self.background = pygame.image.load("asset/background_profile.jpg")
        self.background = pygame.transform.scale(self.background, (width, height))
        self.home = Home()
        self.withe = (255, 255, 255)

    def launch_profile(self, avatar, name, first_name, project, parcours):
        self.profile_selected = True
        self.font = pygame.font.Font(None, 50)
        self.avatar = avatar
        self.avatar = pygame.image.load(avatar)
        self.avatar = pygame.transform.scale(self.avatar, (300, 280))
        self.project = project
        self.project = pygame.image.load(project)
        #self.project = pygame.transform.scale(self.project, (650, 400))
        self.name = name
        self.name_blit = self.font.render(self.name, 1, (0, 0, 0))
        self.first_name = first_name
        self.first_name_blit = self.font.render(self.first_name, 1, (0, 0, 0))
        self.parcours = parcours
        self.parcours = pygame.image.load(parcours)
        self.parcours = pygame.transform.scale(self.parcours, (720, 370))

        ####################
        
    def return_home(self):
        self.profile_selected = False
        
    def update(self, screen):
        screen.blit(self.avatar, (50, 50))
        screen.blit(self.project, (50, 345))
        screen.blit(self.parcours, (400, 80))
        screen.blit(self.name_blit, (700, 40))
        screen.blit(self.first_name_blit, (500, 40))
        