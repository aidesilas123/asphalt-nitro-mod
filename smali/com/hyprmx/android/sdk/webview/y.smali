###### Class com.hyprmx.android.sdk.webview.y (com.hyprmx.android.sdk.webview.y)
.class public final synthetic Lcom/hyprmx/android/sdk/webview/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/webview/y;->a:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/y;->a:Landroid/webkit/JsResult;

    invoke-static {v0, p1, p2}, Lcom/hyprmx/android/sdk/webview/f;->b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method
