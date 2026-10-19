package com.gameloft.GLSocialLib.GameAPI;

import android.app.Activity;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.leaderboard.Leaderboards;

/* JADX INFO: loaded from: classes2.dex */
public class LeadearboardManager {
    private static LeadearboardManager instance;

    private LeadearboardManager() {
    }

    public static LeadearboardManager getInstance() {
        if (instance != null) {
            return null;
        }
        LeadearboardManager leadearboardManager = new LeadearboardManager();
        instance = leadearboardManager;
        return leadearboardManager;
    }

    public void ShowLeadearboard(String str) {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("No Game Client connected");
            return;
        }
        Activity gameActivity = GameAPIAndroidGLSocialLib.s_instance.getGameActivity();
        if (gameActivity != null) {
            gameActivity.startActivityForResult(Games.Leaderboards.getLeaderboardIntent(gameHelperGetGameHelper.getApiClient(), str), 1002);
        } else {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Leaderboards cannot be shown because there is no initialized activity!");
            ConsoleAndroidGLSocialLib.Log_Major_Error("Leaderboards cannot be shown because there is no initialized activity!");
        }
    }

    public void showAllLeadearboards() {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("No Game Client connected");
            return;
        }
        Activity gameActivity = GameAPIAndroidGLSocialLib.s_instance.getGameActivity();
        if (gameActivity != null) {
            gameActivity.startActivityForResult(Games.Leaderboards.getAllLeaderboardsIntent(gameHelperGetGameHelper.getApiClient()), 1002);
        } else {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Leaderboards cannot be shown because there is no initialized activity!");
            ConsoleAndroidGLSocialLib.Log_Major_Error("Leaderboards cannot be shown because there is no initialized activity!");
        }
    }

    public void submitScore(int i, String str) {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Client not connected");
        } else {
            Games.Leaderboards.submitScoreImmediate(gameHelperGetGameHelper.getApiClient(), str, i).setResultCallback(new ResultCallback<Leaderboards.SubmitScoreResult>() { // from class: com.gameloft.GLSocialLib.GameAPI.LeadearboardManager.1
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(Leaderboards.SubmitScoreResult submitScoreResult) {
                    int statusCode = submitScoreResult.getStatus().getStatusCode();
                    if (statusCode == 0) {
                        ConsoleAndroidGLSocialLib.Log_Debug("submitScore - onResult - STATUS_OK");
                        GameAPIAndroidGLSocialLib.nativeGameAPIComplete();
                        return;
                    }
                    if (statusCode == 1) {
                        ConsoleAndroidGLSocialLib.Log_Minor_Error("submitScore - onResult - STATUS_INTERNAL_ERROR");
                        GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("submitScore - onResult - STATUS_INTERNAL_ERROR");
                        return;
                    }
                    if (statusCode == 2) {
                        ConsoleAndroidGLSocialLib.Log_Minor_Error("submitScore - onResult - STATUS_CLIENT_RECONNECT_REQUIRED");
                        GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("submitScore - onResult - STATUS_CLIENT_RECONNECT_REQUIRED");
                    } else if (statusCode == 5) {
                        ConsoleAndroidGLSocialLib.Log_Minor_Error("submitScore - onResult - STATUS_NETWORK_ERROR_OPERATION_DEFERRED");
                        GameAPIAndroidGLSocialLib.nativeGameAPIComplete();
                    } else if (statusCode != 7) {
                        ConsoleAndroidGLSocialLib.Log_Minor_Error("submitScore - onResult - unknown status code!");
                        GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("submitScore - onResult - unknown status code!");
                    } else {
                        ConsoleAndroidGLSocialLib.Log_Minor_Error("submitScore - onResult - STATUS_LICENSE_CHECK_FAILED");
                        GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("submitScore - onResult - STATUS_LICENSE_CHECK_FAILED");
                    }
                }
            });
        }
    }
}
