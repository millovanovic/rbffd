ConvergenceTest_phs

for ii = 1:hN
    Nin = N(ii);
    Min = M(ii);
    for jj = 1:numel(p)
        for kk = 1:numel(d)
            for ll = 1:numel(nm)
                [u,err,tim,x,dx,Ntot,W] = feval('BSeuCall2Dbasket_RBFFDreg_phs', N(ii), p(jj), d(kk), nm(ll), M(ii), Kmul);
                [u,err,tim,x,dx,Ntot,W] = feval('BSeuCall2Dbasket_RBFFDreg_smoothed_phs_triangle', N(ii), p(jj), d(kk), nm(ll), M(ii), Kmul);
                
%                 cd ('./Data')
%                 save([basename,leg{2},'___N',num2str(Nin),'_p',num2str(p(jj)),'_d',num2str(d(kk)),'_nm',num2str(nm(ll)),'.mat'], 'u', 'err', 'tim', 'x', 'dx', 'Ntot','W', 'Nin', 'Min', 'Kmul')
%                 cd('..')
            end
        end
    end
end