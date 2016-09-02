<?php

namespace adminBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class adminBundle extends Bundle
{
    public function getParent()
    {
        return 'FOSUserBundle';
    }
}
