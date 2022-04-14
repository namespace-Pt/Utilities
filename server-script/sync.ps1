Param(
    [string]$s = "153",
    [string]$src = $PWD,
    [string]$dest,
    [switch]$r,
    [switch]$a,
    [switch]$res
)

if ($r){
    $dest = -join("peitian_zhang@183.174.228.", $s , ":~/", $dest);
    wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=tb --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $dest;
}
elseif ($a){
    $std = -join("peitian_zhang@183.174.228.", $s , ":~/", $dest);
    wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=tb --exclude=.ipynb_checkpoints --exclude=docs --exclude=discussions --exclude=results $std "`$(wslpath -a '$src')";

    $s1 = -join("peitian_zhang@183.174.228.153:~/", $dest);
    $s2 = -join("peitian_zhang@183.174.228.154:~/", $dest);
    $s3 = -join("peitian_zhang@183.174.228.156:~/", $dest);
    if ($s -eq "153"){
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=tb --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $s2;
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=tb --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $s3;
    }
    elseif($s -eq "154"){
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=tb --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $s1;
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=tb --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $s3;
    }
    elseif($s -eq "156"){
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=tb --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $s1;
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=*.log --exclude=tb --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=.ipynb_checkpoints --exclude=docs --exclude=data/results "`$(wslpath -a '$src')" $s2;
    }
}
else{
    $dest = -join("peitian_zhang@183.174.228.", $s , ":~/", $dest);
    if ($res){
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=tb --exclude=.ipynb_checkpoints --exclude=docs --exclude=discussions $dest "`$(wslpath -a '$src')";
    }
    else{
        wsl rsync -rlptzv -e 'ssh -p 5102' --progress --delete --exclude=.vscode --exclude=.vector_cache --exclude=wandb --exclude=*.toc --exclude=*.gz --exclude=*.aux --exclude=backup --exclude=*.tex --exclude=.git --exclude=tensors --exclude=__pycache__ --exclude=*.1 --exclude=model_params --exclude=tb --exclude=.ipynb_checkpoints --exclude=docs --exclude=discussions --exclude=results $dest "`$(wslpath -a '$src')";
    }
}