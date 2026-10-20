###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass8 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$8)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;->onCloseDialog()V

    return-void
.end method
