###### Class com.bytedance.sdk.component.e.a.d.b.a (com.bytedance.sdk.component.e.a.d.b.a)
.class public Lcom/bytedance/sdk/component/e/a/d/b/a;
.super Ljava/lang/Object;
.source "PolicyConfig.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(IIJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p2, p1, :cond_a

    iput p1, p0, Lcom/bytedance/sdk/component/e/a/d/b/a;->a:I

    iput p2, p0, Lcom/bytedance/sdk/component/e/a/d/b/a;->b:I

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 5

    new-instance v0, Lcom/bytedance/sdk/component/e/a/d/b/a;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-wide/32 v3, 0xa4cb800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/e/a/d/b/a;-><init>(IIJ)V

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 5

    new-instance v0, Lcom/bytedance/sdk/component/e/a/d/b/a;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/e/a/d/b/a;-><init>(IIJ)V

    return-object v0
.end method

.method public static e()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 5

    new-instance v0, Lcom/bytedance/sdk/component/e/a/d/b/a;

    const/4 v1, 0x3

    const/16 v2, 0x64

    const-wide/32 v3, 0xa4cb800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/e/a/d/b/a;-><init>(IIJ)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/e/a/d/b/a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/e/a/d/b/a;->b:I

    return v0
.end method
