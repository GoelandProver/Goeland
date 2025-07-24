fof(s__Nation_not_s__City,axiom,
    ! [A] :
      ( ~ s__City(A)
     <= s__Nation(A) ) ).

fof(s__Belgium_OECD,axiom,
    is_instance(s__Belgium,s__OECDMemberEconomiesClass) ).

fof(kb_SUMO_MILO_7458,axiom,
    ! [A] :
      ( s__PositionalAttribute(A)
     <= s__SymmetricPositionalAttribute(A) ) ).

fof(int_not_s__Object,axiom,
    ! [A] :
      ( ~ s__Object(A)
     <= int(A) ) ).

fof(s__Norway_type,axiom,
    s__Nation(s__Norway) ).

fof(s__Budapest_s__Hungary,axiom,
    capital_city(s__Budapest,s__Hungary) ).

fof(s__located__m_type,axiom,
    s__CaseRole(s__located__m) ).

fof(latlong_s__Warsaw,axiom,
    latlong(s__Warsaw,'52.23537','21.009485',warsaw,pl) ).

fof(canberra_lat_type,axiom,
    real('-35.306541') ).

fof(s__Greece_type,axiom,
    s__Nation(s__Greece) ).

fof(s__UnitedKingdom_type,axiom,
    s__Nation(s__UnitedKingdom) ).

fof(s__Hungary_type,axiom,
    s__Nation(s__Hungary) ).

fof(paris_type,axiom,
    s__SymbolicString(paris) ).

fof('55.67631_55',axiom,
    '55' = to_int('55.67631') ).

fof(real_type,axiom,
    ? [A] : real(A) ).

fof(int_not_s__CaseRole,axiom,
    ! [A] :
      ( int(A)
     => ~ s__CaseRole(A) ) ).

fof(paris_lat_type,axiom,
    real('48.856925') ).

fof(coastal_cities_type,axiom,
    s__Object(s__CoastalCitiesClass) ).

fof('55.75695_55',axiom,
    to_int('55.75695') = '55' ).

fof(paris_long_type,axiom,
    real('2.34121') ).

fof(s__CzechRepublic_type,axiom,
    s__Nation(s__CzechRepublic) ).

fof(s__Austria_OECD,axiom,
    is_instance(s__Austria,s__OECDMemberEconomiesClass) ).

fof(s__Spain_OECD,axiom,
    is_instance(s__Spain,s__OECDMemberEconomiesClass) ).

fof('48_type',axiom,
    int('48') ).

fof(brussels_lat_type,axiom,
    real('50.848385') ).

fof(s__UnitedStates_OECD,axiom,
    is_instance(s__UnitedStates,s__OECDMemberEconomiesClass) ).

fof(copenhagen_lat_type,axiom,
    real('55.67631') ).

fof(kb_SUMO_MILO_Domains_9582,axiom,
    ! [A] :
      ( s__BodyOfWater(A)
     => s__WaterArea(A) ) ).

fof('48.149245_48',axiom,
    to_int('48.149245') = '48' ).

fof(s__Germany_OECD,axiom,
    is_instance(s__Germany,s__OECDMemberEconomiesClass) ).

fof(dk_type,axiom,
    s__SymbolicString(dk) ).

fof(be_type,axiom,
    s__SymbolicString(be) ).

fof(s__Object_not_s__Entity,axiom,
    ! [A] :
      ( ~ s__Entity(A)
     <= s__Object(A) ) ).

fof(coastal_cities_near_water,axiom,
    ! [City] :
      ( s__City(City)
     => ( ? [Sea] :
            ( s__Sea(Sea)
            & s__orientation(City,Sea,s__Near) )
       <= is_instance(City,s__CoastalCitiesClass) ) ) ).

fof(s__Brussels_type,axiom,
    s__City(s__Brussels) ).

fof(s__Athens_not_s__Moscow,axiom,
    look_different(s__Athens,s__Moscow) ).

fof(fi_type,axiom,
    s__SymbolicString(fi) ).

fof(s__SymbolicString_not_s__PositionalAttribute,axiom,
    ! [A] :
      ( ~ s__PositionalAttribute(A)
     <= s__SymbolicString(A) ) ).

