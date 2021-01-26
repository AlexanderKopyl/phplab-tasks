<?php
/**
 * The $airports variable contains array of arrays of airports (see airports.php)
 * What can be put instead of placeholder so that function returns the unique first letter of each airport name
 * in alphabetical order
 *
 * Create a PhpUnit test (GetUniqueFirstLettersTest) which will check this behavior
 *
 * @param array $airports
 * @return string[]
 */
function getUniqueFirstLetters(array $airports)
{
    // put your logic here
    $first_letters = [];

    foreach ($airports as $airport) {
        $first_letters[] = substr($airport['name'], 0, 1);
    }
    $uniqLetters = array_unique($first_letters);
    sort($uniqLetters);
    return $uniqLetters;
}
