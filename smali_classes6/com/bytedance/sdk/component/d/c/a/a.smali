###### Class com.bytedance.sdk.component.d.c.a.a (com.bytedance.sdk.component.d.c.a.a)
.class public Lcom/bytedance/sdk/component/d/c/a/a;
.super Ljava/lang/Object;
.source "CacheConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/b;
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile f:Lcom/bytedance/sdk/component/d/b;


# instance fields
.field private a:J

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(IJLjava/io/File;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v6, 0x1

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    :goto_7
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_f

    const/4 v7, 0x1

    goto :goto_10

    :cond_f
    const/4 v7, 0x0

    :goto_10
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/d/c/a/a;-><init>(IJZZLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(IJZZLjava/io/File;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/component/d/c/a/a;->a:J

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/a/a;->b:I

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/d/c/a/a;->c:Z

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/d/c/a/a;->d:Z

    iput-object p6, p0, Lcom/bytedance/sdk/component/d/c/a/a;->e:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/bytedance/sdk/component/d/b;
    .registers 8

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    sget-object v0, Lcom/bytedance/sdk/component/d/c/a/a;->f:Lcom/bytedance/sdk/component/d/b;

    const-wide/32 v1, 0x2800000

    const/high16 v3, 0x1e00000

    if-nez v0, :cond_2e

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/component/d/c/a/a;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x10

    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_47

    :cond_2e
    sget-object v0, Lcom/bytedance/sdk/component/d/c/a/a;->f:Lcom/bytedance/sdk/component/d/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/b;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v3, Lcom/bytedance/sdk/component/d/c/a/a;->f:Lcom/bytedance/sdk/component/d/b;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/d/b;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_47
    const-wide/32 v3, 0x1400000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/high16 v3, 0x1900000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lcom/bytedance/sdk/component/d/c/a/a;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/bytedance/sdk/component/d/c/a/a;-><init>(IJLjava/io/File;)V

    return-object v3
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/component/d/b;)V
    .registers 3

    if-eqz p1, :cond_5

    sput-object p1, Lcom/bytedance/sdk/component/d/c/a/a;->f:Lcom/bytedance/sdk/component/d/b;

    return-void

    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "image"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a;->a(Ljava/io/File;)Lcom/bytedance/sdk/component/d/b;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/d/c/a/a;->f:Lcom/bytedance/sdk/component/d/b;

    return-void
.end method

.method public static g()Lcom/bytedance/sdk/component/d/b;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/d/c/a/a;->f:Lcom/bytedance/sdk/component/d/b;

    return-object v0
.end method

.method private static h()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/c/a/a;->a:J

    return-wide v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/a/a;->b:I

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/a/a;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/a/a;->d:Z

    return v0
.end method

.method public e()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a;->e:Ljava/io/File;

    return-object v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