fof(s__Iceland_OECD,axiom,
    is_instance(s__Iceland,s__OECDMemberEconomiesClass) ).

fof(s__Vienna_not_s__Moscow,axiom,
    look_different(s__Vienna,s__Moscow) ).

fof(s__PositionalAttribute_not_s__Entity,axiom,
    ! [A] :
      ( ~ s__Entity(A)
     <= s__PositionalAttribute(A) ) ).

fof(latlong_s__Berlin,axiom,
    latlong(s__Berlin,'52.516074','13.376987',berlin,de) ).

fof(s__Bratislava_type,axiom,
    s__City(s__Bratislava) ).

fof(s__Australia_OECD,axiom,
    is_instance(s__Australia,s__OECDMemberEconomiesClass) ).

fof(kb_SUMO_MILO_6365,axiom,
    ! [A] :
      ( s__GeographicArea(A)
     => s__Region(A) ) ).

fof(kr_type,axiom,
    s__SymbolicString(kr) ).

fof(prague_long_type,axiom,
    real('14.43323') ).

fof(s__City_type,axiom,
    ? [A] : s__City(A) ).

fof(s__Mexico_type,axiom,
    s__Nation(s__Mexico) ).

fof(s__SymbolicString_type,axiom,
    ? [A] : s__SymbolicString(A) ).

fof(s__Poland_type,axiom,
    s__Nation(s__Poland) ).

fof(s__NewZealand_OECD,axiom,
    is_instance(s__NewZealand,s__OECDMemberEconomiesClass) ).

fof(berlin_lat_type,axiom,
    real('52.516074') ).

fof(s__Budapest_not_s__Moscow,axiom,
    look_different(s__Budapest,s__Moscow) ).

fof(s__Sweden_OECD,axiom,
    is_instance(s__Sweden,s__OECDMemberEconomiesClass) ).

fof('38_type',axiom,
    int('38') ).

fof(brussels_type,axiom,
    s__SymbolicString(brussels) ).

fof(s__Italy_OECD,axiom,
    is_instance(s__Italy,s__OECDMemberEconomiesClass) ).

fof('37_type',axiom,
    int('37') ).

fof(s__Australia_type,axiom,
    s__Nation(s__Australia) ).

fof(latlong_s__Lisbon,axiom,
    latlong(s__Lisbon,'38.725679','-9.150371',lisbon,pt) ).

fof(s__Berlin_s__Germany,axiom,
    capital_city(s__Berlin,s__Germany) ).

fof(latlong_s__Athens,axiom,
    latlong(s__Athens,'37.97615','23.736415',athens,gr) ).

fof(warsaw_type,axiom,
    s__SymbolicString(warsaw) ).

fof(s__Slovakia_type,axiom,
    s__Nation(s__Slovakia) ).

fof(latlong_s__Vienna,axiom,
    latlong(s__Vienna,'48.202548','16.368805',vienna,at) ).

fof(s__Finland_OECD,axiom,
    is_instance(s__Finland,s__OECDMemberEconomiesClass) ).

fof(int_not_s__SymbolicString,axiom,
    ! [A] :
      ( ~ s__SymbolicString(A)
     <= int(A) ) ).

fof('47_type',axiom,
    int('47') ).

fof(s__Seoul_type,axiom,
    s__City(s__Seoul) ).

fof(latlong_s__Copenhagen,axiom,
    latlong(s__Copenhagen,'55.67631','12.569355',copenhagen,dk) ).

fof('37.97615_37',axiom,
    to_int('37.97615') = '37' ).

fof('47.506225_47',axiom,
    '47' = to_int('47.506225') ).

fof('38.725679_38',axiom,
    '38' = to_int('38.725679') ).

fof(s__Luxembourg_type,axiom,
    s__Nation(s__Luxembourg) ).

fof(s__Germany_type,axiom,
    s__Nation(s__Germany) ).

fof(s__Prague_type,axiom,
    s__City(s__Prague) ).

fof(vienna_long_type,axiom,
    real('16.368805') ).

fof(s__Spain_type,axiom,
    s__Nation(s__Spain) ).

fof(s__Lisbon_type,axiom,
    s__City(s__Lisbon) ).

