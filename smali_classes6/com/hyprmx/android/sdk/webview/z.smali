###### Class com.hyprmx.android.sdk.webview.z (com.hyprmx.android.sdk.webview.z)
.class public final synthetic Lcom/hyprmx/android/sdk/webview/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/webview/z;->a:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/z;->a:Landroid/webkit/JsResult;

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/webview/f;->a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    return-void
.end method
