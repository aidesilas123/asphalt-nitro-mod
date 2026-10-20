###### Class com.tapjoy.internal.v1 (com.tapjoy.internal.v1)
.class public final Lcom/tapjoy/internal/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/v1;

.field public static b:Landroid/os/Handler;

.field public static c:Ljava/io/File;


# instance fields
.field public final d:Lcom/tapjoy/internal/i1;

.field public e:Lcom/tapjoy/internal/w1;

.field public f:Z

.field public g:Landroid/content/Context;

.field public h:Lcom/tapjoy/internal/d3;

.field public i:Lcom/tapjoy/internal/i5;

.field public j:Lcom/tapjoy/internal/e9;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/tapjoy/internal/g2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/v1;

    invoke-direct {v0}, Lcom/tapjoy/internal/v1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/v1;->f:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/v1;->m:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/internal/g2;->a(Lcom/tapjoy/internal/k9;)Lcom/tapjoy/internal/g2;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->o:Lcom/tapjoy/internal/g2;

    new-instance v0, Lcom/tapjoy/internal/i1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/i1;-><init>(Lcom/tapjoy/internal/v1;)V

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->d:Lcom/tapjoy/internal/i1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    const-class v1, Lcom/tapjoy/internal/v1;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;

    if-nez v2, :cond_12

    const-string v2, "fiverocks"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;

    :cond_12
    sget-object p0, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1b

    monitor-exit v1

    const-string v1, "install"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catchall_1b
    move-exception p0

    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/v1;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-static {p1}, Lcom/tapjoy/internal/e1;->a(Z)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_7c

    if-nez p1, :cond_1b

    monitor-exit p0

    return-void

    :cond_1b
    if-eqz p2, :cond_2f

    :try_start_1d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x18

    if-ne p1, v2, :cond_2f

    const-string p1, "[0-9a-f]{24}"

    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_7c

    if-eqz p1, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    if-nez p1, :cond_34

    monitor-exit p0

    return-void

    :cond_34
    if-eqz p3, :cond_48

    :try_start_36
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_48

    const-string p1, "[0-9A-Za-z\\-_]{20}"

    invoke-virtual {p3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_7c

    if-eqz p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    const/4 p1, 0x0

    :goto_49
    if-nez p1, :cond_4d

    monitor-exit p0

    return-void

    :cond_4d
    :try_start_4d
    iput-boolean v0, p0, Lcom/tapjoy/internal/v1;->l:Z

    invoke-virtual {p0}, Lcom/tapjoy/internal/v1;->j()V

    iget-object p1, p0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5e

    goto :goto_7a

    :cond_5e
    iget-object p3, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p3, p3, Lcom/tapjoy/internal/h2;->x:Lcom/tapjoy/internal/o3;

    invoke-virtual {p3}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7a

    iget-object p3, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p3, p3, Lcom/tapjoy/internal/h2;->x:Lcom/tapjoy/internal/o3;

    invoke-virtual {p3, p2}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p1, p1, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-static {p1, v1}, Lcom/tapjoy/internal/a7;->a(Landroid/content/SharedPreferences;Z)V
    :try_end_7a
    .catchall {:try_start_4d .. :try_end_7a} :catchall_7c

    :cond_7a
    :goto_7a
    monitor-exit p0

    return-void

    :catchall_7c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d3;->b()Lcom/tapjoy/internal/y;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    iget-object v0, v0, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/internal/g5;

    invoke-direct {v0}, Lcom/tapjoy/internal/g5;-><init>()V

    new-instance v1, Lcom/tapjoy/internal/n7;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/n7;-><init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_15
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/f8;->c(Lcom/tapjoy/internal/n7;)V

    const/4 p1, 0x0

    throw p1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d(Ljava/util/Set;)V
    .registers 9

    invoke-virtual {p0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_42

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lt v1, v3, :cond_18

    :cond_41
    move-object p1, v0

    :cond_42
    iget-object v0, p0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter v0

    if-eqz p1, :cond_a1

    :try_start_47
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    if-eqz v2, :cond_99

    const-string v3, "elements"

    invoke-static {v3, v1}, Lcom/tapjoy/internal/i3;->a(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/tapjoy/internal/n;

    invoke-direct {v3}, Lcom/tapjoy/internal/n;-><init>()V
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_b1

    :try_start_61
    new-instance v4, Lcom/tapjoy/internal/w5;

    invoke-direct {v4, v3}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    sget-object v5, Lcom/tapjoy/internal/q7;->h:Lcom/tapjoy/internal/c3;

    invoke-virtual {v5}, Lcom/tapjoy/internal/q7;->c()Lcom/tapjoy/internal/q7;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6, v1}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_73} :catch_92
    .catchall {:try_start_61 .. :try_end_73} :catchall_b1

    :try_start_73
    invoke-virtual {v3}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v2, v2, Lcom/tapjoy/internal/h2;->t:Lcom/tapjoy/internal/o3;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v1, v1, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-virtual {v1}, Ljava/util/AbstractList;->clear()V

    iget-object v1, v0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v1, v1, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_af

    :catch_92
    move-exception p1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_99
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "unknownFields == null"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    iget-object p1, v0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p1, p1, Lcom/tapjoy/internal/h2;->t:Lcom/tapjoy/internal/o3;

    invoke-virtual {p1}, Lcom/tapjoy/internal/p9;->a()V

    iget-object p1, v0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object p1, p1, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-virtual {p1}, Ljava/util/AbstractList;->clear()V

    :goto_af
    monitor-exit v0

    return-void

    :catchall_b1
    move-exception p1

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_73 .. :try_end_b3} :catchall_b1

    throw p1
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter p1

    :try_start_a
    iget-object v2, p1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v2, v2, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    iget-object v2, v2, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_70

    iget-object v7, p1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v7, v7, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    iget-object v7, v7, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/internal/b0;

    iget-object v8, v7, Lcom/tapjoy/internal/b0;->d:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    if-eqz p3, :cond_6a

    invoke-virtual {v7}, Lcom/tapjoy/internal/b0;->d()Lcom/tapjoy/internal/i;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    iget-object v1, p2, Lcom/tapjoy/internal/i;->c:Ljava/lang/String;

    if-eqz v1, :cond_55

    if-eqz p3, :cond_55

    new-instance v2, Lcom/tapjoy/internal/b0;

    iget-object v5, p2, Lcom/tapjoy/internal/i;->d:Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/tapjoy/internal/l5;->a()Lcom/tapjoy/internal/c1;

    move-result-object p2

    invoke-direct {v2, v1, p3, v5, p2}, Lcom/tapjoy/internal/b0;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/c1;)V

    invoke-virtual {v0, v4, v2}, Lcom/tapjoy/internal/j6;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_86

    :cond_55
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, v3

    const-string v0, "id"

    aput-object v0, p2, v6

    const/4 v0, 0x2

    aput-object p3, p2, v0

    const/4 p3, 0x3

    const-string v0, "received"

    aput-object v0, p2, p3

    invoke-static {p2}, Lcom/tapjoy/internal/i3;->a([Ljava/lang/Object;)V

    throw v5

    :cond_6a
    monitor-exit p1

    const/4 p1, 0x0

    goto :goto_87

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_70
    iget-object p3, p1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object p3, p3, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    new-instance v2, Lcom/tapjoy/internal/b0;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    invoke-direct {v2, p2, v0, v5, v1}, Lcom/tapjoy/internal/b0;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/c1;)V

    invoke-virtual {p3, v2}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/tapjoy/internal/d3;->l()V

    monitor-exit p1
    :try_end_86
    .catchall {:try_start_a .. :try_end_86} :catchall_a2

    :goto_86
    const/4 p1, 0x1

    :goto_87
    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string p3, "push_show"

    invoke-virtual {p1, p2, p3}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object p2

    sget-object p3, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    const-string v0, "unknownFields == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    const/4 v3, 0x1

    :cond_a1
    return v3

    :catchall_a2
    move-exception p2

    :try_start_a3
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p2
.end method

