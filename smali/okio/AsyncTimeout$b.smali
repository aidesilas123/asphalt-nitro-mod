###### Class okio.AsyncTimeout.b (okio.AsyncTimeout$b)
.class public final Lokio/AsyncTimeout$b;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->n(Lokio/w;)Lokio/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/AsyncTimeout;

.field final synthetic b:Lokio/w;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/w;)V
    .registers 3

    iput-object p1, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_7
    invoke-interface {v1}, Lokio/w;->close()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1b
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_19
    move-exception v1

    goto :goto_28

    :catch_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_27
    throw v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    :goto_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v0

    throw v1
.end method

.method public d()Lokio/AsyncTimeout;
    .registers 2

    iget-object v0, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_7
    invoke-interface {v1}, Lokio/w;->flush()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1b
    .catchall {:try_start_7 .. :try_end_c} :catchall_19

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_19
    move-exception v1

    goto :goto_28

    :catch_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_27
    throw v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    :goto_28
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result v0

    throw v1
.end method

.method public n(Lokio/Buffer;J)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_62

    iget-object v2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1a
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_34

    iget v3, v2, Lokio/u;->d:I

    iget v4, v2, Lokio/u;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_2e

    move-wide v0, p2

    goto :goto_34

    :cond_2e
    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_34
    :goto_34
    iget-object v2, p0, Lokio/AsyncTimeout$b;->a:Lokio/AsyncTimeout;

    iget-object v3, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->j()V

    :try_start_3b
    invoke-interface {v3, p1, v0, v1}, Lokio/w;->n(Lokio/Buffer;J)V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_50
    .catchall {:try_start_3b .. :try_end_40} :catchall_4e

    invoke-virtual {v2}, Lokio/AsyncTimeout;->k()Z

    move-result v3

    if-nez v3, :cond_48

    sub-long/2addr p2, v0

    goto :goto_f

    :cond_48
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_4e
    move-exception p1

    goto :goto_5d

    :catch_50
    move-exception p1

    :try_start_51
    invoke-virtual {v2}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    if-nez p2, :cond_58

    goto :goto_5c

    :cond_58
    invoke-virtual {v2, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_5c
    throw p1
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_4e

    :goto_5d
    invoke-virtual {v2}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    throw p1

    :cond_62
    return-void
.end method

.method public bridge synthetic timeout()Lokio/z;
    .registers 2

    invoke-virtual {p0}, Lokio/AsyncTimeout$b;->d()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$b;->b:Lokio/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
