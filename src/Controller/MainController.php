<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends AbstractController
{
    #[Route('/', name: 'app_main')]
    public function index(): Response
    {
        if ($this->isGranted('ROLE_USER') == true) {
            return $this->redirectToRoute('app_users_list');
        }
        return $this->redirectToRoute('login');
    }
}
