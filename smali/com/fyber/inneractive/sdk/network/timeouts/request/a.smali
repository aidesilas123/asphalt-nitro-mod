###### Class com.fyber.inneractive.sdk.network.timeouts.request.a (com.fyber.inneractive.sdk.network.timeouts.request.a)
.class public abstract Lcom/fyber/inneractive/sdk/network/timeouts/request/a;
.super Lcom/fyber/inneractive/sdk/network/timeouts/a;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/network/timeouts/a;-><init>()V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->l:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->d(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/config/global/features/j;)I
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract c(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I
.end method

.method public d(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)V
    .registers 8

    const-string v0, "read"

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->b(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I

    move-result v1

    const-string v2, "conn"

    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->b(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->a(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->a(Lcom/fyber/inneractive/sdk/config/global/features/j;)I

    move-result v4

    iput v4, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->c(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->j:I

    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->c(Lcom/fyber/inneractive/sdk/config/global/features/j;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->k:I

    iget v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->j:I

    mul-int v0, v0, p2

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->h:I

    mul-int p2, p2, p1

    div-int/lit8 p2, p2, 0x64

    iput p2, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->i:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->h:I

    iget p1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->i:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->i:I

    return-void
.end method
