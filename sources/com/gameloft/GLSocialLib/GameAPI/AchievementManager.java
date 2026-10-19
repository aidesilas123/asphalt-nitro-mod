package com.gameloft.GLSocialLib.GameAPI;

import android.app.Activity;
import android.content.Context;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.achievement.Achievements;

/* JADX INFO: loaded from: classes2.dex */
public class AchievementManager {
    private static final String GAME_API_RESET_ACHIEVEMENTS = "https://www.googleapis.com/games/v1management/achievements/reset";
    private static AchievementManager s_instance;
    private RestManager mAsyncTask;

    private AchievementManager() {
    }

    public static AchievementManager getInstance() {
        if (s_instance == null) {
            s_instance = new AchievementManager();
        }
        return s_instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onAchievementUpdated(int r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L62
            r0 = 1
            if (r3 == r0) goto L5c
            r0 = 2
            if (r3 == r0) goto L56
            r0 = 3
            if (r3 == r0) goto L50
            r0 = 4
            if (r3 == r0) goto L4a
            r0 = 5
            if (r3 == r0) goto L62
            r0 = 7
            if (r3 == r0) goto L44
            switch(r3) {
                case 3000: goto L3e;
                case 3001: goto L38;
                case 3002: goto L32;
                case 3003: goto L2c;
                default: goto L17;
            }
        L17:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "onAchievementsUpdated: other error."
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L2c:
            java.lang.String r3 = "onAchievementUpdated: Achievement was already unlocked."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L32:
            java.lang.String r3 = "onAchievementUpdated: Achievement failed to increment since it is not an incremental achievement."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L38:
            java.lang.String r3 = "onAchievementUpdated: Achievement failed to update because could not find the achievement to update."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L3e:
            java.lang.String r3 = "onAchievementUpdated: Call to unlock achievement failed."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L44:
            java.lang.String r3 = "onAchievementUpdated: The game is not licensed to the user"
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L4a:
            java.lang.String r3 = "onAchievementUpdated: The device was unable to retrieve any data from the network and has no data cached locally."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L50:
            java.lang.String r3 = "onAchievementUpdated: The device was unable to retrieve the latest data from the network, but has some data cached locally."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L56:
            java.lang.String r3 = "onAchievementUpdated: GamesClient needs to reconnect to the service to access this data."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L5c:
            java.lang.String r3 = "onAchievementUpdated: Unexpected error occurred in the service."
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Minor_Error(r3)
            goto L6c
        L62:
            java.lang.String r3 = "onAchievementUpdated: Success"
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Debug(r3)
            com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.nativeGameAPIComplete()
            java.lang.String r3 = ""
        L6c:
            boolean r0 = r3.isEmpty()
            if (r0 != 0) goto L7a
            com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete(r3)
            java.lang.String r3 = "onAchievementUpdated: Failed"
            com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib.Log_Verbose(r3)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.GLSocialLib.GameAPI.AchievementManager.onAchievementUpdated(int):void");
    }

    public void incrementAchievement(String str, int i) {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Client not connected");
        } else {
            Games.Achievements.incrementImmediate(gameHelperGetGameHelper.getApiClient(), str, i).setResultCallback(new ResultCallback<Achievements.UpdateAchievementResult>() { // from class: com.gameloft.GLSocialLib.GameAPI.AchievementManager.1
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(Achievements.UpdateAchievementResult updateAchievementResult) {
                    AchievementManager.this.onAchievementUpdated(updateAchievementResult.getStatus().getStatusCode());
                }
            });
        }
    }

    public void resetAchievement(String str, Context context) {
        if (this.mAsyncTask == null) {
            this.mAsyncTask = new RestManager((Activity) context);
        }
        ConsoleAndroidGLSocialLib.Log_Debug("AchievementManager: resetAchievement");
        this.mAsyncTask.getRest(GAME_API_RESET_ACHIEVEMENTS, GameAPIAndroidGLSocialLib.GetAccessToken());
    }

    public void revealAchievement(String str) {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Client not connected");
        } else {
            Games.Achievements.revealImmediate(gameHelperGetGameHelper.getApiClient(), str).setResultCallback(new ResultCallback<Achievements.UpdateAchievementResult>() { // from class: com.gameloft.GLSocialLib.GameAPI.AchievementManager.3
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(Achievements.UpdateAchievementResult updateAchievementResult) {
                    AchievementManager.this.onAchievementUpdated(updateAchievementResult.getStatus().getStatusCode());
                }
            });
        }
    }

    public void showAchievements() {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("No Game Client connected");
            return;
        }
        Activity gameActivity = GameAPIAndroidGLSocialLib.s_instance.getGameActivity();
        if (gameActivity != null) {
            gameActivity.startActivityForResult(Games.Achievements.getAchievementsIntent(gameHelperGetGameHelper.getApiClient()), 1001);
        } else {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Achievements cannot be shown because there is no initialized activity!");
            ConsoleAndroidGLSocialLib.Log_Major_Error("Achievements cannot be shown because there is no initialized activity!");
        }
    }

    public void unlockAchievement(String str) {
        GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
        if (gameHelperGetGameHelper == null || !gameHelperGetGameHelper.isSignedIn()) {
            GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Client not connected");
        } else {
            Games.Achievements.unlockImmediate(gameHelperGetGameHelper.getApiClient(), str).setResultCallback(new ResultCallback<Achievements.UpdateAchievementResult>() { // from class: com.gameloft.GLSocialLib.GameAPI.AchievementManager.2
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(Achievements.UpdateAchievementResult updateAchievementResult) {
                    AchievementManager.this.onAchievementUpdated(updateAchievementResult.getStatus().getStatusCode());
                }
            });
        }
    }
}
