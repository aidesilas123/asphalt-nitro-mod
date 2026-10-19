###### Class com.applovin.impl.adview.k0 (com.applovin.impl.adview.k0)
.class public final synthetic Lcom/applovin/impl/adview/k0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/k0;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/k0;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->v(Landroid/webkit/WebView;)V

    return-void
.end method
