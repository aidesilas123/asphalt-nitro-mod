###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass3 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$3)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->FetchDeferredAppLinkData()V
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
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;

    invoke-direct {v1, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;-><init>(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;)V

    invoke-static {v0, v1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method
