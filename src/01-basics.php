<?php

/**
 * The $minute variable contains a number from 0 to 59 (i.e. 10 or 25 or 60 etc).
 * Determine in which quarter of an hour the number falls.
 * Return one of the values: "first", "second", "third" and "fourth".
 * Throw InvalidArgumentException if $minute is negative of greater than 60.
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  int  $minute
 * @return string
 * @throws InvalidArgumentException
 */
function getMinuteQuarter(int $minute)
{
    $units = ceil($minute / 15);
    switch ($units) {
        case 1:
            $answer = 'first';
            break;
        case 2:
            $answer = 'second';
            break;
        case 3:
            $answer = 'third';
            break;
        case 4:
        case 0:
            $answer = 'fourth';
            break;
        default:
            throw new InvalidArgumentException('Wrong time: '.$minute);
    }

    return $answer;
}

/**
 * The $year variable contains a year (i.e. 1995 or 2020 etc).
 * Return true if the year is Leap or false otherwise.
 * Throw InvalidArgumentException if $year is lower than 1900.
 * @see https://en.wikipedia.org/wiki/Leap_year
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  int  $year
 * @return boolean
 * @throws InvalidArgumentException
 */
function isLeapYear(int $year)
{
    if ($year < 1900) {
        throw new InvalidArgumentException('Not Correct year'.$year);
    }
    return $year % 4 == 0;
}

/**
 * The $input variable contains a string of six digits (like '123456' or '385934').
 * Return true if the sum of the first three digits is equal with the sum of last three ones
 * (i.e. in first case 1+2+3 not equal with 4+5+6 - need to return false).
 * Throw InvalidArgumentException if $input contains more or less than 6 digits.
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  string  $input
 * @return boolean
 * @throws InvalidArgumentException
 */
function isSumEqual(string $input)
{
    $length = strlen($input);

    if ($length !== 6) {
        throw new InvalidArgumentException('Not correct string'.$input);
    }

    $first_part = substr($input, 0, 3);
    $second_part = substr($input, 3, 3);

    $sum_first = [];
    $sum_second = [];

    for ($i = 0; $i < strlen($first_part); $i++) {
        $sum_first [] = substr($first_part, $i, 1);
    }
    for ($i = 0; $i < strlen($second_part); $i++) {
        $sum_second [] = substr($second_part, $i, 1);
    }

    if (array_sum($sum_first) == array_sum($sum_second)) {
        return true;
    } else {
        return false;
    }
}
