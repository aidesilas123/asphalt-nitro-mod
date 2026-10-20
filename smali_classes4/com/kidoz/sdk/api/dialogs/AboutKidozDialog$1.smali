###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog.AnonymousClass1 (com.kidoz.sdk.api.dialogs.AboutKidozDialog$1)
.class Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1;
.super Ljava/lang/Object;
.source "AboutKidozDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initCloseButton()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1$1;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$1;)V

    const/16 v1, 0x64

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
