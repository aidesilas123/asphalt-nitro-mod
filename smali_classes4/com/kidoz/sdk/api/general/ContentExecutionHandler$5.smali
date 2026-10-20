###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass5 (com.kidoz.sdk.api.general.ContentExecutionHandler$5)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lockStatusListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;->val$lockStatusListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 1

    return-void
.end method

.method public onInputPass(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;->val$lockStatusListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;->onLockActive(Z)V

    return-void
.end method
