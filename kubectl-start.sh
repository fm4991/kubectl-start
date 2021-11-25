curl https://raw.githubusercontent.com/fm4991/kubectl-start/main/.kubectl-aliases -o ~/.kubectl-aliases
grep -qxF "source ~/.kubectl-aliases" ~/.bashrc || echo "source ~/.kubectl-aliases" >> ~/.bashrc