fof(ru_type,axiom,
    s__SymbolicString(ru) ).

fof(s__Luxembourg_City_s__Luxembourg,axiom,
    capital_city(s__Luxembourg_City,s__Luxembourg) ).

fof(s__GeographicArea_type,axiom,
    ? [A] : s__GeopoliticalArea(A) ).

fof(kb_SUMO_MILO_6391,axiom,
    ! [A] :
      ( s__GeographicArea(A)
     <= s__WaterArea(A) ) ).

fof(s__Denmark_OECD,axiom,
    is_instance(s__Denmark,s__OECDMemberEconomiesClass) ).

fof(berlin_long_type,axiom,
    real('13.376987') ).

fof('50_type',axiom,
    int('50') ).

fof(warsaw_lat_type,axiom,
    real('52.23537') ).

fof(s__Belgium_type,axiom,
    s__Nation(s__Belgium) ).

fof(s__Vienna_type,axiom,
    s__City(s__Vienna) ).

fof(lisbon_long_type,axiom,
    real('-9.150371') ).

fof(s__Seoul_s__SouthKorea,axiom,
    capital_city(s__Seoul,s__SouthKorea) ).

fof('50.848385_50',axiom,
    to_int('50.848385') = '50' ).

fof(s__SymbolicString_not_s__CaseRole,axiom,
    ! [A] :
      ( ~ s__CaseRole(A)
     <= s__SymbolicString(A) ) ).

fof(seoul_type,axiom,
    s__SymbolicString(seoul) ).

fof(s__Canberra_type,axiom,
    s__City(s__Canberra) ).

fof(s__Berlin_not_s__Moscow,axiom,
    look_different(s__Berlin,s__Moscow) ).

fof(s__NewZealand_type,axiom,
    s__Nation(s__NewZealand) ).

fof(s__Seoul_not_s__Moscow,axiom,
    look_different(s__Seoul,s__Moscow) ).

fof(s__Copenhagen_type,axiom,
    s__City(s__Copenhagen) ).

fof(moscow_long_type,axiom,
    real('37.614975') ).

fof(s__Bratislava_not_s__Moscow,axiom,
    look_different(s__Bratislava,s__Moscow) ).

fof(real_not_s__Entity,axiom,
    ! [A] :
      ( real(A)
     => ~ s__Entity(A) ) ).

fof(budapest_lat_type,axiom,
    real('47.506225') ).

fof(s__Warsaw_s__Poland,axiom,
    capital_city(s__Warsaw,s__Poland) ).

fof(s__SymbolicString_not_s__Object,axiom,
    ! [A] :
      ( s__SymbolicString(A)
     => ~ s__Object(A) ) ).

fof(s__Denmark_type,axiom,
    s__Nation(s__Denmark) ).

fof(s__Moscow_type,axiom,
    s__City(s__Moscow) ).

fof(s__Paris_s__France,axiom,
    capital_city(s__Paris,s__France) ).

fof(s__Copenhagen_not_s__Moscow,axiom,
    look_different(s__Copenhagen,s__Moscow) ).

fof(canberra_type,axiom,
    s__SymbolicString(canberra) ).

fof(s__Canberra_s__Australia,axiom,
    capital_city(s__Canberra,s__Australia) ).

fof(luxembourg_city_long_type,axiom,
    real('6.12997') ).

fof(s__Portugal_type,axiom,
    s__Nation(s__Portugal) ).

fof(s__SetOrClass_type,axiom,
    ? [A] : s__SetOrClass(A) ).

fof(luxembourg_city_type,axiom,
    s__SymbolicString(luxembourg_city) ).

fof(s__CzechRepublic_OECD,axiom,
    is_instance(s__CzechRepublic,s__OECDMemberEconomiesClass) ).

fof('49.609531_49',axiom,
    '49' = to_int('49.609531') ).

fof(helsinki_lat_type,axiom,
    real('60.17116') ).

fof(s__Luxembourg_City_type,axiom,
    s__City(s__Luxembourg_City) ).

fof(latlong_s__Helsinki,axiom,
    latlong(s__Helsinki,'60.17116','24.93258',helsinki,fi) ).

