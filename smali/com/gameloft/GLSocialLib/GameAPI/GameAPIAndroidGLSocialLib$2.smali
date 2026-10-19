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
