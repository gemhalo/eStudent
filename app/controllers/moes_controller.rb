require 'rubygems'
require 'roo'

class MoesController < ApplicationController


  def import
    @name

    oo = Openoffice.new(@name)
    oo.default_sheet = oo.sheets.first
   2.upto(20) do |line|
    @moes = Moe.new
    @moes.registration_no = oo.cell(line,'A')
    @moes.first_name = oo.cell(line,'B')
    @moes.father_name = oo.cell(line,'C')
    @moes.grand_father_name = oo.cell(line,'D')
    @moes.nationality = oo.cell(line,'E')
    @moes.sex = oo.cell(line,'F')
    @moes.sight = oo.cell(line,'G')
    @moes.age  = oo.cell(line,'H')
    @moes.school_code = oo.cell(line,'I')
    @moes.region = oo.cell(line,'J')
    @moes.stream = oo.cell(line,'K')
    @moes.id_no  = oo.cell(line,'L')
    @moes.placement = oo.cell(line,'U')
    @moes.result = oo.cell(line,'Y')
    @moes.save!
    #@moes.result_out_of     = sum * HOURLY_RATE
    
  end

  end
end
