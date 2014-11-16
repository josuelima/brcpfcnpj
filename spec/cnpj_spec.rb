# -*- encoding : utf-8 -*-
require File.dirname(__FILE__) + '/spec_helper'

describe Cnpj do
  
  it "should be invalid with malformed number" do
    numeros = %w(04.22A.284/0001-11 04.222-284.0001-11 04222/284/0001-11)
    numeros.each do |n|
      cnpj = Cnpj.new(n)
      cnpj.should_not be_valido
    end
  end
  
  it "should be invalid with invalid number" do
    numeros = %w(69103604020160 00000000000000 69.103.604/0001-61 01618211000264)
    numeros.each do |n|
      cnpj = Cnpj.new(n)
      cnpj.should_not be_valido
    end
  end

  it "should be invalid with a number longer than 14 chars, even if the first 14 represent a valid number" do
    %w(691036040001-601 69103604000160a 69103604000160ABC 6910360400016000).each do |n|
      Cnpj.new(n).should_not be_valido
    end
  end
  
  it "should be valid with correct number" do
    numeros = %w(69103604000160 69.103.604/0001-60 01518211/000264 01.5182110002-64 00.000.000/1447-89)
    numeros.each do |n|
      cnpj = Cnpj.new(n)
      cnpj.should be_valido
    end
  end
  
  it "should return the formated cnpj" do
    cnpj = Cnpj.new("69103604000160")
    cnpj.to_s.should == "69103604000160"
  end
  
  it "should be equal to another instance with the same number" do
    cnpj_1 = Cnpj.new("69103604000160")
    cnpj_2 = Cnpj.new("69.103.604/0001-60")
    cnpj_1.should == cnpj_2
  end  
end 
  
  
