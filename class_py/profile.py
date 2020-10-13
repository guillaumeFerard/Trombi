#coding utf-8
import pygame

from class_py.home import Home


class Profile():
    
    def __init__(self, width, height):
        self.profile_selected = False
        self.background = pygame.image.load("asset/background_profile.jpg")
        self.background = pygame.transform.scale(self.background, (width, height))
        self.home = Home()
        self.withe = (255, 255, 255)
        self.font = pygame.font.Font(None, 50)


    def launch_profile(self, avatar, name, first_name, project, parcours):
        """
            method to get data from student object that will be display on the screen with the update method
        """

        self.profile_selected = True
        self.avatar = avatar
        self.avatar = pygame.image.load(avatar)
        self.avatar = pygame.transform.scale(self.avatar, (300, 280))
        self.project = project
        self.project = pygame.image.load(project)
        self.name = name
        self.name_blit = self.font.render(self.name, 1, (0, 0, 0))
        self.first_name = first_name
        self.first_name_blit = self.font.render(self.first_name, 1, (0, 0, 0))
        self.parcours = parcours
        self.parcours = pygame.image.load(parcours)
        self.parcours = pygame.transform.scale(self.parcours, (720, 370))


    def return_home(self):
        """
            method to return at select screen
        """

        self.profile_selected = False
        

    def update(self, screen):
        """
            update method to display data on the surface
        """

        screen.blit(self.avatar, (50, 50))
        screen.blit(self.project, (50, 345))
        screen.blit(self.parcours, (400, 80))
        screen.blit(self.name_blit, (700, 40))
        screen.blit(self.first_name_blit, (500, 40))
        