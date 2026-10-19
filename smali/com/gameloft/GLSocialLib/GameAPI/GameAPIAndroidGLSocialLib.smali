###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib)
.class public Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;


# static fields
.field public static final CLIENT_GAMES:I = 0x1

.field public static final FAILED_SIGN_IN:I = 0x2329

.field public static final OPEN_BROWSER:I = 0x3ee

.field public static final POST_ON_PAGE:I = 0x3ec

.field public static final RC_UNUSED:I = 0x232a

.field public static final REQUEST_ACHIEVEMENTS:I = 0x3e9

.field public static final REQUEST_LEADEARBOARD:I = 0x3ea

.field private static isAvatarRequest:Z

.field public static isLogged:Z

.field private static mAchievementManager:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

.field private static mGameActivity:Landroid/app/Activity;

.field protected static mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

.field private static mLeadearboardManager:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

.field private static mRawData:[B

.field protected static mRequestedClients:I

.field private static sAuthRequestIsCalling:Z

.field private static sInitRequestIsCalling:Z

.field private static sIsConnectingOnResume:Z

.field private static sLoginRequestIsCalling:Z

.field public static s_instance:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

.field private static s_userData:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "Google: GameAPIAndroidGLSocialLib constructor"

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sput-object p1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    sput-object p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    return-void
.end method

.method public static ConnectToService()V
    .registers 2

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$4;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static DisconnectFromService()V
    .registers 2

    const-string v0, "Signing out!!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$3;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static DisconnectGamesClient()V
    .registers 2

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->removeClient(I)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->DisconnectFromService()V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->addClient(I)V

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPINotifyAuthChanges(ZLjava/lang/String;)V

    return-void
.end method

.method public static GetAccessToken()Ljava/lang/String;
    .registers 1

    const-string v0, "GetAccessToken is no loger available for Game API, please use GetAuthorizationCode"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static GetAuthorizationToken()V
    .registers 3

    const-string v0, "GetAuthorizationToken"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->HasClient(I)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_52

    :cond_17
    :try_start_17
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sget-object v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    const v2, 0x7f120269

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getGamesServerAuthCode(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$6;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_34} :catch_35

    goto :goto_51

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not logged in! Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->DisconnectGamesClient()V

    :goto_51
    return-void

    :cond_52
    :goto_52
    const-string v0, "Authorization Code cannot be retrieved!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void
.end method

.method public static GetFirstName()V
    .registers 1

    const-string v0, "no first name on client_games"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void
.end method

.method public static GetFriends(Ljava/lang/String;)V
    .registers 1

    const-string p0, "GetFriends not available for CLIENT_GAMES"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void
.end method

.method public static GetFriendsData(ZZII)V
    .registers 4

    const-string p0, "GetFriendsData not available for CLIENT_GAMES"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void
.end method

.method public static GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;
    .registers 2

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    if-nez v0, :cond_12

    const-string v0, "GameAPIAndroidGLSocialLib create a new GameHelper"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    sget-object v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    :cond_12
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    return-object v0
.end method

.method public static GetGamerId()V
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->HasClient(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_27

    :cond_12
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRawData:[B

    invoke-static {v0, v1, v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPICompleteWithData(Ljava/lang/String;Z[B)V

    return-void

    :cond_27
    :goto_27
    const-string v0, "GamerId cannot be retrieved!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void
.end method

.method public static GetPlayerAvatar()V
    .registers 3

    :try_start_0
    const-string v0, "GameAPIAndroidGLSocialLib.java GetPlayerAvatar"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->HasClient(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "GameAPIAndroidGLSocialLib.java GetCurrentPlayer"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_27

    const-string v0, "No player was retrieved"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->hasIconImage()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRawData:[B

    invoke-static {v0, v1, v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPICompleteWithData(Ljava/lang/String;Z[B)V

    goto :goto_5d

    :cond_38
    const-string v0, "The User\'s games profile has no image "

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_5d

    :cond_3e
    const-string v0, "No Game Client & No Plus Client connected"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_5d

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not logged in! Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method public static GetPlayerName()V
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    :try_start_7
    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->HasClient(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRawData:[B

    invoke-static {v0, v1, v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPICompleteWithData(Ljava/lang/String;Z[B)V

    goto :goto_53

    :cond_28
    const-string v0, "No player could be retrieved\n"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_53

    :cond_2e
    const-string v0, "No Game Client & No Plus Client connected"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_53

    :catch_34
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception raised when attempting to retrieve user name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_53

    :cond_4e
    const-string v0, "Not logged in!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method public static GetUid()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :try_start_9
    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->HasClient(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    :cond_1e
    return-object v1
.end method

.method public static GetUserData(Ljava/lang/String;)V
    .registers 1

    const-string p0, "GetUserData not available for CLIENT_GAMES"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void
.end method

.method public static HasClient(I)Z
    .registers 2

    sget v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRequestedClients:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static IncrementAchievement(Ljava/lang/String;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mAchievementManager:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-virtual {v0, p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->incrementAchievement(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not logged in! Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static InitGameAPI(ZZ)V
    .registers 3

    const-string p0, "Setting up Game Services & Plus Client"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$2;

    invoke-direct {v0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$2;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static IsLoggedIn()Z
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static PostPhotoToWall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    const-string p0, "postPhotoToWall() not available for CLIENT_GAMES"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Info(Ljava/lang/String;)V

    const-string p0, "PostPhotoToWall"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void
.end method

.method public static PostToWall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    const-string p0, "postToWall() not available for CLIENT_GAMES"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Info(Ljava/lang/String;)V

    return-void
.end method

.method public static ResetAchievements()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mAchievementManager:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    const-string v1, "all"

    sget-object v2, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->resetAchievement(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_23

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not logged in! Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public static SetRequestedClients(I)V
    .registers 1

    sput p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRequestedClients:I

    return-void
.end method

.method public static ShowAchievements()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mAchievementManager:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->showAchievements()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not logged in! Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static ShowAllLeadearboards()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mLeadearboardManager:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->showAllLeadearboards()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not logged in! Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static ShowLeadearboardWithId(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mLeadearboardManager:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    invoke-virtual {v0, p0}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->ShowLeadearboard(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not logged in! Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static SubmitScore(Ljava/lang/String;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mLeadearboardManager:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    invoke-virtual {v0, p1, p0}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->submitScore(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not logged in! Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static TryAutoConnectToService()V
    .registers 2

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$5;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static UnlockAchievement(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mAchievementManager:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-virtual {v0, p0}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->unlockAchievement(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_2b

    :catch_6
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not logged in! Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sLoginRequestIsCalling:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sLoginRequestIsCalling:Z

    return p0
.end method

.method static synthetic access$100()V
    .registers 0

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->DisconnectGamesClient()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sInitRequestIsCalling:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sAuthRequestIsCalling:Z

    return p0
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;)Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;
    .registers 1

    sput-object p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mAchievementManager:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    return-object p0
.end method

.method static synthetic access$602(Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;)Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;
    .registers 1

    sput-object p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mLeadearboardManager:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    return-object p0
.end method

.method static synthetic access$700()[B
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRawData:[B

    return-object v0
.end method

.method public static native nativeGameAPIComplete()V
.end method

.method public static native nativeGameAPICompleteWithData(Ljava/lang/String;Z[B)V
.end method

.method public static native nativeGameAPIDidNotComplete(Ljava/lang/String;)V
.end method

.method public static native nativeGameAPINotifyAuthChanges(ZLjava/lang/String;)V
.end method

.method public static native nativeGameAPISetCanceled()V
.end method

.method public static native nativeInit()V
.end method

.method public static sendGameRequestToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p0, "sendGameRequestToFriends not available for CLIENT_GAMES"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Info(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SetData([B)V
    .registers 2

    sput-object p1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRawData:[B

    return-void
.end method

.method public getGameActivity()Landroid/app/Activity;
    .registers 2

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google: onActivityResult() requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_b9

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_b9

    const/16 v0, 0x3ec

    const/4 v1, -0x1

    if-eq p1, v0, :cond_84

    const/16 v0, 0x3ee

    const-string v2, "Google: mHelper is null"

    if-eq p1, v0, :cond_47

    const/16 v0, 0x2329

    if-eq p1, v0, :cond_35

    goto/16 :goto_c3

    :cond_35
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    if-nez v0, :cond_3d

    invoke-static {v2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    goto :goto_40

    :cond_3d
    invoke-virtual {v0, p1, p2, p3}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    :goto_40
    if-nez p2, :cond_c3

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPISetCanceled()V

    goto/16 :goto_c3

    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OPEN_BROWSER: resultCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object p1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    if-nez p1, :cond_66

    invoke-static {v2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onSignInFailed()V

    goto :goto_c3

    :cond_66
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isGooglePlayServicesAvailable()I

    move-result p1

    if-eqz p1, :cond_80

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_7c

    if-ne p2, v1, :cond_7c

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onSignInSucceeded()V

    goto :goto_c3

    :cond_7c
    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onSignInFailed()V

    goto :goto_c3

    :cond_80
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->ConnectToService()V

    goto :goto_c3

    :cond_84
    if-ne p2, v1, :cond_8a

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    goto :goto_c3

    :cond_8a
    if-eqz p2, :cond_b0

    const/16 p1, 0x2712

    if-eq p2, p1, :cond_aa

    const/16 p1, 0x2716

    if-eq p2, p1, :cond_a4

    const/16 p1, 0x2717

    if-eq p2, p1, :cond_9e

    const-string p1, "UNKNOWN_ERROR!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_c3

    :cond_9e
    const-string p1, "RESULT_SEND_REQUEST_FAILED!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_c3

    :cond_a4
    const-string p1, "RESULT_NETWORK_FAILURE!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_c3

    :cond_aa
    const-string p1, "RESULT_SIGN_IN_FAILED!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_c3

    :cond_b0
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPISetCanceled()V

    const-string p1, "USER CANCELED!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_c3

    :cond_b9
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    const/16 p1, 0x2711

    if-ne p2, p1, :cond_c3

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->DisconnectGamesClient()V

    :cond_c3
    :goto_c3
    return-void
.end method

.method public onResume()V
    .registers 3

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mGameActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$1;

    invoke-direct {v1, p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$1;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignInFailed()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sAuthRequestIsCalling:Z

    const-string v1, "onSignInFailed"

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-boolean v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sInitRequestIsCalling:Z

    if-eqz v1, :cond_3c

    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sInitRequestIsCalling:Z

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->hasSignInError()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getSignInError()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPINotifyAuthChanges(ZLjava/lang/String;)V

    goto :goto_38

    :cond_29
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->IsSignInCancelled()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "USER CANCELED!"

    invoke-static {v1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPINotifyAuthChanges(ZLjava/lang/String;)V

    :cond_38
    :goto_38
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    goto :goto_4a

    :cond_3c
    sget-boolean v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sIsConnectingOnResume:Z

    if-nez v1, :cond_48

    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sLoginRequestIsCalling:Z

    const-string v0, "Sign In Failed!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_4a

    :cond_48
    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sIsConnectingOnResume:Z

    :goto_4a
    return-void
.end method

.method public onSignInSucceeded()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sAuthRequestIsCalling:Z

    const-string v1, "onSignInSucceeded"

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-boolean v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sInitRequestIsCalling:Z

    if-eqz v1, :cond_18

    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sInitRequestIsCalling:Z

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPINotifyAuthChanges(ZLjava/lang/String;)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    goto :goto_24

    :cond_18
    sget-boolean v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sIsConnectingOnResume:Z

    if-nez v1, :cond_22

    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sLoginRequestIsCalling:Z

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    goto :goto_24

    :cond_22
    sput-boolean v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->sIsConnectingOnResume:Z

    :goto_24
    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.AnonymousClass1 (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib$1)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$1;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "Google: onResume"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    if-nez v0, :cond_e

    const-string v0, "Google: mHelper is null"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mHelper:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    iget-boolean v1, v0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInstalling:Z

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInstalling:Z

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isGooglePlayServicesAvailable()I

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onSignInSucceeded()V

    goto :goto_60

    :cond_33
    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->onSignInFailed()V

    goto :goto_60

    :cond_39
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->ConnectToService()V

    goto :goto_60

    :cond_3d
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->IsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    :try_start_44
    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->HasClient(I)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "Google: onResume - check the player step 4"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5c} :catch_5d

    goto :goto_60

    :catch_5d
    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$100()V

    :cond_60
    :goto_60
    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.AnonymousClass2 (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib$2)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$2;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->InitGameAPI(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$deferAutoLogIn:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$2;->val$deferAutoLogIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$202(Z)Z

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$302(Z)Z

    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V

    sget v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRequestedClients:I

    or-int/2addr v0, v1

    sput v0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRequestedClients:I

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    sget-object v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    sget v2, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->mRequestedClients:I

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->setup(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;I)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    sget-object v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$400()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$2;->val$deferAutoLogIn:Z

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->onStart(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->getInstance()Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$502(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;)Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->getInstance()Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$602(Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;)Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.AnonymousClass3 (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib$3)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$3;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->DisconnectFromService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$302(Z)Z

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->signOut()V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_42

    :catch_f
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$302(Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sign out Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_42
    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.AnonymousClass4 (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib$4)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$4;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->ConnectToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$302(Z)Z

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$002(Z)Z

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->beginUserInitiatedSignIn()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_2f

    :catch_f
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$302(Z)Z

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$002(Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not logged in! Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.AnonymousClass5 (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib$5)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$5;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->TryAutoConnectToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->connect()V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib.AnonymousClass6 (com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib$6)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$6;
.super Ljava/lang/Object;
.source "GameAPIAndroidGLSocialLib.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetAuthorizationToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib$6;->onResult(Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;->getCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    const/4 v0, 0x0

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->access$700()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPICompleteWithData(Ljava/lang/String;Z[B)V

    goto :goto_1b

    :cond_16
    :goto_16
    const-string p1, "Invalid response! authCode null or empty"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method
