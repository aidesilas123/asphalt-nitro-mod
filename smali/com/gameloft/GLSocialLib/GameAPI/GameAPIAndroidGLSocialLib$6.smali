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
