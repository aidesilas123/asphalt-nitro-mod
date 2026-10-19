###### Class com.fyber.inneractive.sdk.bidder.adm.d (com.fyber.inneractive.sdk.bidder.adm.d)
.class public Lcom/fyber/inneractive/sdk/bidder/adm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/c0$a;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/bidder/adm/f;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/bidder/adm/f;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/d;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_37

    :sswitch_c
    const-string v0, "sdkRequestEndedButWillBeRetried"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_37

    :cond_15
    const/4 v1, 0x3

    goto :goto_37

    :sswitch_17
    const-string v0, "sdkParsedResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "sdkGotServerResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v0, "sdkInitNetworkRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_92

    goto :goto_7f

    :pswitch_3b
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/d;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->b(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/g;

    move-result-object p1

    const-string v0, "retrying"

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/g;->b(Ljava/lang/String;)V

    goto :goto_7f

    :pswitch_4b
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/d;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->d()Ljava/lang/Long;

    goto :goto_7f

    :pswitch_59
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/d;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->h()Ljava/lang/Long;

    goto :goto_7f

    :pswitch_67
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/d;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/metrics/f;->f()Ljava/lang/Long;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/d;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->b(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/g;->b()V

    :goto_7f
    return-void

    :sswitch_data_80
    .sparse-switch
        -0x52fa4c75 -> :sswitch_2d
        0x2c276b36 -> :sswitch_22
        0x6811ae4c -> :sswitch_17
        0x717ca7a6 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_67
        :pswitch_59
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
