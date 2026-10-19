###### Class com.bykv.vk.openvk.component.video.a.b.f.a (com.bykv.vk.openvk.component.video.a.b.f.a)
.class public Lcom/bykv/vk/openvk/component/video/a/b/f/a;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;,
        Lcom/bykv/vk/openvk/component/video/a/b/f/a$b;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->b()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bykv/vk/openvk/component/video/a/b/f/a;
    .registers 1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$b;->a()Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/bykv/vk/openvk/component/video/a/b/a/c;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "proxy_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_18
    const/4 v1, 0x0

    :try_start_19
    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    invoke-direct {v2, v0}, Lcom/bykv/vk/openvk/component/video/a/b/a/c;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_28

    const-wide/32 v0, 0x6400000

    :try_start_21
    invoke-virtual {v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/c;->a(J)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v0

    move-object v1, v2

    goto :goto_29

    :catch_28
    move-exception v0

    :goto_29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    :goto_2d
    return-object v2
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->c:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a()Lcom/bykv/vk/openvk/component/video/a/b/f;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .registers 12

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->c:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->c()Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/e;->a(Z)V

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/e;->b(Z)V

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/e;->a(I)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a()Lcom/bykv/vk/openvk/component/video/a/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/a/b/f;->d()V

    :try_start_1e
    new-instance v3, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;

    invoke-direct {v3, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a;)V

    iput-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->c:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;

    const-string v4, "csj_video_cache_preloader"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->c:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bykv/vk/openvk/component/video/a/b/e;->a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;Landroid/content/Context;)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v4

    const-wide/16 v5, 0x7530

    const-wide/16 v7, 0x7530

    const-wide/16 v9, 0x7530

    invoke-virtual/range {v4 .. v10}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(JJJ)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_43} :catch_4e

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v0

    const v2, 0x9fffff

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(I)V

    return v1

    :catch_4e
    return v2
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.a.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.f.a$1)
.class synthetic Lcom/bykv/vk/openvk/component/video/a/b/f/a$1;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bykv.vk.openvk.component.video.a.b.f.a.C0088a (com.bykv.vk.openvk.component.video.a.b.f.a$a)
.class Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;
.super Ljava/lang/Thread;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c:Z

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    return-void
.end method

.method private a(ILcom/bykv/vk/openvk/component/video/api/c/c;)Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;
    .registers 5

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCachePreloader"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    if-nez v0, :cond_2e

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;)V

    :cond_2e
    iput p1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->a:I

    iput-object p2, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    return-object v0
.end method

.method private a()V
    .registers 1

    return-void
.end method

.method private a(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    .registers 4

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->a:I

    iput-object v0, p1, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .registers 1

    return-void
.end method

.method private declared-synchronized b(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .registers 5

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a()V

    :goto_3
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    if-eqz v0, :cond_57

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->a()I

    move-result v1

    if-lez v1, :cond_2c

    goto :goto_32

    :cond_2c
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->c()I

    move-result v1

    :goto_32
    iput v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->d:I

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    :cond_50
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->f:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V

    goto :goto_3

    :cond_57
    return-void
.end method

.method private c(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    .registers 3

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a(ILcom/bykv/vk/openvk/component/video/api/c/c;)Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V

    return-void
.end method

.method public run()V
    .registers 11

    :goto_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c:Z

    if-eqz v0, :cond_cc

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c()V

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;

    if-nez v0, :cond_23

    goto :goto_10

    :cond_23
    iget v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_75

    if-eq v1, v3, :cond_6b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_63

    const/4 v3, 0x3

    if-eq v1, v3, :cond_41

    const/4 v3, 0x4

    if-eq v1, v3, :cond_36

    goto/16 :goto_b9

    :cond_36
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->d()V

    iput-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->c:Z

    goto/16 :goto_b9

    :cond_41
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->d()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->c()Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->c()Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/b;->a()V

    :cond_55
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->b()Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    move-result-object v1

    if-eqz v1, :cond_b9

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->b()Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/a/c;->a()V

    goto :goto_b9

    :cond_63
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->d()V

    goto :goto_b9

    :cond_6b
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v1

    iget-object v2, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(Ljava/lang/String;)V

    goto :goto_b9

    :cond_75
    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_b9

    array-length v1, v1

    if-lez v1, :cond_b9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_85
    if-ge v6, v5, :cond_95

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    :cond_95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    iget-object v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    const/4 v6, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v6, 0x0

    :goto_ad
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object v4

    const/4 v5, 0x0

    iget v7, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->d:I

    iget-object v8, v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(ZZILjava/lang/String;[Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;)V
    :try_end_bc
    .catchall {:try_start_5 .. :try_end_bc} :catchall_c9

    goto/16 :goto_10

    :cond_be
    :try_start_be
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_c1} :catch_c2
    .catchall {:try_start_be .. :try_end_c1} :catchall_c9

    goto :goto_c6

    :catch_c2
    move-exception v0

    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_c6
    monitor-exit p0

    goto/16 :goto_0

    :catchall_c9
    move-exception v0

    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_c9

    throw v0

    :cond_cc
    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.a.C0088a.C0089a (com.bykv.vk.openvk.component.video.a.b.f.a$a$a)
.class Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/bykv/vk/openvk/component/video/api/c/c;

.field final synthetic g:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$a$a;->g:Lcom/bykv/vk/openvk/component/video/a/b/f/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.f.a.b (com.bykv.vk.openvk.component.video.a.b.f.a$b)
.class Lcom/bykv/vk/openvk/component/video/a/b/f/a$b;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/f/a$1;)V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$b;->a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    return-void
.end method

.method static synthetic a()Lcom/bykv/vk/openvk/component/video/a/b/f/a;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/f/a$b;->a:Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    return-object v0
.end method
