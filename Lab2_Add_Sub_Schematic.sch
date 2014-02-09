<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin name="I1" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="640" name="XLXI_1" orien="R0" />
        <instance x="2240" y="896" name="XLXI_2" orien="R0" />
        <instance x="1248" y="1536" name="XLXI_3" orien="R0" />
        <instance x="1264" y="1872" name="XLXI_4" orien="R0" />
        <instance x="2176" y="2080" name="XLXI_5" orien="R0" />
        <instance x="2176" y="1600" name="XLXI_6" orien="R0" />
        <instance x="2816" y="1792" name="XLXI_7" orien="R0" />
        <text style="fontsize:80;fontname:Arial" x="176" y="596">A</text>
        <text style="fontsize:80;fontname:Arial" x="224" y="1432">B</text>
        <text style="fontsize:80;fontname:Arial" x="200" y="2388">Cin</text>
        <text style="fontsize:80;fontname:Arial" x="3032" y="788">Sum</text>
        <text style="fontsize:80;fontname:Arial" x="3284" y="1696">Cout</text>
        <branch name="XLXN_2">
            <wire x2="1472" y1="576" y2="576" x1="304" />
            <wire x2="304" y1="576" y2="1424" x1="304" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1744" y1="544" y2="768" x1="1744" />
            <wire x2="2240" y1="768" y2="768" x1="1744" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2240" y1="848" y2="848" x1="336" />
            <wire x2="336" y1="848" y2="2320" x1="336" />
            <wire x2="336" y1="2320" y2="2400" x1="336" />
            <wire x2="352" y1="2400" y2="2400" x1="336" />
            <wire x2="800" y1="2320" y2="2320" x1="336" />
            <wire x2="1264" y1="1808" y2="1808" x1="800" />
            <wire x2="800" y1="1808" y2="2240" x1="800" />
            <wire x2="800" y1="2240" y2="2320" x1="800" />
            <wire x2="1488" y1="2240" y2="2240" x1="800" />
            <wire x2="1488" y1="2016" y2="2240" x1="1488" />
            <wire x2="2176" y1="2016" y2="2016" x1="1488" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="3008" y1="800" y2="800" x1="2512" />
            <wire x2="3008" y1="784" y2="800" x1="3008" />
            <wire x2="3024" y1="784" y2="784" x1="3008" />
            <wire x2="3024" y1="768" y2="784" x1="3024" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="272" y1="512" y2="576" x1="272" />
            <wire x2="416" y1="512" y2="512" x1="272" />
            <wire x2="416" y1="512" y2="1408" x1="416" />
            <wire x2="1248" y1="1408" y2="1408" x1="416" />
            <wire x2="864" y1="512" y2="512" x1="416" />
            <wire x2="1472" y1="512" y2="512" x1="864" />
            <wire x2="864" y1="512" y2="1744" x1="864" />
            <wire x2="1264" y1="1744" y2="1744" x1="864" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1840" y1="1456" y2="1456" x1="1504" />
            <wire x2="1840" y1="1456" y2="1472" x1="1840" />
            <wire x2="2176" y1="1472" y2="1472" x1="1840" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2832" y1="1520" y2="1520" x1="2448" />
            <wire x2="2832" y1="1520" y2="1648" x1="2832" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="3296" y1="1696" y2="1696" x1="3088" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="288" y1="1440" y2="1472" x1="288" />
            <wire x2="560" y1="1472" y2="1472" x1="288" />
            <wire x2="1248" y1="1472" y2="1472" x1="560" />
            <wire x2="560" y1="1472" y2="1952" x1="560" />
            <wire x2="2176" y1="1952" y2="1952" x1="560" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2816" y1="1728" y2="1728" x1="2448" />
            <wire x2="2448" y1="1728" y2="1984" x1="2448" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2176" y1="1536" y2="1536" x1="1536" />
            <wire x2="1536" y1="1536" y2="1776" x1="1536" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="368" y1="2352" y2="2352" x1="352" />
        </branch>
    </sheet>
</drawing>