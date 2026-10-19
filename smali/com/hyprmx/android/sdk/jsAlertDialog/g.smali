###### Class com.hyprmx.android.sdk.jsAlertDialog.g (com.hyprmx.android.sdk.jsAlertDialog.g)
.class public final synthetic Lcom/hyprmx/android/sdk/jsAlertDialog/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/jsAlertDialog/f;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/jsAlertDialog/f;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/g;->a:Lcom/hyprmx/android/sdk/jsAlertDialog/f;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/g;->a:Lcom/hyprmx/android/sdk/jsAlertDialog/f;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/hyprmx/android/sdk/jsAlertDialog/f;->a(Lcom/hyprmx/android/sdk/jsAlertDialog/f;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
