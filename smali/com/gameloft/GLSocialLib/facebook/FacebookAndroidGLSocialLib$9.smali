###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass9 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$9)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->SendGameRequestInternal(Lcom/facebook/share/model/GameRequestContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$requestContent:Lcom/facebook/share/model/GameRequestContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/model/GameRequestContent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;->val$requestContent:Lcom/facebook/share/model/GameRequestContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$500(Lcom/facebook/share/widget/GameRequestDialog;)V

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;->val$requestContent:Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    return-void
.end method
