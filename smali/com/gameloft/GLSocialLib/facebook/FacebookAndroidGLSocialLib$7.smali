###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass7 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$7)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->ShareLinkInternal(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/facebook/share/model/ShareContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/model/ShareContent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;->val$content:Lcom/facebook/share/model/ShareContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$400(Lcom/facebook/share/widget/ShareDialog;)V

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;->val$content:Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    return-void
.end method
