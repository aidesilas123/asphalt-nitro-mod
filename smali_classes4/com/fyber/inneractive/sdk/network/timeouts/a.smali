###### Class com.fyber.inneractive.sdk.network.timeouts.a (com.fyber.inneractive.sdk.network.timeouts.a)
.class public abstract Lcom/fyber/inneractive/sdk/network/timeouts/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->a:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->b:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->c:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->d:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->e:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->f:I

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 10

    iget v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->c:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v1, :cond_20

    new-array v0, v2, [Ljava/lang/Object;

    const-class v5, Lcom/fyber/inneractive/sdk/network/timeouts/content/a;

    invoke-static {v5}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%s Unable resolve retries because of invalid ILAT: %d, will set retries to 0"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2b

    :cond_20
    div-int/2addr v0, v1

    sub-int/2addr v0, v3

    const/4 v1, 0x3

    if-le v0, v1, :cond_27

    add-int/lit8 v0, v0, -0x1

    :cond_27
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2b
    iget v1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->c:I

    iget v5, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->d:I

    iget v6, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->e:I

    iget v7, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->f:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int v6, v6, v8

    mul-int v7, v7, v8

    sub-int/2addr v1, v6

    sub-int/2addr v1, v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gtz v8, :cond_58

    goto :goto_59

    :cond_58
    rem-int/2addr v1, v5

    :goto_59
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v1, :cond_65

    if-le v0, v2, :cond_65

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->d:I

    :cond_65
    add-int/2addr v0, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gtz v0, :cond_6d

    goto :goto_6e

    :cond_6d
    div-int/2addr v1, v0

    :goto_6e
    iput v1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->b:I

    iget v0, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->c:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->d:I

    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/fyber/inneractive/sdk/network/timeouts/a;->a(IIII)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(IIII)I
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gtz p2, :cond_8

    move p2, p1

    :cond_8
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 v1, p4, 0x1

    mul-int p4, p4, p3

    add-int/2addr p4, p2

    sub-int/2addr p1, p4

    if-gez p1, :cond_1f

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1f
    if-nez p1, :cond_26

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_26
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fyber/inneractive/sdk/network/timeouts/a;->a(IIII)I

    move-result p1

    return p1
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->g:Z

    return-void
.end method
