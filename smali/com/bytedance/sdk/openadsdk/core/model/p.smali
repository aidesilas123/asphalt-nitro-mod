###### Class com.bytedance.sdk.openadsdk.core.model.p (com.bytedance.sdk.openadsdk.core.model.p)
.class public Lcom/bytedance/sdk/openadsdk/core/model/p;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->a:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    const-wide/16 p1, 0xa

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->a:J

    return-void

    :cond_b
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->c:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->b:J

    return-wide v0
.end method

.method public b(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    const-wide/16 p1, 0x14

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->b:J

    return-void

    :cond_b
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->b:J

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/p;->c:Ljava/lang/String;

    return-object v0
.end method
