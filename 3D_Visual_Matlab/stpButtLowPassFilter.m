function result = stpButtLowPassFilter(data, Wn)

    if Wn == 1
        result = data;
    else
        [b, a] = butter(10, Wn, 'low');
        result = filtfilt(b, a, data);
    end
    
end

