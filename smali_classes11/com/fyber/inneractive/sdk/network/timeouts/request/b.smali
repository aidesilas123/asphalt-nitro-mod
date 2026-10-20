###### Class com.fyber.inneractive.sdk.network.timeouts.request.b (com.fyber.inneractive.sdk.network.timeouts.request.b)
.class public Lcom/fyber/inneractive/sdk/network/timeouts/request/b;
.super Lcom/fyber/inneractive/sdk/network/timeouts/request/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/features/j;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/config/global/features/j;)I
    .registers 2

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/config/global/features/j;->d()I

    move-result p1

    return p1
.end method

.method public a(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/config/global/features/j;->e(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    const-string v2, "min"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rat"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/config/global/features/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/config/global/features/j;->h(Ljava/lang/String;)I

    const/16 p2, 0x1388

    invoke-virtual {p1, v0, p2}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public c(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rat_perc"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/config/global/features/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "read"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const/16 p2, 0xf

    goto :goto_1f

    :cond_1d
    const/16 p2, 0xa

    :goto_1f
    invoke-virtual {p1, v0, p2}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
