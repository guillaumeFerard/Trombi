# coding: utf-8
import pygame


class Student(pygame.sprite.Sprite):
    
    def __init__(self, x, y, name, first_name, avatar, project, course):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.image.load(avatar)
        self.avatar = avatar
        self.image = pygame.transform.scale(self.image, (220, 176))
        self.rect = self.image.get_rect()
        self.rect.x = x
        self.rect.y = y
        self.name = name
        self.first_name = first_name
        self.project = project
        self.course = course