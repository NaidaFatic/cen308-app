<?php
require_once('./vendor/autoload.php');

use GuzzleHttp\Client;
use GuzzleHttp\Handler\MockHandler;
use GuzzleHttp\HandlerStack;
use GuzzleHttp\Psr7\Response;
use PHPUnit\Framework\TestCase;


class testExampleHttp extends TestCase
{
    protected $client;
    protected function setUp(): void
    {
        $mock = new MockHandler([
            new Response(200, [], json_encode(['medicines' => ''])),
        ]);

        $handlerStack = HandlerStack::create($mock);
        $this->client = new Client(['handler' => $handlerStack]);
    }

    public function testStatusRoute()
    {
        $response = $this->client->get('medicines');

        $this->assertEquals(200, $response->getStatusCode());

        // $data = json_decode($response->getBody(), true);
        // $this->assertArrayHasKey('medicines', $data);
        // $this->assertContainsEquals('online', $data['medicines']);
    }
}
