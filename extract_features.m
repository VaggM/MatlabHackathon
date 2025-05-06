function extracted_data = extract_features(raw_data)

    data_length = length(raw_data.Acceleration.X);
    extracted_data = zeros(6,data_length-20);
    
    for i=1:data_length-20
    
        acc = raw_data.Acceleration;
        
        accx_mean = mean(acc.X(i:i+19));
        accx_std = std(acc.X(i:i+19));
    
        accy_mean = mean(acc.Y(i:i+19));
        accy_std = std(acc.Y(i:i+19));
        
        accz_mean = mean(acc.Z(i:i+19));
        accz_std = std(acc.Z(i:i+19));
    
        extracted_data(1:6,i) = [accx_mean; accx_std; accy_mean; accy_std; accz_mean; accz_std];
    
    end

end
