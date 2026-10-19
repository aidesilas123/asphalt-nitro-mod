###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass1 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$1)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$1;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->Logout()V
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

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    const-string v0, "Logged out successfully"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    return-void
.end method
