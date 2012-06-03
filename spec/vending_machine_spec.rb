# coding: utf-8
require './vending_machine'
require './money'

describe VendingMachine do
  before do
    @vending_machine = VendingMachine.new
  end
  it "自動販売機には、10円玉を投入できる" do
    @vending_machine.throw(Money::JUUEN).should == "success"
  end
  it "自動販売機には、50円玉を投入できる" do
    @vending_machine.throw(Money::GOJUUEN).should == "success"
    @vending_machine.total.should == 50
  end
  it "自動販売機には、100円玉を投入できる" do
    @vending_machine.throw(Money::HYAKUEN).should == "success"
  end
  it "自動販売機には、500円玉を投入できる" do
    @vending_machine.throw(Money::GOHYAKUEN).should == "success"
  end
  it "自動販売機には、1000円札を投入できる" do
    @vending_machine.throw(Money::SENEN).should == "success"
  end
  it "自動販売機には、5000円札は投入できない" do
    @vending_machine.throw(Money::GOSENEN).should == "failure"
  end
  it "自販機にはお金を複数回投入できる" do
    @vending_machine.throw(Money::JUUEN)
    @vending_machine.throw(Money::JUUEN)
    @vending_machine.total.should == 20
  end
  it "自販機に投入された金額の総計を取得できる" do
    @vending_machine.throw(Money::JUUEN)
		@vending_machine.total.should == 10
  end
end

