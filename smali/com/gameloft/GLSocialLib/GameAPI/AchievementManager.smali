###### Class com.gameloft.GLSocialLib.GameAPI.AchievementManager (com.gameloft.GLSocialLib.GameAPI.AchievementManager)
.class public Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;
.super Ljava/lang/Object;
.source "AchievementManager.java"


# static fields
.field private static final GAME_API_RESET_ACHIEVEMENTS:Ljava/lang/String; = "https://www.googleapis.com/games/v1management/achievements/reset"

.field private static s_instance:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;


# instance fields
.field private mAsyncTask:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->onAchievementUpdated(I)V

    return-void
.end method

.method public static getInstance()Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    invoke-direct {v0}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    :cond_b
    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;

    return-object v0
.end method

.method private onAchievementUpdated(I)V
    .registers 4

    if-eqz p1, :cond_62

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_56

    const/4 v0, 0x3

    if-eq p1, v0, :cond_50

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_62

    const/4 v0, 0x7

    if-eq p1, v0, :cond_44

    packed-switch p1, :pswitch_data_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAchievementsUpdated: other error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :pswitch_2c
    const-string p1, "onAchievementUpdated: Achievement was already unlocked."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :pswitch_32
    const-string p1, "onAchievementUpdated: Achievement failed to increment since it is not an incremental achievement."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :pswitch_38
    const-string p1, "onAchievementUpdated: Achievement failed to update because could not find the achievement to update."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :pswitch_3e
    const-string p1, "onAchievementUpdated: Call to unlock achievement failed."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :cond_44
    const-string p1, "onAchievementUpdated: The game is not licensed to the user"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :cond_4a
    const-string p1, "onAchievementUpdated: The device was unable to retrieve any data from the network and has no data cached locally."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :cond_50
    const-string p1, "onAchievementUpdated: The device was unable to retrieve the latest data from the network, but has some data cached locally."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :cond_56
    const-string p1, "onAchievementUpdated: GamesClient needs to reconnect to the service to access this data."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :cond_5c
    const-string p1, "onAchievementUpdated: Unexpected error occurred in the service."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_6c

    :cond_62
    const-string p1, "onAchievementUpdated: Success"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    const-string p1, ""

    :goto_6c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    const-string p1, "onAchievementUpdated: Failed"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Verbose(Ljava/lang/String;)V

    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0xbb8
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public incrementAchievement(Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$1;

    invoke-direct {p2, p0}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$1;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_24

    :cond_1f
    const-string p1, "Client not connected"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public resetAchievement(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->mAsyncTask:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    if-nez p1, :cond_d

    new-instance p1, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->mAsyncTask:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    :cond_d
    const-string p1, "AchievementManager: resetAchievement"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;->mAsyncTask:Lcom/gameloft/GLSocialLib/GameAPI/RestManager;

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetAccessToken()Ljava/lang/String;

    move-result-object p2

    const-string v0, "https://www.googleapis.com/games/v1management/achievements/reset"

    invoke-virtual {p1, v0, p2}, Lcom/gameloft/GLSocialLib/GameAPI/RestManager;->getRest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public revealAchievement(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/games/achievement/Achievements;->revealImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$3;

    invoke-direct {v0, p0}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$3;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_24

    :cond_1f
    const-string p1, "Client not connected"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public showAchievements()V
    .registers 4

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2e

    :cond_d
    sget-object v1, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_25

    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2d

    :cond_25
    const-string v0, "Achievements cannot be shown because there is no initialized activity!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    :goto_2e
    const-string v0, "No Game Client connected"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$2;

    invoke-direct {v0, p0}, Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager$2;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/AchievementManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_24

    :cond_1f
    const-string p1, "Client not connected"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_24
    return-void
.end method
