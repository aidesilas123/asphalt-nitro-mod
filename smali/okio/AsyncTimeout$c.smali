###### Class okio.AsyncTimeout.c (okio.AsyncTimeout$c)
.class public final Lokio/AsyncTimeout$c;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->o(Lokio/y;)Lokio/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/AsyncTimeout;

.field final synthetic b:Lokio/y;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/y;)V
    .registers 3

    iput-object p1, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_7
    invoke-interface {v1}, Lokio/y;->close()V

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

    iget-object v0, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/AsyncTimeout$c;->a:Lokio/AsyncTimeout;

    iget-object v1, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V

    :try_start_c
    invoke-interface {v1, p1, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_1f
    .catchall {:try_start_c .. :try_end_10} :catchall_1d

    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result p3

    if-nez p3, :cond_17

    return-wide p1

    :cond_17
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_1d
    move-exception p1

    goto :goto_2c

    :catch_1f
    move-exception p1

    :try_start_20
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {v0, p1}, Lokio/AsyncTimeout;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_2b
    throw p1
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_1d

    :goto_2c
    invoke-virtual {v0}, Lokio/AsyncTimeout;->k()Z

    move-result p2

    throw p1
.end method

.method public bridge synthetic timeout()Lokio/z;
    .registers 2

    invoke-virtual {p0}, Lokio/AsyncTimeout$c;->d()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$c;->b:Lokio/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
