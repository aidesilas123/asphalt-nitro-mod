###### Class com.gameloft.GLSocialLib.GameAPI.LeadearboardManager (com.gameloft.GLSocialLib.GameAPI.LeadearboardManager)
.class public Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;
.super Ljava/lang/Object;
.source "LeadearboardManager.java"


# static fields
.field private static instance:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->instance:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    if-nez v0, :cond_c

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    invoke-direct {v0}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->instance:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ShowLeadearboard(Ljava/lang/String;)V
    .registers 5

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

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2d

    :cond_25
    const-string p1, "Leaderboards cannot be shown because there is no initialized activity!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    :goto_2e
    const-string p1, "No Game Client connected"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    return-void
.end method

.method public showAllLeadearboards()V
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

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2d

    :cond_25
    const-string v0, "Leaderboards cannot be shown because there is no initialized activity!"

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

.method public submitScore(ILjava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->GetGameHelper()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager$1;

    invoke-direct {p2, p0}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager$1;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_25

    :cond_20
    const-string p1, "Client not connected"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.LeadearboardManager.AnonymousClass1 (com.gameloft.GLSocialLib.GameAPI.LeadearboardManager$1)
.class Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager$1;
.super Ljava/lang/Object;
.source "LeadearboardManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;->submitScore(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/LeadearboardManager$1;->onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    if-eqz p1, :cond_43

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    const/4 v0, 0x5

    if-eq p1, v0, :cond_28

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1f

    const-string p1, "submitScore - onResult - unknown status code!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_4b

    :cond_1f
    const-string p1, "submitScore - onResult - STATUS_LICENSE_CHECK_FAILED"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_4b

    :cond_28
    const-string p1, "submitScore - onResult - STATUS_NETWORK_ERROR_OPERATION_DEFERRED"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    goto :goto_4b

    :cond_31
    const-string p1, "submitScore - onResult - STATUS_CLIENT_RECONNECT_REQUIRED"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_4b

    :cond_3a
    const-string p1, "submitScore - onResult - STATUS_INTERNAL_ERROR"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIDidNotComplete(Ljava/lang/String;)V

    goto :goto_4b

    :cond_43
    const-string p1, "submitScore - onResult - STATUS_OK"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/GameAPI/GameAPIAndroidGLSocialLib;->nativeGameAPIComplete()V

    :goto_4b
    return-void
.end method
