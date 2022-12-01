const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");
const { ethers } = require("hardhat");


describe("Testing Calculator", function(){

    async function Reusable(){
        const a = await ethers.getContractFactory('Calculator');
        const b = await a.deploy();
        return {b};
    }

    describe("Test Addition", function(){
        it("should sum two numbers", async function(){
            const {b} = await loadFixture(Reusable);
            expect (await b.add(2,3)).to.equal(5);
        })
    })

    describe("Test Subtraction", function(){
        it("should subtract two numers", async function(){
            const {b} = await loadFixture(Reusable);
            expect (await b.subtract(3,3)).to.equal(0);
        })
    })

    describe("Test Multiplication", function(){
        it("should multiply two numers", async function(){
            const {b} = await loadFixture(Reusable);
            expect (await b.multiply(3,3)).to.equal(9);
        })
    })

    describe("Test Division", function(){
        it("should divide two numers", async function(){
            const {b} = await loadFixture(Reusable);
            expect (await b.divide(9,3)).to.equal(3);
        })
    })
}
)