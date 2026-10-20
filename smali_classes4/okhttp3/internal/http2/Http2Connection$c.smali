###### Class okhttp3.internal.http2.Http2Connection.c (okhttp3.internal.http2.Http2Connection$c)
.class public final Lokhttp3/internal/http2/Http2Connection$c;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$c;
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/Http2Reader$c;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0003H\u0016J8\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000cH\u0016J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0010H\u0016J.\u0010$\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000c2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\t\u0010)\u001a\u00020\u0003H\u0096\u0002J \u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000cH\u0016J(\u0010.\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u0017H\u0016J&\u00102\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u000c2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u00106\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u00068"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/Function0;",
        "",
        "reader",
        "Lokhttp3/internal/http2/Http2Reader;",
        "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V",
        "getReader$okhttp",
        "()Lokhttp3/internal/http2/Http2Reader;",
        "ackSettings",
        "alternateService",
        "streamId",
        "",
        "origin",
        "",
        "protocol",
        "Lokio/ByteString;",
        "host",
        "port",
        "maxAge",
        "",
        "applyAndAckSettings",
        "clearPrevious",
        "",
        "settings",
        "Lokhttp3/internal/http2/Settings;",
        "data",
        "inFinished",
        "source",
        "Lokio/BufferedSource;",
        "length",
        "goAway",
        "lastGoodStreamId",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "debugData",
        "headers",
        "associatedStreamId",
        "headerBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "invoke",
        "ping",
        "ack",
        "payload1",
        "payload2",
        "priority",
        "streamDependency",
        "weight",
        "exclusive",
        "pushPromise",
        "promisedStreamId",
        "requestHeaders",
        "rstStream",
        "windowUpdate",
        "windowSizeIncrement",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic b:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Reader;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$c;->a:Lokhttp3/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public a(ZLokhttp3/internal/http2/h;)V
    .registers 12

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, " applyAndAckSettings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$c$d;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Connection$c$d;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection$c;ZLokhttp3/internal/http2/h;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/concurrent/TaskQueue;->i(Lokhttp3/internal/concurrent/a;J)V

    return-void
.end method

.method public ackSettings()V
    .registers 1

    return-void
.end method

.method public c(ZILokio/e;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->I(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->u(ILokio/e;IZ)V

    return-void

    :cond_13
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->l(I)Lokhttp3/internal/http2/d;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/Http2Connection;->Z(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->U(J)V

    invoke-interface {p3, v0, v1}, Lokio/e;->skip(J)V

    return-void

    :cond_2c
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/d;->w(Lokio/e;I)V

    if-eqz p1, :cond_37

    sget-object p1, Lokhttp3/internal/Util;->b:Lokhttp3/Headers;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/d;->x(Lokhttp3/Headers;Z)V

    :cond_37
    return-void
.end method

.method public d(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 4

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->I(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->x(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_13
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->J(I)Lokhttp3/internal/http2/d;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/d;->y(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_1f
    return-void
.end method

.method public e(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .registers 7

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lokio/ByteString;->F()I

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p2

    :try_start_10
    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->m()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lokhttp3/internal/http2/d;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4d

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lokhttp3/internal/http2/Http2Connection;->access$setShutdown$p(Lokhttp3/internal/http2/Http2Connection;Z)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_55

    monitor-exit p2

    check-cast p3, [Lokhttp3/internal/http2/d;

    array-length p2, p3

    :cond_2b
    :goto_2b
    if-ge v0, p2, :cond_4c

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lokhttp3/internal/http2/d;->j()I

    move-result v2

    if-le v2, p1, :cond_2b

    invoke-virtual {v1}, Lokhttp3/internal/http2/d;->t()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->i:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/d;->y(Lokhttp3/internal/http2/ErrorCode;)V

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/d;->j()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->J(I)Lokhttp3/internal/http2/d;

    goto :goto_2b

    :cond_4c
    return-void

    :cond_4d
    :try_start_4d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final f(ZLokhttp3/internal/http2/h;)V
    .registers 14

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/l0;

    invoke-direct {v0}, Lkotlin/jvm/internal/l0;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->q()Lokhttp3/internal/http2/e;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    :try_start_13
    monitor-enter v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_b0

    :try_start_14
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->j()Lokhttp3/internal/http2/h;

    move-result-object v3

    if-eqz p1, :cond_1b

    goto :goto_27

    :cond_1b
    new-instance p1, Lokhttp3/internal/http2/h;

    invoke-direct {p1}, Lokhttp3/internal/http2/h;-><init>()V

    invoke-virtual {p1, v3}, Lokhttp3/internal/http2/h;->g(Lokhttp3/internal/http2/h;)V

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/h;->g(Lokhttp3/internal/http2/h;)V

    move-object p2, p1

    :goto_27
    iput-object p2, v0, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast p2, Lokhttp3/internal/http2/h;

    invoke-virtual {p2}, Lokhttp3/internal/http2/h;->c()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->c()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr p1, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-eqz v6, :cond_63

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->m()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_63

    :cond_48
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->m()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v3, [Lokhttp3/internal/http2/d;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5b

    check-cast v6, [Lokhttp3/internal/http2/d;

    goto :goto_64

    :cond_5b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    :goto_63
    const/4 v6, 0x0

    :goto_64
    iget-object v7, v0, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast v7, Lokhttp3/internal/http2/h;

    invoke-virtual {v2, v7}, Lokhttp3/internal/http2/Http2Connection;->N(Lokhttp3/internal/http2/h;)V

    invoke-static {v2}, Lokhttp3/internal/http2/Http2Connection;->access$getSettingsListenerQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v7

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->e()Ljava/lang/String;

    move-result-object v8

    const-string v9, " onSettings"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lokhttp3/internal/http2/Http2Connection$c$a;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v10, v2, v0}, Lokhttp3/internal/http2/Http2Connection$c$a;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;Lkotlin/jvm/internal/l0;)V

    invoke-virtual {v7, v9, v4, v5}, Lokhttp3/internal/concurrent/TaskQueue;->i(Lokhttp3/internal/concurrent/a;J)V

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;
    :try_end_84
    .catchall {:try_start_14 .. :try_end_84} :catchall_ad

    :try_start_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_b0

    :try_start_85
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->q()Lokhttp3/internal/http2/e;

    move-result-object v4

    iget-object v0, v0, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/h;

    invoke-virtual {v4, v0}, Lokhttp3/internal/http2/e;->a(Lokhttp3/internal/http2/h;)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_90} :catch_91
    .catchall {:try_start_85 .. :try_end_90} :catchall_b0

    goto :goto_95

    :catch_91
    move-exception v0

    :try_start_92
    invoke-static {v2, v0}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    :goto_95
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_b0

    monitor-exit v1

    if-eqz v6, :cond_ac

    array-length v0, v6

    :goto_9b
    if-ge v3, v0, :cond_ac

    aget-object v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    monitor-enter v1

    :try_start_a2
    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/d;->a(J)V

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_a9

    monitor-exit v1

    goto :goto_9b

    :catchall_a9
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_ac
    return-void

    :catchall_ad
    move-exception p1

    :try_start_ae
    monitor-exit v2

    throw p1
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public h()V
    .registers 6

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->d:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$c;->a:Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/Http2Reader;->b(Lokhttp3/internal/http2/Http2Reader$c;)V

    :goto_8
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$c;->a:Lokhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Reader$c;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->b:Lokhttp3/internal/http2/ErrorCode;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_21
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    :try_start_14
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->j:Lokhttp3/internal/http2/ErrorCode;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_16} :catch_1c
    .catchall {:try_start_14 .. :try_end_16} :catchall_30

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_2a

    :catch_1c
    move-exception v1

    goto :goto_23

    :catchall_1e
    move-exception v3

    move-object v2, v0

    goto :goto_31

    :catch_21
    move-exception v1

    move-object v2, v0

    :goto_23
    :try_start_23
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->c:Lokhttp3/internal/http2/ErrorCode;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_30

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_2a
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->a:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_30
    move-exception v3

    :goto_31
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->a:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public headers(ZIILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    const-string p3, "headerBlock"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->I(I)Z

    move-result p3

    if-eqz p3, :cond_13

    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->v(ILjava/util/List;Z)V

    return-void

    :cond_13
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p3

    :try_start_16
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->l(I)Lokhttp3/internal/http2/d;

    move-result-object v0

    if-nez v0, :cond_86

    invoke-static {p3}, Lokhttp3/internal/http2/Http2Connection;->access$isShutdown$p(Lokhttp3/internal/http2/Http2Connection;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_91

    if-eqz v0, :cond_24

    monitor-exit p3

    return-void

    :cond_24
    :try_start_24
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->f()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_91

    if-gt p2, v0, :cond_2c

    monitor-exit p3

    return-void

    :cond_2c
    :try_start_2c
    rem-int/lit8 v0, p2, 0x2

    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->h()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_91

    if-ne v0, v1, :cond_38

    monitor-exit p3

    return-void

    :cond_38
    :try_start_38
    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v5

    new-instance p4, Lokhttp3/internal/http2/d;

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p2

    move-object v2, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/d;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->L(I)V

    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->m()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lokhttp3/internal/http2/Http2Connection;->access$getTaskRunner$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskRunner;->g()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onStream"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    new-instance v3, Lokhttp3/internal/http2/Http2Connection$c$b;

    invoke-direct {v3, p2, v2, p3, p4}, Lokhttp3/internal/http2/Http2Connection$c$b;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/d;)V

    invoke-virtual {p1, v3, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->i(Lokhttp3/internal/concurrent/a;J)V
    :try_end_84
    .catchall {:try_start_38 .. :try_end_84} :catchall_91

    monitor-exit p3

    return-void

    :cond_86
    :try_start_86
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_91

    monitor-exit p3

    invoke-static {p4}, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/http2/d;->x(Lokhttp3/Headers;Z)V

    return-void

    :catchall_91
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$c;->h()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public ping(ZII)V
    .registers 13

    if-eqz p1, :cond_35

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_28

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1f

    const/4 p3, 0x3

    if-eq p2, p3, :cond_13

    :goto_10
    :try_start_10
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_30

    :cond_13
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getAwaitPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->access$setAwaitPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_10

    :cond_1f
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getDegradedPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->access$setDegradedPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V

    goto :goto_30

    :cond_28
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->access$setIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;J)V
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_32

    :goto_30
    monitor-exit p1

    goto :goto_57

    :catchall_32
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_35
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->access$getWriterQueue$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ping"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    new-instance v8, Lokhttp3/internal/http2/Http2Connection$c$c;

    move-object v2, v8

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Connection$c$c;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;II)V

    invoke-virtual {p1, v8, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->i(Lokhttp3/internal/concurrent/a;J)V

    :goto_57
    return-void
.end method

.method public priority(IIIZ)V
    .registers 5

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->w(ILjava/util/List;)V

    return-void
.end method

.method public windowUpdate(IJ)V
    .registers 6

    if-nez p1, :cond_17

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->o()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->access$setWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;J)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    monitor-exit p1

    goto :goto_2a

    :catchall_14
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_17
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$c;->b:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->l(I)Lokhttp3/internal/http2/d;

    move-result-object p1

    if-eqz p1, :cond_2a

    monitor-enter p1

    :try_start_20
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/d;->a(J)V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27

    monitor-exit p1

    goto :goto_2a

    :catchall_27
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2a
    :goto_2a
    return-void
.end method
