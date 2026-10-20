###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass9 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$9)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;


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

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordEntered(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;->onInputPass(Z)V

    return-void
.end method
