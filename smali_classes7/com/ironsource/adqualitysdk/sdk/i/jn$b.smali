###### Class com.ironsource.adqualitysdk.sdk.i.jn.b (com.ironsource.adqualitysdk.sdk.i.jn$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jn$b;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/jn;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jn;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;->a:Z

    return-void
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-virtual {p2, p1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻐ(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_10

    iget-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;->a:Z

    if-nez p2, :cond_10

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;->a:Z

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻐ(Landroid/webkit/WebView;)V

    :cond_10
    return-void
.end method
