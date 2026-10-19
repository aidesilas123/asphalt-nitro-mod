package com.gameloft.GLSocialLib.GameAPI;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;
import com.gameloft.GLSocialLib.GameAPI.GameHelper;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class GameAPIAndroidGLSocialLib implements GameHelper.GameHelperListener {
    public static final int CLIENT_GAMES = 1;
    public static final int FAILED_SIGN_IN = 9001;
    public static final int OPEN_BROWSER = 1006;
    public static final int POST_ON_PAGE = 1004;
    public static final int RC_UNUSED = 9002;
    public static final int REQUEST_ACHIEVEMENTS = 1001;
    public static final int REQUEST_LEADEARBOARD = 1002;
    private static boolean isAvatarRequest;
    public static boolean isLogged;
    private static AchievementManager mAchievementManager;
    private static Activity mGameActivity;
    protected static GameHelper mHelper;
    private static LeadearboardManager mLeadearboardManager;
    private static byte[] mRawData;
    protected static int mRequestedClients;
    private static boolean sAuthRequestIsCalling;
    private static boolean sInitRequestIsCalling;
    private static boolean sIsConnectingOnResume;
    private static boolean sLoginRequestIsCalling;
    public static GameAPIAndroidGLSocialLib s_instance;
    private static JSONArray s_userData;

    public GameAPIAndroidGLSocialLib(Activity activity, ViewGroup viewGroup) {
        ConsoleAndroidGLSocialLib.Log_Debug("Google: GameAPIAndroidGLSocialLib constructor");
        mGameActivity = activity;
        s_instance = this;
    }

    public static void ConnectToService() {
        mGameActivity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    boolean unused = GameAPIAndroidGLSocialLib.sAuthRequestIsCalling = true;
                    boolean unused2 = GameAPIAndroidGLSocialLib.sLoginRequestIsCalling = true;
                    GameAPIAndroidGLSocialLib.GetGameHelper().beginUserInitiatedSignIn();
                } catch (Exception e2) {
                    boolean unused3 = GameAPIAndroidGLSocialLib.sAuthRequestIsCalling = false;
                    boolean unused4 = GameAPIAndroidGLSocialLib.sLoginRequestIsCalling = false;
                    GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
                }
            }
        });
    }

    public static void DisconnectFromService() {
        ConsoleAndroidGLSocialLib.Log_Debug("Signing out!!");
        mGameActivity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    boolean unused = GameAPIAndroidGLSocialLib.sAuthRequestIsCalling = true;
                    GameAPIAndroidGLSocialLib.GetGameHelper().signOut();
                    GameAPIAndroidGLSocialLib.nativeGameAPIComplete();
                } catch (Exception e2) {
                    boolean unused2 = GameAPIAndroidGLSocialLib.sAuthRequestIsCalling = false;
                    ConsoleAndroidGLSocialLib.Log_Debug("Sign out Exception: " + e2.toString());
                    GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Sign out Exception: " + e2.toString());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void DisconnectGamesClient() {
        GetGameHelper().removeClient(1);
        DisconnectFromService();
        GetGameHelper().addClient(1);
        nativeGameAPINotifyAuthChanges(false, "");
    }

    public static String GetAccessToken() {
        ConsoleAndroidGLSocialLib.Log_Debug("GetAccessToken is no loger available for Game API, please use GetAuthorizationCode");
        return "";
    }

    public static void GetAuthorizationToken() {
        ConsoleAndroidGLSocialLib.Log_Debug("GetAuthorizationToken");
        if (!IsLoggedIn() || !GetGameHelper().HasClient(1)) {
            nativeGameAPIDidNotComplete("Authorization Code cannot be retrieved!");
            return;
        }
        try {
            Games.getGamesServerAuthCode(GetGameHelper().getApiClient(), mGameActivity.getString(R.string.game_api_server_client_id)).setResultCallback(new ResultCallback<Games.GetServerAuthCodeResult>() { // from class: com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.6
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(Games.GetServerAuthCodeResult getServerAuthCodeResult) {
                    String code = getServerAuthCodeResult.getCode();
                    if (code == null || code.isEmpty()) {
                        GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Invalid response! authCode null or empty");
                    } else {
                        GameAPIAndroidGLSocialLib.nativeGameAPICompleteWithData(code, false, GameAPIAndroidGLSocialLib.mRawData);
                    }
                }
            });
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
            DisconnectGamesClient();
        }
    }

    public static void GetFirstName() {
        ConsoleAndroidGLSocialLib.Log_Debug("no first name on client_games");
    }

    public static void GetFriends(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("GetFriends not available for CLIENT_GAMES");
    }

    public static void GetFriendsData(boolean z, boolean z2, int i, int i2) {
        ConsoleAndroidGLSocialLib.Log_Debug("GetFriendsData not available for CLIENT_GAMES");
    }

    public static GameHelper GetGameHelper() {
        if (mHelper == null) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib create a new GameHelper");
            mHelper = new GameHelper(mGameActivity);
        }
        return mHelper;
    }

    public static void GetGamerId() {
        if (IsLoggedIn() && GetGameHelper().HasClient(1)) {
            nativeGameAPICompleteWithData(Games.Players.getCurrentPlayerId(GetGameHelper().getApiClient()), false, mRawData);
        } else {
            nativeGameAPIDidNotComplete("GamerId cannot be retrieved!");
        }
    }

    public static void GetPlayerAvatar() {
        try {
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib.java GetPlayerAvatar");
            if (!HasClient(1)) {
                nativeGameAPIDidNotComplete("No Game Client & No Plus Client connected");
                return;
            }
            ConsoleAndroidGLSocialLib.Log_Debug("GameAPIAndroidGLSocialLib.java GetCurrentPlayer");
            Player currentPlayer = Games.Players.getCurrentPlayer(GetGameHelper().getApiClient());
            if (currentPlayer == null) {
                nativeGameAPIDidNotComplete("No player was retrieved");
            } else if (currentPlayer.hasIconImage()) {
                nativeGameAPICompleteWithData(currentPlayer.getIconImageUrl(), false, mRawData);
            } else {
                nativeGameAPIDidNotComplete("The User's games profile has no image ");
            }
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void GetPlayerName() {
        if (!IsLoggedIn()) {
            nativeGameAPIDidNotComplete("Not logged in!");
            return;
        }
        try {
            if (HasClient(1)) {
                Player currentPlayer = Games.Players.getCurrentPlayer(GetGameHelper().getApiClient());
                if (currentPlayer != null) {
                    nativeGameAPICompleteWithData(currentPlayer.getDisplayName(), false, mRawData);
                } else {
                    nativeGameAPIDidNotComplete("No player could be retrieved\n");
                }
            } else {
                nativeGameAPIDidNotComplete("No Game Client & No Plus Client connected");
            }
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Exception raised when attempting to retrieve user name: " + e2.toString());
        }
    }

    public static String GetUid() {
        if (IsLoggedIn()) {
            try {
                if (HasClient(1)) {
                    return Games.Players.getCurrentPlayerId(GetGameHelper().getApiClient());
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public static void GetUserData(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("GetUserData not available for CLIENT_GAMES");
    }

    public static boolean HasClient(int i) {
        return (i & mRequestedClients) != 0;
    }

    public static void IncrementAchievement(String str, int i) {
        try {
            mAchievementManager.incrementAchievement(str, i);
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void InitGameAPI(boolean z, final boolean z2) {
        ConsoleAndroidGLSocialLib.Log_Debug("Setting up Game Services & Plus Client");
        mGameActivity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.2
            @Override // java.lang.Runnable
            public void run() {
                boolean unused = GameAPIAndroidGLSocialLib.sInitRequestIsCalling = true;
                boolean unused2 = GameAPIAndroidGLSocialLib.sAuthRequestIsCalling = true;
                GameAPIAndroidGLSocialLib.GetGameHelper().setGamesApiOptions(Games.GamesOptions.builder().setShowConnectingPopup(true).build());
                GameAPIAndroidGLSocialLib.mRequestedClients = 1 | GameAPIAndroidGLSocialLib.mRequestedClients;
                GameAPIAndroidGLSocialLib.GetGameHelper().setup(GameAPIAndroidGLSocialLib.s_instance, GameAPIAndroidGLSocialLib.mRequestedClients);
                GameHelper gameHelperGetGameHelper = GameAPIAndroidGLSocialLib.GetGameHelper();
                GameAPIAndroidGLSocialLib gameAPIAndroidGLSocialLib = GameAPIAndroidGLSocialLib.s_instance;
                gameHelperGetGameHelper.onStart(GameAPIAndroidGLSocialLib.mGameActivity, z2);
                AchievementManager unused3 = GameAPIAndroidGLSocialLib.mAchievementManager = AchievementManager.getInstance();
                LeadearboardManager unused4 = GameAPIAndroidGLSocialLib.mLeadearboardManager = LeadearboardManager.getInstance();
            }
        });
    }

    public static boolean IsLoggedIn() {
        GameHelper gameHelper = mHelper;
        return gameHelper != null && gameHelper.isSignedIn();
    }

    public static void PostPhotoToWall(String str, String str2) {
        ConsoleAndroidGLSocialLib.Log_Info("postPhotoToWall() not available for CLIENT_GAMES");
        nativeGameAPIDidNotComplete("PostPhotoToWall");
    }

    public static void PostToWall(String str, String str2) {
        ConsoleAndroidGLSocialLib.Log_Info("postToWall() not available for CLIENT_GAMES");
    }

    public static void ResetAchievements() {
        try {
            mAchievementManager.resetAchievement("all", mGameActivity);
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void SetRequestedClients(int i) {
        mRequestedClients = i;
    }

    public static void ShowAchievements() {
        try {
            mAchievementManager.showAchievements();
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void ShowAllLeadearboards() {
        try {
            mLeadearboardManager.showAllLeadearboards();
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void ShowLeadearboardWithId(String str) {
        try {
            mLeadearboardManager.ShowLeadearboard(str);
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void SubmitScore(String str, int i) {
        try {
            mLeadearboardManager.submitScore(i, str);
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString());
        }
    }

    public static void TryAutoConnectToService() {
        mGameActivity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.5
            @Override // java.lang.Runnable
            public void run() {
                GameAPIAndroidGLSocialLib.GetGameHelper().connect();
            }
        });
    }

    public static void UnlockAchievement(String str) {
        try {
            mAchievementManager.unlockAchievement(str);
        } catch (Exception e2) {
            nativeGameAPIDidNotComplete("Not logged in! Exception: " + e2.toString() + " " + e2.getMessage());
        }
    }

    public static native void nativeGameAPIComplete();

    public static native void nativeGameAPICompleteWithData(String str, boolean z, byte[] bArr);

    public static native void nativeGameAPIDidNotComplete(String str);

    public static native void nativeGameAPINotifyAuthChanges(boolean z, String str);

    public static native void nativeGameAPISetCanceled();

    public static native void nativeInit();

    public static void sendGameRequestToFriends(String str, String str2, String str3, String str4, String str5) {
        ConsoleAndroidGLSocialLib.Log_Info("sendGameRequestToFriends not available for CLIENT_GAMES");
    }

    public void SetData(byte[] bArr) {
        mRawData = bArr;
    }

    public Activity getGameActivity() {
        return mGameActivity;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        ConsoleAndroidGLSocialLib.Log_Debug("Google: onActivityResult() requestCode=" + i + " and resultCode=" + i2);
        if (i == 1001 || i == 1002) {
            nativeGameAPIComplete();
            if (i2 == 10001) {
                DisconnectGamesClient();
                return;
            }
            return;
        }
        if (i == 1004) {
            if (i2 == -1) {
                nativeGameAPIComplete();
                return;
            }
            if (i2 == 0) {
                nativeGameAPISetCanceled();
                nativeGameAPIDidNotComplete("USER CANCELED!");
                return;
            } else {
                if (i2 == 10002) {
                    nativeGameAPIDidNotComplete("RESULT_SIGN_IN_FAILED!");
                    return;
                }
                if (i2 == 10006) {
                    nativeGameAPIDidNotComplete("RESULT_NETWORK_FAILURE!");
                    return;
                } else if (i2 != 10007) {
                    nativeGameAPIDidNotComplete("UNKNOWN_ERROR!");
                    return;
                } else {
                    nativeGameAPIDidNotComplete("RESULT_SEND_REQUEST_FAILED!");
                    return;
                }
            }
        }
        if (i != 1006) {
            if (i != 9001) {
                return;
            }
            GameHelper gameHelper = mHelper;
            if (gameHelper == null) {
                ConsoleAndroidGLSocialLib.Log_Debug("Google: mHelper is null");
            } else {
                gameHelper.onActivityResult(i, i2, intent);
            }
            if (i2 == 0) {
                nativeGameAPISetCanceled();
                return;
            }
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("OPEN_BROWSER: resultCode=" + i2);
        if (mHelper == null) {
            ConsoleAndroidGLSocialLib.Log_Debug("Google: mHelper is null");
            onSignInFailed();
        } else if (GetGameHelper().isGooglePlayServicesAvailable() == 0) {
            ConnectToService();
        } else if (IsLoggedIn() && i2 == -1) {
            onSignInSucceeded();
        } else {
            onSignInFailed();
        }
    }

    public void onResume() {
        mGameActivity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.1
            @Override // java.lang.Runnable
            public void run() {
                ConsoleAndroidGLSocialLib.Log_Debug("Google: onResume");
                if (GameAPIAndroidGLSocialLib.mHelper == null) {
                    ConsoleAndroidGLSocialLib.Log_Debug("Google: mHelper is null");
                }
                if (GameAPIAndroidGLSocialLib.sLoginRequestIsCalling) {
                    GameHelper gameHelper = GameAPIAndroidGLSocialLib.mHelper;
                    if (gameHelper.mInstalling) {
                        gameHelper.mInstalling = false;
                        if (GameAPIAndroidGLSocialLib.GetGameHelper().isGooglePlayServicesAvailable() == 0) {
                            GameAPIAndroidGLSocialLib.ConnectToService();
                            return;
                        } else if (GameAPIAndroidGLSocialLib.IsLoggedIn()) {
                            GameAPIAndroidGLSocialLib.this.onSignInSucceeded();
                            return;
                        } else {
                            GameAPIAndroidGLSocialLib.this.onSignInFailed();
                            return;
                        }
                    }
                }
                if (GameAPIAndroidGLSocialLib.IsLoggedIn()) {
                    try {
                        if (GameAPIAndroidGLSocialLib.HasClient(1)) {
                            ConsoleAndroidGLSocialLib.Log_Debug("Google: onResume - check the player step 4");
                            Games.Players.getCurrentPlayerId(GameAPIAndroidGLSocialLib.GetGameHelper().getApiClient());
                        }
                    } catch (Exception unused) {
                        GameAPIAndroidGLSocialLib.DisconnectGamesClient();
                    }
                }
            }
        });
    }

    @Override // com.gameloft.GLSocialLib.GameAPI.GameHelper.GameHelperListener
    public void onSignInFailed() {
        sAuthRequestIsCalling = false;
        ConsoleAndroidGLSocialLib.Log_Debug("onSignInFailed");
        if (!sInitRequestIsCalling) {
            if (sIsConnectingOnResume) {
                sIsConnectingOnResume = false;
                return;
            } else {
                sLoginRequestIsCalling = false;
                nativeGameAPIDidNotComplete("Sign In Failed!");
                return;
            }
        }
        sInitRequestIsCalling = false;
        if (GetGameHelper().hasSignInError()) {
            nativeGameAPINotifyAuthChanges(true, GetGameHelper().getSignInError().toString());
        } else if (GetGameHelper().IsSignInCancelled()) {
            nativeGameAPINotifyAuthChanges(true, "USER CANCELED!");
        }
        nativeGameAPIComplete();
    }

    @Override // com.gameloft.GLSocialLib.GameAPI.GameHelper.GameHelperListener
    public void onSignInSucceeded() {
        sAuthRequestIsCalling = false;
        ConsoleAndroidGLSocialLib.Log_Debug("onSignInSucceeded");
        if (sInitRequestIsCalling) {
            sInitRequestIsCalling = false;
            nativeGameAPINotifyAuthChanges(true, "");
            nativeGameAPIComplete();
        } else if (sIsConnectingOnResume) {
            sIsConnectingOnResume = false;
        } else {
            sLoginRequestIsCalling = false;
            nativeGameAPIComplete();
        }
    }
}
