pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract Contract {

    uint ver = 5;

    struct Center {
        uint32 x;
        uint32 y;
    }

    struct Point {
        string color;
        Center center;
    }

    Point[] m_pointsArray;


    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }

    

    function setWithIteration(Point[] points) external {
        tvm.accept();
        for (uint32 i = 0; i < points.length; i++) {
            m_pointsArray.push( points[i] );
        }
    }

    function setAtOnce (Point[] points) external {
        tvm.accept();
        m_pointsArray = points;
    }


    function get() public view returns (Point[]) {
        tvm.accept();
        return m_pointsArray;
    }
}
