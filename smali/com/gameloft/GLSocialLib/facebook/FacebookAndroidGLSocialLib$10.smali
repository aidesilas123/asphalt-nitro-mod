###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass10 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$10)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$10;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V
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
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: StartGraphApiRequest - onCompleted"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$600(Lcom/facebook/GraphResponse;)V

    return-void
.end method