.method public final declared-synchronized g(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-nez v0, :cond_51

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    sget-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ca;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tapjoy/internal/d3;->a(Landroid/content/Context;)Lcom/tapjoy/internal/d3;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    new-instance v1, Lcom/tapjoy/internal/i5;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/i5;-><init>(Lcom/tapjoy/internal/d3;)V

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    new-instance v0, Lcom/tapjoy/internal/e9;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/e9;-><init>(Lcom/tapjoy/internal/i5;)V

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    new-instance v0, Lcom/tapjoy/internal/w1;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/w1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->e:Lcom/tapjoy/internal/w1;

    sget-object v0, Lcom/tapjoy/internal/m2;->a:Lcom/tapjoy/internal/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/m2;->b:Landroid/content/Context;

    const-string v1, "tapjoyCacheDataMMF2E"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/m2;->c:Landroid/content/SharedPreferences;

    const-string v1, "tapjoyCacheDataMMF2U"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/m2;->d:Landroid/content/SharedPreferences;

    iget-object p1, v0, Lcom/tapjoy/internal/m2;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/d1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/d1;-><init>(Lcom/tapjoy/internal/m2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    :cond_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/v1;->l:Z

    if-eqz v0, :cond_15

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;

    if-eqz v0, :cond_c

    move-object p1, v0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;

    if-eqz p1, :cond_19

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/v1;->c(Ljava/lang/String;)V

    goto :goto_19

    :cond_15
    if-eqz p1, :cond_19

    iput-object p1, p0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/internal/v1;->l:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/v1;->k:Ljava/lang/String;

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .registers 7

    new-instance v0, Lcom/tapjoy/internal/r0;

    iget-object v1, p0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tapjoy/internal/v1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/r0;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    :try_start_12
    invoke-static {v1}, Lcom/tapjoy/internal/g7;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_1d

    if-lez v2, :cond_1d

    goto :goto_1e

    :catch_1d
    :cond_1d
    move-object v1, v3

    :goto_1e
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-nez v1, :cond_79

    monitor-enter v0

    :try_start_28
    iget-object v1, v0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_76

    if-eqz v1, :cond_3d

    :try_start_30
    iget-object v1, v0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    invoke-static {v1}, Lcom/tapjoy/internal/g7;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_3d
    .catchall {:try_start_30 .. :try_end_3a} :catchall_76

    if-lez v5, :cond_3d

    goto :goto_3e

    :catch_3d
    :cond_3d
    move-object v1, v3

    :goto_3e
    if-eqz v1, :cond_41

    goto :goto_62

    :cond_41
    :try_start_41
    invoke-virtual {v0}, Lcom/tapjoy/internal/r0;->a()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_62
    .catchall {:try_start_41 .. :try_end_44} :catchall_76

    :try_start_44
    iget-object v1, v0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_76

    if-eqz v1, :cond_5b

    :try_start_4c
    iget-object v1, v0, Lcom/tapjoy/internal/r0;->a:Ljava/io/File;

    invoke-static {v1}, Lcom/tapjoy/internal/g7;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_56} :catch_5a
    .catchall {:try_start_4c .. :try_end_56} :catchall_76

    if-lez v5, :cond_5b

    move-object v3, v1

    goto :goto_5b

    :catch_5a
    nop

    :cond_5b
    :goto_5b
    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    monitor-exit v0

    move v4, v2

    goto :goto_63

    :catch_62
    :goto_62
    monitor-exit v0

    :goto_63
    if-eqz v4, :cond_79

    iget-object v0, p0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    goto :goto_79

    :catchall_76
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_79
    :goto_79
    return-void
.end method

.method public final k()Z
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    iget-object v2, v0, Lcom/tapjoy/internal/e9;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tapjoy/internal/e9;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_f
    iget-object v2, v0, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_125

    iget-object v0, v0, Lcom/tapjoy/internal/e9;->a:Lcom/tapjoy/internal/i5;

    iget-object v2, v0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    const-string v5, "fq30_"

    const-string v6, "fq7_"

    monitor-enter v2

    :try_start_21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x2710

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x64

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v9

    iget-object v9, v2, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v9, v9, Lcom/tapjoy/internal/h2;->e:Lcom/tapjoy/internal/u1;

    invoke-virtual {v9}, Lcom/tapjoy/internal/u1;->c()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_104

    if-nez v9, :cond_6e

    iget-object v5, v2, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/tapjoy/internal/s5;->e:Ljava/lang/Integer;

    iget-object v5, v2, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/tapjoy/internal/s5;->f:Ljava/lang/Integer;

    sget-object v5, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    if-eqz v5, :cond_66

    const/4 v3, 0x1

    goto/16 :goto_ec

    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "unknownFields == null"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    iget-object v10, v2, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v10, v10, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/u1;

    invoke-virtual {v10}, Lcom/tapjoy/internal/u1;->c()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x7

    invoke-static {v11, v10}, Lcom/tapjoy/internal/d3;->a(II)I

    move-result v12

    const/16 v13, 0x1e

    invoke-static {v13, v10}, Lcom/tapjoy/internal/d3;->a(II)I

    move-result v14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    div-int/lit16 v3, v9, 0x2710

    div-int/lit8 v16, v9, 0x64

    rem-int/lit8 v16, v16, 0x64

    add-int/lit8 v11, v16, -0x1

    rem-int/lit8 v9, v9, 0x64

    invoke-virtual {v15, v3, v11, v9}, Ljava/util/Calendar;->set(III)V

    invoke-static {v7, v15}, Lcom/tapjoy/internal/j0;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v13, :cond_a6

    const/4 v3, 0x0

    goto :goto_ae

    :cond_a6
    if-ltz v3, :cond_ab

    shl-int v3, v10, v3

    goto :goto_ae

    :cond_ab
    neg-int v3, v3

    shr-int v3, v10, v3

    :goto_ae
    or-int/2addr v3, v4

    const/4 v7, 0x7

    invoke-static {v7, v3}, Lcom/tapjoy/internal/d3;->a(II)I

    move-result v7

    invoke-static {v13, v3}, Lcom/tapjoy/internal/d3;->a(II)I

    move-result v9

    iget-object v10, v2, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/tapjoy/internal/s5;->e:Ljava/lang/Integer;

    iget-object v10, v2, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/tapjoy/internal/s5;->f:Ljava/lang/Integer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    if-eqz v5, :cond_fc

    :goto_ec
    iget-object v5, v2, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v5, v5, Lcom/tapjoy/internal/h2;->e:Lcom/tapjoy/internal/u1;

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/u1;->b(I)V

    iget-object v5, v2, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v5, v5, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/u1;

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/u1;->b(I)V

    monitor-exit v2

    goto :goto_105

    :cond_fc
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "unknownFields == null"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_21 .. :try_end_105} :catchall_122

    :goto_105
    iget-object v2, v0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    invoke-virtual {v2}, Lcom/tapjoy/internal/d3;->m()V

    sget-object v2, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string v3, "bootup"

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/tapjoy/internal/i5;->c:J

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    sget-object v0, Lcom/tapjoy/internal/a3;->c:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n2;->notifyObservers()V

    const/4 v0, 0x1

    goto :goto_126

    :catchall_122
    move-exception v0

    :try_start_123
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    throw v0

    :cond_125
    const/4 v0, 0x0

    :goto_126
    if-eqz v0, :cond_13a

    iget-object v0, v1, Lcom/tapjoy/internal/v1;->d:Lcom/tapjoy/internal/i1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/i1;->a()V

    sget-object v0, Lcom/tapjoy/internal/m2;->a:Lcom/tapjoy/internal/m2;

    iget-object v2, v0, Lcom/tapjoy/internal/m2;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/tapjoy/internal/d1;

    invoke-direct {v3, v0}, Lcom/tapjoy/internal/d1;-><init>(Lcom/tapjoy/internal/m2;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v4

    :cond_13a
    const/4 v0, 0x0

    return v0
.end method
