###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass2 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$2)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$2;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->ReauthorizePermissions()V
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

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$000()V

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->reauthorizeDataAccess(Landroid/app/Activity;)V

    return-void
.end method
