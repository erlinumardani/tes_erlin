<form action="" method="get">
    <input type="input" name="kata">
    <input type="submit" value="Get Synonims">
</form>

<?php

    function getSynonyms($string){

        $kamus = array("rajin" => array("giat"),"besar"=>array("luas","akbar"));

        $result = $kamus[$string]; 

        if(isset($result)){

            return json_encode(array_merge(array("kata"=>$string),array("synonyms"=>$result)));

        }else{

            return json_encode(array_merge(array("kata"=>$string),array("synonyms"=>"")));

        }

    }



    echo getSynonyms($_GET["kata"]);
?>