fof(lisbon_type,axiom,
    s__SymbolicString(lisbon) ).

fof(s__SymbolicString_not_s__SetOrClass,axiom,
    ! [A] :
      ( s__SymbolicString(A)
     => ~ s__SetOrClass(A) ) ).

fof(sk_type,axiom,
    s__SymbolicString(sk) ).

fof(s__Entity_type,axiom,
    ? [A] : s__Entity(A) ).

fof(pl_type,axiom,
    s__SymbolicString(pl) ).

fof(s__Budapest_type,axiom,
    s__City(s__Budapest) ).

fof(real_not_s__SymbolicString,axiom,
    ! [A] :
      ( ~ s__SymbolicString(A)
     <= real(A) ) ).

fof(s__UnitedKingdom_OECD,axiom,
    is_instance(s__UnitedKingdom,s__OECDMemberEconomiesClass) ).

fof(latlong_s__Brussels,axiom,
    latlong(s__Brussels,'50.848385','4.349685',brussels,be) ).

fof(s__Lisbon_not_s__Moscow,axiom,
    look_different(s__Lisbon,s__Moscow) ).

fof(s__Warsaw_type,axiom,
    s__City(s__Warsaw) ).

fof(s__Hungary_OECD,axiom,
    is_instance(s__Hungary,s__OECDMemberEconomiesClass) ).

fof(s__Greece_OECD,axiom,
    is_instance(s__Greece,s__OECDMemberEconomiesClass) ).

fof(s__France_OECD,axiom,
    is_instance(s__France,s__OECDMemberEconomiesClass) ).

fof(s__SymbolicString_not_s__Entity,axiom,
    ! [A] :
      ( s__SymbolicString(A)
     => ~ s__Entity(A) ) ).

fof(kb_SUMO_MILO_701,axiom,
    ! [A] :
      ( s__Region(A)
     => s__Object(A) ) ).

fof(copenhagen_coastal,axiom,
    is_instance(s__Copenhagen,s__CoastalCitiesClass) ).

fof(copenhagen_long_type,axiom,
    real('12.569355') ).

fof(latlong_s__Luxembourg_City,axiom,
    latlong(s__Luxembourg_City,'49.609531','6.12997',luxembourg_city,lu) ).

fof(s__PositionalAttribute_not_s__Object,axiom,
    ! [A] :
      ( s__PositionalAttribute(A)
     => ~ s__Object(A) ) ).

fof(latlong_s__Seoul,axiom,
    latlong(s__Seoul,'37.557121','126.977379',seoul,kr) ).

fof(pt_type,axiom,
    s__SymbolicString(pt) ).

fof(int_not_s__SetOrClass,axiom,
    ! [A] :
      ( int(A)
     => ~ s__SetOrClass(A) ) ).

fof(s__UnitedStates_type,axiom,
    s__Nation(s__UnitedStates) ).

fof(s__France_type,axiom,
    s__Nation(s__France) ).

fof(bratislava_type,axiom,
    s__SymbolicString(bratislava) ).

fof(s__PositionalAttribute_type,axiom,
    ? [A] : s__PositionalAttribute(A) ).

fof(athens_type,axiom,
    s__SymbolicString(athens) ).

fof(s__WaterArea_type,axiom,
    ? [A] : s__WaterArea(A) ).

fof(s__Warsaw_not_s__Moscow,axiom,
    look_different(s__Warsaw,s__Moscow) ).

fof(athens_lat_type,axiom,
    real('37.97615') ).

fof(seoul_long_type,axiom,
    real('126.977379') ).

fof(berlin_type,axiom,
    s__SymbolicString(berlin) ).

fof(brussels_long_type,axiom,
    real('4.349685') ).

fof(kb_SUMO_MILO_7487,axiom,
    s__SymmetricPositionalAttribute(s__Near) ).

fof('37.557121_37',axiom,
    '37' = to_int('37.557121') ).

fof('-35_type',axiom,
    int('-35') ).

fof(latlong_s__Prague,axiom,
    latlong(s__Prague,'50.079083','14.43323',prague,cz) ).

fof(s__SymmetricPositionalAttribute_type,axiom,
    ? [A] : s__SymmetricPositionalAttribute(A) ).

