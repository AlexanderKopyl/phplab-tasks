<?php
declare(strict_types=1);


use PHPUnit\Framework\TestCase;

class CountArgumentsTest extends TestCase
{
    /**
     * @dataProvider positiveDataProvider
     */
    public function testPositive($input, $expected)
    {
        $this->assertEquals($expected, countArguments($input));
    }

    public function positiveDataProvider()
    {
        return [
            [[
                'argument_count'  => 0,
                'argument_values' => [],
            ]],
            ['Hello World!',[
                'argument_count'  => 1,
                'argument_values' => ['Hello World!'],
            ]],
            ["Hello World!", "Some Text",[
                'argument_count'  => 2,
                'argument_values' => ["Hello World!", "Some Text"],
            ]]
        ];
    }

}
