###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initFeedbackMessageView()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$000(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$100(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$102(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;Z)Z

    :cond_14
    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$200(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    return-void
.end method