fof('50.079083_50',axiom,
    '50' = to_int('50.079083') ).

fof(kb_SUMO_MILO_6437,axiom,
    ! [A] :
      ( s__City(A)
     => s__GeopoliticalArea(A) ) ).

fof(bratislava_long_type,axiom,
    real('17.107005') ).

fof(s__CaseRole_not_s__PositionalAttribute,axiom,
    ! [A] :
      ( ~ s__PositionalAttribute(A)
     <= s__CaseRole(A) ) ).

fof(s__Berlin_type,axiom,
    s__City(s__Berlin) ).

fof(s__CaseRole_type,axiom,
    ? [A] : s__CaseRole(A) ).

fof(prague_lat_type,axiom,
    real('50.079083') ).

fof(s__Bratislava_s__Slovakia,axiom,
    capital_city(s__Bratislava,s__Slovakia) ).

fof(s__Italy_type,axiom,
    s__Nation(s__Italy) ).

fof(s__Athens_s__Greece,axiom,
    capital_city(s__Athens,s__Greece) ).

fof(int_type,axiom,
    ? [A] : int(A) ).

fof('60.17116_60',axiom,
    '60' = to_int('60.17116') ).

fof('60_type',axiom,
    int('60') ).

fof(kb_SUMO_MILO_6428,axiom,
    ! [A] :
      ( s__Nation(A)
     => s__GeopoliticalArea(A) ) ).

fof('-35.306541_-35',axiom,
    '-35' = to_int('-35.306541') ).

fof(hu_type,axiom,
    s__SymbolicString(hu) ).

fof(s__BodyOfWater_type,axiom,
    ? [A] : s__BodyOfWater(A) ).

fof(s__Brussels_not_s__Moscow,axiom,
    look_different(s__Brussels,s__Moscow) ).

fof(s__Poland_OECD,axiom,
    is_instance(s__Poland,s__OECDMemberEconomiesClass) ).

fof(s__Switzerland_OECD,axiom,
    is_instance(s__Switzerland,s__OECDMemberEconomiesClass) ).

fof(s__Copenhagen_s__Denmark,axiom,
    capital_city(s__Copenhagen,s__Denmark) ).

fof(int_not_s__Entity,axiom,
    ! [A] :
      ( ~ s__Entity(A)
     <= int(A) ) ).

fof(int_not_s__PositionalAttribute,axiom,
    ! [A] :
      ( ~ s__PositionalAttribute(A)
     <= int(A) ) ).

fof(cz_type,axiom,
    s__SymbolicString(cz) ).

fof(s__Entity_not_s__SetOrClass,axiom,
    ! [A] :
      ( ~ s__SetOrClass(A)
     <= s__Entity(A) ) ).

fof(kb_SUMO_MILO_Domains_9679,axiom,
    ! [A] :
      ( s__Sea(A)
     => s__BodyOfWater(A) ) ).

fof(real_not_s__Object,axiom,
    ! [A] :
      ( ~ s__Object(A)
     <= real(A) ) ).

fof(canberra_long_type,axiom,
    real('149.126556') ).

fof(helsinki_type,axiom,
    s__SymbolicString(helsinki) ).

fof(oecd_type,axiom,
    s__Object(s__OECDMemberEconomiesClass) ).

fof(real_not_s__SetOrClass,axiom,
    ! [A] :
      ( ~ s__SetOrClass(A)
     <= real(A) ) ).

fof(helsinki_long_type,axiom,
    real('24.93258') ).

fof(kb_SUMO_MILO_6345,axiom,
    ! [A] :
      ( s__GeographicArea(A)
     <= s__GeopoliticalArea(A) ) ).

fof(s__Slovakia_OECD,axiom,
    is_instance(s__Slovakia,s__OECDMemberEconomiesClass) ).

fof(latlong_s__Bratislava,axiom,
    latlong(s__Bratislava,'48.149245','17.107005',bratislava,sk) ).

fof(s__Netherlands_type,axiom,
    s__Nation(s__Netherlands) ).

fof(real_not_s__CaseRole,axiom,
    ! [A] :
      ( real(A)
     => ~ s__CaseRole(A) ) ).

