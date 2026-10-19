###### Class okio.FileHandle.b (okio.FileHandle$b)
.class final Lokio/FileHandle$b;
.super Ljava/lang/Object;
.source "FileHandle.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/FileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lokio/FileHandle;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .registers 5

    const-string v0, "fileHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/FileHandle$b;->a:Lokio/FileHandle;

    iput-wide p2, p0, Lokio/FileHandle$b;->b:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lokio/FileHandle$b;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/FileHandle$b;->c:Z

    iget-object v0, p0, Lokio/FileHandle$b;->a:Lokio/FileHandle;

    monitor-enter v0

    :try_start_b
    invoke-virtual {p0}, Lokio/FileHandle$b;->d()Lokio/FileHandle;

    move-result-object v1

    invoke-static {v1}, Lokio/FileHandle;->access$getOpenStreamCount$p(Lokio/FileHandle;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lokio/FileHandle;->access$setOpenStreamCount$p(Lokio/FileHandle;I)V

    invoke-virtual {p0}, Lokio/FileHandle$b;->d()Lokio/FileHandle;

    move-result-object v1

    invoke-static {v1}, Lokio/FileHandle;->access$getOpenStreamCount$p(Lokio/FileHandle;)I

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Lokio/FileHandle$b;->d()Lokio/FileHandle;

    move-result-object v1

    invoke-static {v1}, Lokio/FileHandle;->access$getClosed$p(Lokio/FileHandle;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_36

    :cond_2d
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_38

    monitor-exit v0

    iget-object v0, p0, Lokio/FileHandle$b;->a:Lokio/FileHandle;

    invoke-virtual {v0}, Lokio/FileHandle;->d()V

    return-void

    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()Lokio/FileHandle;
    .registers 2

    iget-object v0, p0, Lokio/FileHandle$b;->a:Lokio/FileHandle;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/FileHandle$b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-object v1, p0, Lokio/FileHandle$b;->a:Lokio/FileHandle;

    iget-wide v2, p0, Lokio/FileHandle$b;->b:J

    move-object v4, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/FileHandle;->access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_20

    iget-wide v0, p0, Lokio/FileHandle$b;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokio/FileHandle$b;->b:J

    :cond_20
    return-wide p1

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/z;
    .registers 2

    sget-object v0, Lokio/z;->b:Lokio/z;

    return-object v0
.end method
