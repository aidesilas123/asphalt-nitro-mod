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