fof('52_type',axiom,
    int('52') ).

fof(au_type,axiom,
    s__SymbolicString(au) ).

fof(flood_near_water,axiom,
    ! [W,C] :
      ( ( s__capability(s__Flooding__t,s__located__m,C)
       <= s__orientation(C,W,s__Near) )
     <= ( s__WaterArea(W)
        & s__City(C) ) ) ).

fof(gr_type,axiom,
    s__SymbolicString(gr) ).

fof(s__Nation_type,axiom,
    ? [A] : s__Nation(A) ).

fof('52.23537_52',axiom,
    to_int('52.23537') = '52' ).

fof(warsaw_long_type,axiom,
    real('21.009485') ).

fof(prague_type,axiom,
    s__SymbolicString(prague) ).

fof(s__Paris_type,axiom,
    s__City(s__Paris) ).

fof('52.516074_52',axiom,
    to_int('52.516074') = '52' ).

fof(lisbon_lat_type,axiom,
    real('38.725679') ).

fof(vienna_lat_type,axiom,
    real('48.202548') ).

fof(s__GeopoliticalArea_not_s__WaterArea,axiom,
    ! [A] :
      ( ~ s__WaterArea(A)
     <= s__GeopoliticalArea(A) ) ).

fof(s__Mexico_OECD,axiom,
    is_instance(s__Mexico,s__OECDMemberEconomiesClass) ).

fof(s__Luxembourg_OECD,axiom,
    is_instance(s__Luxembourg,s__OECDMemberEconomiesClass) ).

fof(vienna_type,axiom,
    s__SymbolicString(vienna) ).

fof(int_not_real,axiom,
    ! [A] :
      ( ~ real(A)
     <= int(A) ) ).

fof(s__Sea_type,axiom,
    ? [A] : s__Sea(A) ).

fof(s__CaseRole_not_s__Object,axiom,
    ! [A] :
      ( ~ s__Object(A)
     <= s__CaseRole(A) ) ).

fof(s__SouthKorea_type,axiom,
    s__Nation(s__SouthKorea) ).

fof(latlong_s__Paris,axiom,
    latlong(s__Paris,'48.856925','2.34121',paris,fr) ).

fof(where,conjecture,
    ? [City,Nation,CityLat,CityLong,CityName,CityNation,Latitude,MoscowLat,MoscowLong,MoscowName,MoscowNation] :
      ( s__Object(Nation)
      & real(CityLat)
      & real(CityLong)
      & int(Latitude)
      & real(MoscowLong)
      & capital_city(City,Nation)
      & look_different(City,s__Moscow)
      & to_int(CityLat) = to_int(MoscowLat)
      & s__capability(s__Flooding__t,s__located__m,City)
      & latlong(s__Moscow,MoscowLat,MoscowLong,MoscowName,MoscowNation)
      & latlong(City,CityLat,CityLong,CityName,CityNation)
      & is_instance(Nation,s__OECDMemberEconomiesClass)
      & s__SymbolicString(MoscowNation)
      & s__SymbolicString(MoscowName)
      & real(MoscowLat)
      & s__SymbolicString(CityNation)
      & s__SymbolicString(CityName)
      & s__Object(City) ) ).

fof(s__Sweden_type,axiom,
    s__Nation(s__Sweden) ).

fof(to_int_type,axiom,
    ! [A] :
      ( real(A)
     => int(to_int(A)) ) ).

fof(budapest_type,axiom,
    s__SymbolicString(budapest) ).

fof(s__Paris_not_s__Moscow,axiom,
    look_different(s__Paris,s__Moscow) ).

fof(s__Prague_not_s__Moscow,axiom,
    look_different(s__Prague,s__Moscow) ).

fof(s__Object_not_s__SetOrClass,axiom,
    ! [A] :
      ( ~ s__SetOrClass(A)
     <= s__Object(A) ) ).

fof(s__Helsinki_s__Finland,axiom,
    capital_city(s__Helsinki,s__Finland) ).

fof(copenhagen_type,axiom,
    s__SymbolicString(copenhagen) ).

fof(de_type,axiom,
    s__SymbolicString(de) ).

