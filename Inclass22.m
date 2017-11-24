%Inclass 22

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 
clear all
ku = 0;
figure(1)
hold on
xlabel('kb')
ylabel('fixed points')
set(gca,'FontSize',20)
for kb = 0:0.05:10
    polycoeff = [1 (1-kb) -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r-');
end

figure(2)
hold on
xlabel('kb')
ylabel('fixed points')
set(gca,'FontSize',20)
for kb = 0:0.05:10
    polycoeff = [1 -kb 0 0 0 ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r-');
end

figure(3)
hold on
xlabel('kb')
ylabel('fixed points')
set(gca,'FontSize',20)
for kb = 0:0.05:10
    polycoeff = [1 (1-kb) 0 0 0 0 1 0 0 ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r-');
end

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 
figure(4)
hold on
xlabel('kb')
ylabel('fixed points')
set(gca,'FontSize',20)
for kb = 0:0.05:10
    polycoeff = [1 kb 0 ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot(kb*ones(length(rts),1),rts,'r-');
end

