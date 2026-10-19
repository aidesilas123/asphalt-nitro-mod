###### Class com.bytedance.sdk.openadsdk.component.reward.c (com.bytedance.sdk.openadsdk.component.reward.c)
.class public Lcom/bytedance/sdk/openadsdk/component/reward/c;
.super Ljava/lang/Object;
.source "FakeVideoController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

.field private b:Z

.field private c:J

.field private d:Z

.field private e:Z

.field private final f:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field private final g:Lcom/bykv/vk/openvk/component/video/api/b/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->c:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Z

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->f:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p1

    const-wide/16 v3, 0xa

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->f()D

    move-result-wide v5

    double-to-long v5, v5

    goto :goto_25

    :cond_24
    move-wide v5, v3

    :goto_25
    cmp-long v7, v5, v0

    if-gtz v7, :cond_2e

    long-to-double v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->a(D)V

    goto :goto_2f

    :cond_2e
    move-wide v3, v5

    :goto_2f
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    invoke-direct {p1, v3, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;-><init>(JLcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/g;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->j()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a(J)V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a(Lcom/bykv/vk/openvk/component/video/api/d/c$a;)V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$b;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/d/c$d;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b:Z

    return-void
.end method

.method public a(ZI)V
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->c()V

    return-void
.end method

.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Z

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a(J)V

    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->f:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->i()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->i()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->c:J

    return-void
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .registers 2

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Z

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->k()V

    return-void
.end method

.method public c(J)V
    .registers 3

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e:Z

    return-void
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->c()V

    return-void
.end method

.method public d(Z)V
    .registers 2

    return-void
.end method

.method public e()J
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Z)V
    .registers 2

    return-void
.end method

.method public f()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()J
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()I
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/a/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/bykv/vk/openvk/component/video/api/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    return-object v0
.end method

.method public m()Lcom/bykv/vk/openvk/component/video/api/d/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->d:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->e:Z

    return v0
.end method

.method public p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/bykv/vk/openvk/component/video/api/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c;->g:Lcom/bykv/vk/openvk/component/video/api/b/a;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.component.reward.c.AnonymousClass1 (com.bytedance.sdk.openadsdk.component.reward.c$1)
.class Lcom/bytedance/sdk/openadsdk/component/reward/c$1;
.super Ljava/lang/Object;
.source "FakeVideoController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

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

###### Class com.bytedance.sdk.openadsdk.component.reward.c.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.component.reward.c$a$1)
.class Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;
.super Landroid/os/CountDownTimer;
.source "FakeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;JJJJ)V
    .registers 10

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->a:J

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->b:J

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->o()J

    move-result-wide v1

    const/16 v3, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JI)V

    :cond_1f
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a(J)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->d(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->e(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->f(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bytedance/sdk/openadsdk/b/g;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;Lcom/bytedance/sdk/openadsdk/b/g;)V

    return-void
.end method

.method public onTick(J)V
    .registers 7

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->a:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)J

    move-result-wide p1

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->d(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)Lcom/bykv/vk/openvk/component/video/api/d/c$a;

    move-result-object p1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->b:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/d/c$a;->a(JJ)V

    :cond_22
    return-void
.end method
