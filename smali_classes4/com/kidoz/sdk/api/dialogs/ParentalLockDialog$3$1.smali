###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$3$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$300(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;I)V

    return-void
.end method
