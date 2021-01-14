certoraRun specs/harness/ControllerHarness.sol contracts/MarginPool.sol contracts/Whitelist.sol contracts/Oracle.sol specs/harness/OtokenHarnessA.sol specs/harness/OtokenHarnessB.sol specs/harness/DummyERC20A.sol specs/harness/DummyERC20B.sol specs/harness/DummyERC20C.sol --link ControllerHarness:oracle=Oracle ControllerHarness:whitelist=Whitelist ControllerHarness:pool=MarginPool ControllerHarness:anOtokenA=OtokenHarnessA ControllerHarness:anOtokenB=OtokenHarnessB ControllerHarness:dummyERC20C=DummyERC20C OtokenHarnessA:underlyingAsset=DummyERC20A OtokenHarnessA:strikeAsset=DummyERC20B OtokenHarnessA:collateralAsset=DummyERC20C OtokenHarnessB:underlyingAsset=DummyERC20A OtokenHarnessB:strikeAsset=DummyERC20B OtokenHarnessB:collateralAsset=DummyERC20C --solc solc --verify ControllerHarness:specs/ValidBalances.spec  --settings -assumeUnwindCond,-ciMode=true,-t=300,-optimisticReturnsize=true,-rule=$1 --cache OpynValidBalances 
