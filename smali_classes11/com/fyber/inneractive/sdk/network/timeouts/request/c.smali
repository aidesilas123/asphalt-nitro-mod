###### Class com.fyber.inneractive.sdk.network.timeouts.request.c (com.fyber.inneractive.sdk.network.timeouts.request.c)
.class public Lcom/fyber/inneractive/sdk/network/timeouts/request/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/s;Z)Lcom/fyber/inneractive/sdk/network/timeouts/request/a;
    .registers 6

    const-class v0, Lcom/fyber/inneractive/sdk/config/global/features/j;

    invoke-virtual {p3, v0}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object p3

    check-cast p3, Lcom/fyber/inneractive/sdk/config/global/features/j;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p2, Lcom/fyber/inneractive/sdk/network/timeouts/request/b;

    invoke-direct {p2, p1, p3}, Lcom/fyber/inneractive/sdk/network/timeouts/request/b;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/features/j;)V

    return-object p2

    :cond_14
    if-eqz p4, :cond_1c

    new-instance p4, Lcom/fyber/inneractive/sdk/network/timeouts/request/d;

    invoke-direct {p4, p1, p3, p2}, Lcom/fyber/inneractive/sdk/network/timeouts/request/d;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)V

    return-object p4

    :cond_1c
    new-instance p4, Lcom/fyber/inneractive/sdk/network/timeouts/request/e;

    invoke-direct {p4, p1, p3, p2}, Lcom/fyber/inneractive/sdk/network/timeouts/request/e;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)V

    return-object p4
.end method
