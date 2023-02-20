use IO::Socket::INET;

$sock = IO::Socket::INET->new(PeerAddr => 'localhost',
                              PeerPort => '5001',
                              Proto    => 'tcp');

$sock->send("foo");
$sock->send("bar");
$sock->send("foo");
$sock->send("bar");
$sock->shutdown(1);

my $data;
$sock->recv($data,1000);
print $data . "\n";