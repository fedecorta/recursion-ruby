def fibs(n)
    return [] if n == 0  
    return [0] if n == 1

    seq = [0, 1]
    (2..n).each do |_|
        seq << seq[-1] + seq[-2]
    end
    seq
end


def fibs_rec(n,seq=[0,1])
    return [] if n == 0  
    return [0] if n == 1

    seq << seq[-1] + seq[-2] if seq.length < n

    return seq if seq.length == n

    fibs_rec(n,seq)
end