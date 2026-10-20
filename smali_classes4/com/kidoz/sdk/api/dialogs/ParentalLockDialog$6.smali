###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass6 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$6)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initQuestionAnswerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
