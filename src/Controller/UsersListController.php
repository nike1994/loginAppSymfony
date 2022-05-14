<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use App\Entity\User;
use Symfony\Component\HttpFoundation\Request;

class UsersListController extends AbstractController
{
    #[Route('/list_user/{page}', name: 'app_users_list')]
    public function index(AuthenticationUtils $authenticationUtils, ManagerRegistry $doctrine,int $page=0): Response
    {
        $entityManager = $doctrine->getManager();
        $users=$entityManager->getRepository(User::class)->findBy(
            array(),
            array('id' => 'DESC'),
            10,
            $page
        );

        return $this->render('userlist/list.html.twig', [
            "userList"  => $users,
            "page" => $page,
        ]);
    }

    #[Route('/deactivate', name: 'deactivate_user', methods:'POST')]
    public function deactivate(ManagerRegistry $doctrine,Request $request)
    {
        $entityManager = $doctrine->getManager();
        $formUserId = $request->request->get('user_id');
        $user=$entityManager->getRepository(User::class)->find($formUserId);
        $user->setActive(false);

        $entityManager->flush();

        return $this->redirectToRoute('app_users_list');
    }

}
