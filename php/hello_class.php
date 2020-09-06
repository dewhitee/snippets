<?php

class Hello
{
    protected $lang;
    function __construct($lang)
    {
        $this->lang = $lang;
    }

    function greet()
    {
        if ($this->lang == 'fr') return 'Bonjour';
        if ($this->lang == 'es') return 'Hola';
        return 'Hello';
    }
}

class Social extends Hello
{
    function bye()
    {
        if ($this->lang == 'fr') return 'Au revoir';
        if ($this->lang == 'es') return 'Adios';
    }
}

$hi = new Hello('es');
echo $hi->greet()."\n";

$bye = new Social('es');
echo $bye->greet()."\n";
echo $bye->bye()."\n";