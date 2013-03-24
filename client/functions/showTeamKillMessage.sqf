#define tkWarningText 3500

20 CutRsc ["TeamKillWarningMessage", "PLAIN", 1];

disableSerialization;

_localWarningText = uiNamespace getVariable "TeamKillWarningMessage";
_control = _localWarningText displayCtrl tkWarningText;

sleep 20;

_control ctrlSetFade 1;
_control ctrlCommit 2;

waitUntil {ctrlCommitted _control};

_control ctrlShow false;
_control ctrlCommit 0;

20 cutrsc["Default", "PLAIN"];
