<?php
require './api/dao/TestDao.class.php';
require_once('./vendor/autoload.php');

use PHPUnit\Framework\TestCase;

class testExample extends TestCase
{
    private $testDao;
    protected function setUp(): void
    {
        $this->testDao = new TestDao();
    }

    protected function tearDown(): void
    {
        $this->testDao = NULL;
    }

    public function testExample()
    {
        $result = $this->testDao->testFunction('naida@gmail.com');
        $this->assertNotNull($result);
    }

    public function testExampleEmail()
    {
        $result = $this->testDao->testFunction('naida@gmail.com');
        $this->assertEquals('naida@gmail.com', $result);
    }
}
