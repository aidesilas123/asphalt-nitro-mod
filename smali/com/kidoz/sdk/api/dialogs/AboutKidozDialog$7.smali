###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog.AnonymousClass7 (com.kidoz.sdk.api.dialogs.AboutKidozDialog$7)
.class Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$7;
.super Ljava/lang/Object;
.source "AboutKidozDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$201(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
