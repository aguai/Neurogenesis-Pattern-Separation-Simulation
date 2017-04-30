%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           PLOTTING NON-NEUROGEN AND NEUROGEN ON SAME FIGURE
% -------------------------------------------------------------------------
% Execute this code after FINALCODE_nonneurogen, and FINALCODE_neurogen.
%
% This code simply plots non neurogenesis and neurogenesis models on one
% graph. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(3)
subplot(2,1,1)
plot(1:10, vDiff_DT_nonneuro, '.-k')
hold on
plot(1:10, vDiff_DT_neurogen, '.-r')
axis([0 15 0.5 1.1])
title('Post Training Accuracy VS Pattern Number')
xlabel('Pattern Number')
ylabel('Accuracy')
legend('Non-Neurogenesis RBM', 'Neurogenesis RBM', 'Location', 'southeast')
hold off

subplot(2,1,2)
scatter(hiddenOverlapsum_nonneuro, vDiff_PT_nonneuro, 'filled', 'k')
hold on
scatter(hiddenOverlapsum_neurogen, vDiff_PT_neurogen, 'filled', 'r')
axis([0 0.1 0 1]);
title('Post Training Accuracy VS Overlap')
xlabel('Hidden Unit Overlap')
ylabel('Visible Data - Recon Accuracy')
legend('Non-Neurogenesis RBM', 'Neurogenesis RBM', 'Location', 'southeast')