###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass3.AnonymousClass1 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$3$1)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;->this$0:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V
    .registers 3

    if-eqz p1, :cond_f

    const-string v0, "FacebookAndroidGLSocialLib: onDeferredAppLinkDataFetched has appLinkData"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    goto :goto_14

    :cond_f
    const-string p1, "FacebookAndroidGLSocialLib: onDeferredAppLinkDataFetched no appLinkData"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :goto_14
    return-void
.end method
