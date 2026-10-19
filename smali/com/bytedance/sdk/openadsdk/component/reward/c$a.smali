###### Class com.bytedance.sdk.openadsdk.component.reward.c.a (com.bytedance.sdk.openadsdk.component.reward.c$a)
.class Lcom/bytedance/sdk/openadsdk/component/reward/c$a;
.super Ljava/lang/Object;
.source "FakeVideoController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private b:J

.field private c:I

.field private d:Landroid/os/CountDownTimer;

.field private e:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

.field private f:J

.field private final g:Lcom/bykv/vk/openvk/component/video/api/b/a;

.field private final h:Lcom/bytedance/sdk/openadsdk/b/g;


# direct methods
.method public constructor <init>(JLcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->h:Lcom/bytedance/sdk/openadsdk/b/g;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;I)I
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->e:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/b/a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bytedance/sdk/openadsdk/b/g;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->h:Lcom/bytedance/sdk/openadsdk/b/g;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b:J

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->e:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public h()Z
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public i()V
    .registers 13

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->n()J

    move-result-wide v10

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b:J

    sub-long v8, v10, v0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;

    const-wide/16 v6, 0xc8

    move-object v2, v0

    move-object v3, p0

    move-wide v4, v8

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;JJJJ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public j()V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->f:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d:Landroid/os/CountDownTimer;

    :cond_11
    return-void
.end method

.method public k()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d:Landroid/os/CountDownTimer;

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->e:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    if-eqz v0, :cond_13

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->e:Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    :cond_13
    return-void
.end method

.method public l()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public n()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a:J

    return-wide v0
.end method

.method public o()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->f:J

    return-wide v0
.end method
