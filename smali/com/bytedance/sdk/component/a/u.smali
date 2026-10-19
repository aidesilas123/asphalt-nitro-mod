###### Class com.bytedance.sdk.component.a.u (com.bytedance.sdk.component.a.u)
.class Lcom/bytedance/sdk/component/a/u;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/component/a/w;

.field private final d:Lcom/bytedance/sdk/component/a/v;

.field private e:Lcom/bytedance/sdk/component/a/k$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/v;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/a/v;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/component/a/r;->a:Lcom/bytedance/sdk/component/a/w;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/u;->c:Lcom/bytedance/sdk/component/a/w;

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/u;->d:Lcom/bytedance/sdk/component/a/v;

    if-eqz p2, :cond_1a

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/u;->a:Ljava/util/Set;

    goto :goto_21

    :cond_1a
    :goto_1a
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/u;->a:Ljava/util/Set;

    :goto_21
    if-eqz p3, :cond_32

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/u;->b:Ljava/util/Set;

    goto :goto_39

    :cond_32
    :goto_32
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/u;->b:Ljava/util/Set;

    :goto_39
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;Z)Lcom/bytedance/sdk/component/a/x;
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_3f

    iget-object p3, p0, Lcom/bytedance/sdk/component/a/u;->d:Lcom/bytedance/sdk/component/a/v;

    if-nez p3, :cond_8

    goto :goto_3f

    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/component/a/u;->a:Ljava/util/Set;

    invoke-virtual {p3, p1, v1}, Lcom/bytedance/sdk/component/a/v;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/a/v$c;

    move-result-object p1

    iget-object p3, p1, Lcom/bytedance/sdk/component/a/v$c;->c:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    return-object v0

    :cond_1b
    iget-object p3, p1, Lcom/bytedance/sdk/component/a/v$c;->b:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2a

    sget-object p1, Lcom/bytedance/sdk/component/a/x;->c:Lcom/bytedance/sdk/component/a/x;

    return-object p1

    :cond_2a
    iget-object p3, p1, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/a/b;->b()Lcom/bytedance/sdk/component/a/x;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_38

    const/4 p2, 0x1

    goto :goto_39

    :cond_38
    const/4 p2, 0x0

    :goto_39
    if-eqz p2, :cond_3c

    return-object v0

    :cond_3c
    iget-object p1, p1, Lcom/bytedance/sdk/component/a/v$c;->a:Lcom/bytedance/sdk/component/a/x;

    return-object p1

    :cond_3f
    :goto_3f
    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;
    .registers 4
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/a/v$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/a/u;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;Z)Lcom/bytedance/sdk/component/a/x;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(ZLjava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;
    .registers 12
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/component/a/v$a;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_80

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit p0

    return-object v2

    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/bytedance/sdk/component/a/u;->b:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/bytedance/sdk/component/a/x;->a:Lcom/bytedance/sdk/component/a/x;

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    iget-object v4, p0, Lcom/bytedance/sdk/component/a/u;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_51
    sget-object v3, Lcom/bytedance/sdk/component/a/x;->c:Lcom/bytedance/sdk/component/a/x;

    :cond_53
    if-nez v3, :cond_6f

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/u;->e:Lcom/bytedance/sdk/component/a/k$b;

    if-eqz v0, :cond_6f

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/a/k$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/u;->e:Lcom/bytedance/sdk/component/a/k$b;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/bytedance/sdk/component/a/k$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_80

    if-eqz v0, :cond_6d

    monitor-exit p0

    return-object v2

    :cond_6d
    :try_start_6d
    sget-object v3, Lcom/bytedance/sdk/component/a/x;->c:Lcom/bytedance/sdk/component/a/x;

    :cond_6f
    if-eqz p1, :cond_76

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/a/u;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;

    move-result-object p1

    goto :goto_7a

    :cond_76
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/a/u;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;

    move-result-object p1
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_80

    :goto_7a
    if-eqz p1, :cond_7e

    monitor-exit p0

    return-object p1

    :cond_7e
    monitor-exit p0

    return-object v3

    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/bytedance/sdk/component/a/k$b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/u;->e:Lcom/bytedance/sdk/component/a/k$b;

    return-void
.end method

.method a(Lcom/bytedance/sdk/component/a/w$a;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/u;->c:Lcom/bytedance/sdk/component/a/w;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/a/w;->a(Lcom/bytedance/sdk/component/a/w$a;)V

    :cond_7
    return-void
.end method

.method final declared-synchronized b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;)Lcom/bytedance/sdk/component/a/x;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/a/u;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/b;Z)Lcom/bytedance/sdk/component/a/x;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lcom/bytedance/sdk/component/a/w$a;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/u;->c:Lcom/bytedance/sdk/component/a/w;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/a/w;->b(Lcom/bytedance/sdk/component/a/w$a;)V

    :cond_7
    return-void
.end method
