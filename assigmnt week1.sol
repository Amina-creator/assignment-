pragma solidity 0.8.4;
contract vehicle {
    function start ()public pure returns ( string memory ){
        string memory msg='The vehicle has just started';
        return msg;
    
        
    }
    function accelerate ()public pure returns(string memory){
        string memory msg2='the vehicle has just accelerated';
        return msg2;
    }
    function stop ()public pure returns (string memory){
        string memory msg3='the vehicle has just stopped';
        return msg3;
    }
    function service ()virtual public pure returns(string memory){
        string memory msg4='the vehicle is being serviced';
        return msg4;
    }
}

contract cars is vehicle{
    function service ()override public pure returns(string memory){
        string memory msg4='the vehicle is being serviced';
        string memory msgoveride='the car is being serviced';
        return msgoveride;}
    
}
contract motorcycle is vehicle{
    function service ()override public pure returns(string memory){
        string memory msg4='the vehicle is being serviced';
        string memory newmsg='the motorcycle is being serviced';
        return newmsg;}
    
}
contract truck is vehicle{
    function service ()override public pure returns(string memory){
        string memory msg4='the vehicle is being serviced';
        string memory msg5='the truck is being serviced';
        return msg5;}
    
}


contract altomehran is cars {
    
}
contract yamaha is motorcycle{
    
}
contract hino is truck{
    
}
contract servicestation {
    
    function vehicleservice1  (address add)public returns (string memory){
        altomehran a= altomehran(add);
        return a.service();
    }
    function vehicledervice2 (address add)public returns (string memory){
        yamaha b=yamaha(add);
        return b.service();
    }
    function vehicledervice3 (address add)public returns ( string memory){
    hino c=hino(add);
    return c.service;
}
}














