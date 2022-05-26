contract Test {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    bool private flag0 = true;
    mapping(bytes32 => RoleData) private _roles;
    bytes32 public constant MONEY_ADMINISTRATOR = bytes32(keccak256(abi.encodePacked("MFI_Money_Administrator")));
    bytes32 public constant DATA_ADMINISTRATOR = bytes32(keccak256(abi.encodePacked("MFI_Data_Administrator")));
    bytes32 public constant PROJECT_ADMINISTRATOR = bytes32(keccak256(abi.encodePacked("MFI_Project_Administrator")));
    bytes32 public constant META_FINANCE_TRIGGER_POOL = bytes32(keccak256(abi.encodePacked("META_FINANCE_TRIGGER_POOL")));
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    event Flag(bool);

    function echidna_crack_MONEY_ADMINISTRATOR() public returns (bool){
        emit Flag(flag0);
        return flag0;
    }

    function echidna_crack_DATA_ADMINISTRATOR() public returns (bool){
        emit Flag(flag0);
        return flag0;
    }

    function echidna_crack_PROJECT_ADMINISTRATOR() public returns (bool){
        emit Flag(flag0);
        return flag0;
    }

    function echidna_crack_META_FINANCE_TRIGGER_POOL() public returns (bool){
        emit Flag(flag0);
        return flag0;
    }

    function echidna_crack_DEFAULT_ADMIN_ROLE() public returns (bool){
        emit Flag(flag0);
        return flag0;
    }

    function set0(address val) public {
        if (_roles[DEFAULT_ADMIN_ROLE].members[val])
            flag0 = false;
    }
}