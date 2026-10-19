###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass6 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$6)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$6;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterShareResponse(Lcom/facebook/share/widget/ShareDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
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
.method public onCancel()V
    .registers 1

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidNotComplete()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: RegisterShareResponse with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidComplete()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$6;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
