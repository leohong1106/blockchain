pragma solidity ^0.5.0;

contract SimpleStorage {
  uint storedData;

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }

////////////////////////// vote contract ////////////
  mapping (bytes32 => uint8)  votesReceived;

  constructor() public{
    votesReceived["김태희"]=0;
    votesReceived["이영애"]=0;
    votesReceived["전지현"]=0;
    votesReceived["채시라"]=0;
    votesReceived["장나라"]=0;
  }
  function addCandidate(bytes32 candidate) public{
    votesReceived[candidate]=0;
  }
  function voteForCandidate(bytes32 candidate) public{

    votesReceived[candidate] +=1;
    set(get()+1);
  }
  function totalVotesFor(bytes32 candidate) view public returns(uint8){

    return votesReceived[candidate];
  }
}