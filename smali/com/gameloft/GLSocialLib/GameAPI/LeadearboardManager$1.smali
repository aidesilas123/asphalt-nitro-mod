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
