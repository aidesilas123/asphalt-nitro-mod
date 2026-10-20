###### Class com.tapjoy.TJWebViewActivity.a (com.tapjoy.TJWebViewActivity$a)
.class public Lcom/tapjoy/TJWebViewActivity$a;
.super Lcom/tapjoy/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJWebViewActivity$a;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-direct {p0}, Lcom/tapjoy/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity$a;->a:Lcom/tapjoy/TJWebViewActivity;

    return-object v0
.end method

.method public c()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJWebViewActivity$a;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJWebView;

    return-object v0
.end method
