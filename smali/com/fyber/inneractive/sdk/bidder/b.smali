###### Class com.fyber.inneractive.sdk.bidder.b (com.fyber.inneractive.sdk.bidder.b)
.class public Lcom/fyber/inneractive/sdk/bidder/b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/bidder/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/bidder/a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/b;->a:Lcom/fyber/inneractive/sdk/bidder/a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    sget-object p1, Lcom/fyber/inneractive/sdk/util/f0;->UNKNOWN:Lcom/fyber/inneractive/sdk/util/f0;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p1, Lcom/fyber/inneractive/sdk/util/f0;->ETHERNET:Lcom/fyber/inneractive/sdk/util/f0;

    goto :goto_2a

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->i()I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_1e

    sget-object p1, Lcom/fyber/inneractive/sdk/util/f0;->MOBILE_4G:Lcom/fyber/inneractive/sdk/util/f0;

    goto :goto_2a

    :cond_1e
    sget-object p1, Lcom/fyber/inneractive/sdk/util/f0;->MOBILE_3G:Lcom/fyber/inneractive/sdk/util/f0;

    goto :goto_2a

    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    sget-object p1, Lcom/fyber/inneractive/sdk/util/f0;->WIFI:Lcom/fyber/inneractive/sdk/util/f0;

    :cond_2a
    :goto_2a
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/bidder/b;->a:Lcom/fyber/inneractive/sdk/bidder/a;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/bidder/c;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/util/f0;->key:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_43

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/bidder/b;->a:Lcom/fyber/inneractive/sdk/bidder/a;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/bidder/a;->c:Lcom/fyber/inneractive/sdk/bidder/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/util/f0;->key:Ljava/lang/String;

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/bidder/c;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/bidder/a;->b()V

    :cond_43
    return-void
.end method
