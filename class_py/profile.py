# coding: utf-8
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


    def launch_profile(self, avatar, name, first_name, txt_project, course):
        """
            method to get data from the student object that will be display on the surface
        """

        self.profile_selected = True
        self.avatar = avatar
        self.avatar = pygame.image.load(avatar)
        self.avatar = pygame.transform.scale(self.avatar, (300, 280))
        self.name = name
        self.name_blit = self.font.render(self.name, 1, (0, 0, 0))
        self.first_name = first_name
        self.first_name_blit = self.font.render(self.first_name, 1, (0, 0, 0))
        self.txt_project = txt_project
        self.txt_project = pygame.image.load(txt_project)
        self.course = course
        self.course = pygame.image.load(course)


    def return_home(self):
        """
            method to return home if mouse click on the home button
        """

        self.profile_selected = False


    def update(self, screen):
        """
            update method to display data on the surface
        """

        screen.blit(self.avatar, (50, 50))
        screen.blit(self.name_blit, (700, 40))
        screen.blit(self.first_name_blit, (500, 40))
        screen.blit(self.txt_project, (50, 345))
        screen.blit(self.course, (400, 80))