fof(luxembourg_city_lat_type,axiom,
    real('49.609531') ).

fof(s__Netherlands_OECD,axiom,
    is_instance(s__Netherlands,s__OECDMemberEconomiesClass) ).

fof(s__Lisbon_s__Portugal,axiom,
    capital_city(s__Lisbon,s__Portugal) ).

fof(s__Helsinki_type,axiom,
    s__City(s__Helsinki) ).

fof(latlong_s__Budapest,axiom,
    latlong(s__Budapest,'47.506225','19.06482',budapest,hu) ).

fof(s__PositionalAttribute_not_s__SetOrClass,axiom,
    ! [A] :
      ( s__PositionalAttribute(A)
     => ~ s__SetOrClass(A) ) ).

fof(moscow_type,axiom,
    s__SymbolicString(moscow) ).

fof(s__Brussels_s__Belgium,axiom,
    capital_city(s__Brussels,s__Belgium) ).

fof(s__Finland_type,axiom,
    s__Nation(s__Finland) ).

fof(bratislava_lat_type,axiom,
    real('48.149245') ).

fof(latlong_s__Moscow,axiom,
    latlong(s__Moscow,'55.75695','37.614975',moscow,ru) ).

fof(s__Object_type,axiom,
    ? [A] : s__Object(A) ).

fof(lu_type,axiom,
    s__SymbolicString(lu) ).

fof(s__Austria_type,axiom,
    s__Nation(s__Austria) ).

fof(s__CaseRole_not_s__SetOrClass,axiom,
    ! [A] :
      ( ~ s__SetOrClass(A)
     <= s__CaseRole(A) ) ).

fof('49_type',axiom,
    int('49') ).

fof(budapest_long_type,axiom,
    real('19.06482') ).

fof(s__Prague_s__CzechRepublic,axiom,
    capital_city(s__Prague,s__CzechRepublic) ).

fof(s__SouthKorea_OECD,axiom,
    is_instance(s__SouthKorea,s__OECDMemberEconomiesClass) ).

fof(s__CaseRole_not_s__Entity,axiom,
    ! [A] :
      ( ~ s__Entity(A)
     <= s__CaseRole(A) ) ).

fof(s__Iceland_type,axiom,
    s__Nation(s__Iceland) ).

fof('55_type',axiom,
    int('55') ).

fof(fr_type,axiom,
    s__SymbolicString(fr) ).

fof(real_not_s__PositionalAttribute,axiom,
    ! [A] :
      ( ~ s__PositionalAttribute(A)
     <= real(A) ) ).

fof(s__Helsinki_not_s__Moscow,axiom,
    look_different(s__Helsinki,s__Moscow) ).

fof(latlong_s__Canberra,axiom,
    latlong(s__Canberra,'-35.306541','149.126556',canberra,au) ).

fof(s__Portugal_OECD,axiom,
    is_instance(s__Portugal,s__OECDMemberEconomiesClass) ).

fof(s__Norway_OECD,axiom,
    is_instance(s__Norway,s__OECDMemberEconomiesClass) ).

fof(athens_long_type,axiom,
    real('23.736415') ).

fof(s__Switzerland_type,axiom,
    s__Nation(s__Switzerland) ).

fof(s__Canberra_not_s__Moscow,axiom,
    look_different(s__Canberra,s__Moscow) ).

fof('48.856925_48',axiom,
    to_int('48.856925') = '48' ).

fof(s__Vienna_s__Austria,axiom,
    capital_city(s__Vienna,s__Austria) ).

fof(seoul_lat_type,axiom,
    real('37.557121') ).

fof('48.202548_48',axiom,
    '48' = to_int('48.202548') ).

fof(s__Luxembourg_City_not_s__Moscow,axiom,
    look_different(s__Luxembourg_City,s__Moscow) ).

fof(s__Athens_type,axiom,
    s__City(s__Athens) ).

fof(s__Region_type,axiom,
    ? [A] : s__Region(A) ).

fof(at_type,axiom,
    s__SymbolicString(at) ).

fof(kb_SUMO_MILO_12059,axiom,
    s__SetOrClass(s__Flooding__t) ).

fof(moscow_lat_type,axiom,
    real('55.75695') ).

