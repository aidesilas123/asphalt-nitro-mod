###### Class com.fyber.inneractive.sdk.network.p.b (com.fyber.inneractive.sdk.network.p$b)
.class public Lcom/fyber/inneractive/sdk/network/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/p;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/p;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/p;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

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

    sparse-switch v0, :sswitch_data_5a

    goto :goto_2c

    :sswitch_c
    const-string v0, "sdkParsedResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "sdkGotServerResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "sdkInitNetworkRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_68

    goto :goto_59

    :pswitch_30
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->d()Ljava/lang/Long;

    goto :goto_59

    :pswitch_3e
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->g()Ljava/lang/Long;

    goto :goto_59

    :pswitch_4c
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->f()Ljava/lang/Long;

    :goto_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        -0x52fa4c75 -> :sswitch_22
        0x2c276b36 -> :sswitch_17
        0x6811ae4c -> :sswitch_c
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
    .end packed-switch
.end method
