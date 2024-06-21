%% Calc phases
% This script splits up all data into the 5 phases.
% Hierarchy: calcPhases -> getPhases 

% 1)start sound till start trigger range
% 2)start trigger range till end trigger range
% 3)end trigger range till standstill location AV
% 4)standstill location AV till past the zebra crossing

% Author: Johnson Mok
% Last Updated: 05-02-2021

function T = calcPhases(AllData)
fields_ED = fieldnames(AllData);
for j = 1:length(fields_ED)
    fields_time = fieldnames(AllData.(fields_ED{j}));
    for k = 1:length(fields_time)
        fields_participants = fieldnames(AllData.(fields_ED{j}).(fields_time{k}));
        for idx = 1:length(fields_participants)
            fields_trials = fieldnames(AllData.(fields_ED{j}).(fields_time{k}).(fields_participants{idx}));
            for i = 1:length(fields_trials)
                % Perform task here
                T.(fields_ED{j}).(fields_time{k}).(fields_participants{idx}).(fields_trials{i}) = getPhase(...
                    AllData.(fields_ED{j}).(fields_time{k}).(fields_participants{idx}).(fields_trials{i}),...
                    fields_ED{j});
            end
        end
    end
end
end