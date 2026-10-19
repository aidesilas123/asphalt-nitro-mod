###### Class com.tapjoy.internal.f8 (com.tapjoy.internal.f8)
.class public abstract Lcom/tapjoy/internal/f8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tapjoy/internal/k0;)Ljava/lang/Object;
.end method

.method public final b(Ljava/net/URI;Ljava/io/ByteArrayInputStream;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    if-nez v0, :cond_8

    sget-object v0, Lcom/tapjoy/internal/k0;->b:Lcom/tapjoy/internal/z;

    sput-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    :cond_8
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p2, Lcom/tapjoy/internal/k0;

    invoke-direct {p2, v0}, Lcom/tapjoy/internal/k0;-><init>(Ljava/io/Reader;)V

    iget-object v0, p2, Lcom/tapjoy/internal/b4;->a:Ljava/util/HashMap;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/tapjoy/internal/b4;->a:Ljava/util/HashMap;

    :cond_23
    iget-object v0, p2, Lcom/tapjoy/internal/b4;->a:Ljava/util/HashMap;

    const-string v1, "BASE_URI"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x3

    :try_start_2c
    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_31
    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->e()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->k()I

    move-result p1

    goto :goto_31

    :cond_48
    const-string v3, "message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_55
    const-string v3, "data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/f8;->a(Lcom/tapjoy/internal/k0;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_31

    :cond_62
    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->u()V

    goto :goto_31

    :cond_66
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/tapjoy/internal/k0;->I(I)V
    :try_end_6a
    .catchall {:try_start_2c .. :try_end_6a} :catchall_78

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_72

    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->close()V

    return-object v0

    :cond_72
    :try_start_72
    new-instance p1, Lcom/tapjoy/internal/q2;

    invoke-direct {p1, v1}, Lcom/tapjoy/internal/q2;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p1

    invoke-virtual {p2}, Lcom/tapjoy/internal/k0;->close()V

    throw p1
.end method

.method public final declared-synchronized c(Lcom/tapjoy/internal/n7;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/f8;->d()Z

    move-result p1

    const-string v0, "Call has not completed"

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
