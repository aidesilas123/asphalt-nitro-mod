###### Class com.hyprmx.android.sdk.jsAlertDialog.h (com.hyprmx.android.sdk.jsAlertDialog.h)
.class public final synthetic Lcom/hyprmx/android/sdk/jsAlertDialog/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/jsAlertDialog/f;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/jsAlertDialog/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/h;->a:Lcom/hyprmx/android/sdk/jsAlertDialog/f;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/h;->a:Lcom/hyprmx/android/sdk/jsAlertDialog/f;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/jsAlertDialog/f;->a(Lcom/hyprmx/android/sdk/jsAlertDialog/f;Landroid/content/DialogInterface;)V

    return-void
.end method
