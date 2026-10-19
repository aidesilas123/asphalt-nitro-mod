###### Class com.tapjoy.internal.i5 (com.tapjoy.internal.i5)
.class public final Lcom/tapjoy/internal/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/d3;

.field public final b:Lcom/tapjoy/internal/r4;

.field public c:J


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/d3;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/r4;

    invoke-direct {v0}, Lcom/tapjoy/internal/r4;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/i5;->b:Lcom/tapjoy/internal/r4;

    iput-object p1, p0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d3;->b()Lcom/tapjoy/internal/y;

    new-instance v0, Lcom/tapjoy/internal/d4;

    invoke-direct {v0}, Lcom/tapjoy/internal/d4;-><init>()V

    sget-object v1, Lcom/tapjoy/internal/d3;->a:Lcom/tapjoy/internal/d3;

    iput-object p1, v0, Lcom/tapjoy/internal/d4;->c:Lcom/tapjoy/internal/r1;

    iput-object p2, v0, Lcom/tapjoy/internal/d4;->d:Ljava/lang/String;

    sget-boolean p1, Lcom/tapjoy/internal/na;->a:Z

    if-eqz p1, :cond_22

    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/d4;->e:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_2f

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/d4;->e:Ljava/lang/Long;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :goto_2f
    return-object v0
.end method

.method public final declared-synchronized b(Lcom/tapjoy/internal/d4;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/tapjoy/internal/d4;->c:Lcom/tapjoy/internal/r1;

    sget-object v1, Lcom/tapjoy/internal/r1;->d:Lcom/tapjoy/internal/r1;

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Lcom/tapjoy/internal/i5;->b:Lcom/tapjoy/internal/r4;

    iget-object v1, v0, Lcom/tapjoy/internal/r4;->c:Lcom/tapjoy/internal/r1;

    if-eqz v1, :cond_38

    iget-object v2, v0, Lcom/tapjoy/internal/r4;->d:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Lcom/tapjoy/internal/l5;->a()Lcom/tapjoy/internal/c1;

    move-result-object v0

    if-eqz v0, :cond_18

    goto :goto_38

    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "unknownFields == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    const-string v1, "name"

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/tapjoy/internal/i3;->a([Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/tapjoy/internal/i5;->b:Lcom/tapjoy/internal/r4;

    iget-object v1, p1, Lcom/tapjoy/internal/d4;->c:Lcom/tapjoy/internal/r1;

    iput-object v1, v0, Lcom/tapjoy/internal/r4;->c:Lcom/tapjoy/internal/r1;

    iget-object p1, p1, Lcom/tapjoy/internal/d4;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/tapjoy/internal/r4;->d:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object p1, p0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    invoke-virtual {p1, p2, p3, p4}, Lcom/tapjoy/internal/d3;->g(Ljava/lang/String;D)V

    sget-object p1, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string p2, "purchase"

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object p1

    sget-object p2, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    const-string p5, "unknownFields == null"

    invoke-static {p2, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    iget-object p2, p0, Lcom/tapjoy/internal/i5;->a:Lcom/tapjoy/internal/d3;

    iget-object p1, p1, Lcom/tapjoy/internal/d4;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-virtual {p2, p5, p6, p3, p4}, Lcom/tapjoy/internal/d3;->c(JD)V

    return-void
.end method
