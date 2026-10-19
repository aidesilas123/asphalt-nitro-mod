###### Class okhttp3.internal.cache.CacheStrategy.b (okhttp3.internal.cache.b$b)
.class public final Lokhttp3/internal/cache/b$b;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheStrategy$Factory;",
        "",
        "nowMillis",
        "",
        "request",
        "Lokhttp3/Request;",
        "cacheResponse",
        "Lokhttp3/Response;",
        "(JLokhttp3/Request;Lokhttp3/Response;)V",
        "ageSeconds",
        "",
        "etag",
        "",
        "expires",
        "Ljava/util/Date;",
        "lastModified",
        "lastModifiedString",
        "receivedResponseMillis",
        "getRequest$okhttp",
        "()Lokhttp3/Request;",
        "sentRequestMillis",
        "servedDate",
        "servedDateString",
        "cacheResponseAge",
        "compute",
        "Lokhttp3/internal/cache/CacheStrategy;",
        "computeCandidate",
        "computeFreshnessLifetime",
        "hasConditions",
        "",
        "isFreshnessLifetimeHeuristic",
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
.field private final a:J

.field private final b:Lokhttp3/Request;

.field private final c:Lokhttp3/Response;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .registers 9

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokhttp3/internal/cache/b$b;->a:J

    iput-object p3, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    iput-object p4, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    const/4 p1, -0x1

    iput p1, p0, Lokhttp3/internal/cache/b$b;->l:I

    if-eqz p4, :cond_81

    invoke-virtual {p4}, Lokhttp3/Response;->v()J

    move-result-wide p2

    iput-wide p2, p0, Lokhttp3/internal/cache/b$b;->i:J

    invoke-virtual {p4}, Lokhttp3/Response;->t()J

    move-result-wide p2

    iput-wide p2, p0, Lokhttp3/internal/cache/b$b;->j:J

    invoke-virtual {p4}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result p4

    :goto_28
    if-ge p3, p4, :cond_81

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p2, p3}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Date"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {p3}, Lokhttp3/internal/http/DatesKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/cache/b$b;->d:Ljava/util/Date;

    iput-object p3, p0, Lokhttp3/internal/cache/b$b;->e:Ljava/lang/String;

    goto :goto_7f

    :cond_46
    const-string v2, "Expires"

    invoke-static {v1, v2, v3}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-static {p3}, Lokhttp3/internal/http/DatesKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    iput-object p3, p0, Lokhttp3/internal/cache/b$b;->h:Ljava/util/Date;

    goto :goto_7f

    :cond_55
    const-string v2, "Last-Modified"

    invoke-static {v1, v2, v3}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {p3}, Lokhttp3/internal/http/DatesKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/cache/b$b;->f:Ljava/util/Date;

    iput-object p3, p0, Lokhttp3/internal/cache/b$b;->g:Ljava/lang/String;

    goto :goto_7f

    :cond_66
    const-string v2, "ETag"

    invoke-static {v1, v2, v3}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_71

    iput-object p3, p0, Lokhttp3/internal/cache/b$b;->k:Ljava/lang/String;

    goto :goto_7f

    :cond_71
    const-string v2, "Age"

    invoke-static {v1, v2, v3}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static {p3, p1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lokhttp3/internal/cache/b$b;->l:I

    :cond_7f
    :goto_7f
    move p3, v0

    goto :goto_28

    :cond_81
    return-void
.end method

.method private final a()J
    .registers 10

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    iget-wide v3, p0, Lokhttp3/internal/cache/b$b;->j:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_11
    iget v0, p0, Lokhttp3/internal/cache/b$b;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_21

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_21
    iget-wide v3, p0, Lokhttp3/internal/cache/b$b;->j:J

    iget-wide v5, p0, Lokhttp3/internal/cache/b$b;->i:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lokhttp3/internal/cache/b$b;->a:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private final c()Lokhttp3/internal/cache/b;
    .registers 14

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    new-instance v0, Lokhttp3/internal/cache/b;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    :cond_d
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->g()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->j()Lokhttp3/Handshake;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lokhttp3/internal/cache/b;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    :cond_25
    sget-object v0, Lokhttp3/internal/cache/b;->a:Lokhttp3/internal/cache/b$a;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    iget-object v3, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/cache/b$a;->a(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Lokhttp3/internal/cache/b;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    :cond_39
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->b()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->h()Z

    move-result v2

    if-nez v2, :cond_120

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-direct {p0, v2}, Lokhttp3/internal/cache/b$b;->e(Lokhttp3/Request;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto/16 :goto_120

    :cond_4f
    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->e()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-direct {p0}, Lokhttp3/internal/cache/b$b;->a()J

    move-result-wide v3

    invoke-direct {p0}, Lokhttp3/internal/cache/b$b;->d()J

    move-result-wide v5

    invoke-virtual {v0}, Lokhttp3/CacheControl;->d()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_73

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->d()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_73
    invoke-virtual {v0}, Lokhttp3/CacheControl;->f()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_87

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->f()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_88

    :cond_87
    move-wide v11, v9

    :goto_88
    invoke-virtual {v2}, Lokhttp3/CacheControl;->g()Z

    move-result v7

    if-nez v7, :cond_9f

    invoke-virtual {v0}, Lokhttp3/CacheControl;->e()I

    move-result v7

    if-eq v7, v8, :cond_9f

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->e()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_9f
    invoke-virtual {v2}, Lokhttp3/CacheControl;->h()Z

    move-result v0

    if-nez v0, :cond_d8

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_d8

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_bc

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v2, v5}, Lokhttp3/Response$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$a;

    :cond_bc
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_ce

    invoke-direct {p0}, Lokhttp3/internal/cache/b$b;->f()Z

    move-result v3

    if-eqz v3, :cond_ce

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$a;

    :cond_ce
    new-instance v2, Lokhttp3/internal/cache/b;

    invoke-virtual {v0}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v2

    :cond_d8
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->k:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_e1

    const-string v2, "If-None-Match"

    goto :goto_ee

    :cond_e1
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->g:Ljava/lang/String;

    goto :goto_ee

    :cond_e8
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->d:Ljava/util/Date;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->e:Ljava/lang/String;

    :goto_ee
    iget-object v1, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->f()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->e()Lokhttp3/Headers$a;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Lokhttp3/Headers$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$a;

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->i()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->g(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/cache/b;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-direct {v1, v0, v2}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v1

    :cond_118
    new-instance v0, Lokhttp3/internal/cache/b;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    :cond_120
    :goto_120
    new-instance v0, Lokhttp3/internal/cache/b;

    iget-object v2, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0
.end method

.method private final d()J
    .registers 7

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Response;->e()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->d()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->h:Ljava/util/Date;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_44

    iget-object v4, p0, Lokhttp3/internal/cache/b$b;->d:Ljava/util/Date;

    if-nez v4, :cond_28

    goto :goto_30

    :cond_28
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_30
    if-nez v1, :cond_35

    iget-wide v4, p0, Lokhttp3/internal/cache/b$b;->j:J

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_39
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_43

    move-wide v2, v0

    :cond_43
    return-wide v2

    :cond_44
    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_81

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->d:Ljava/util/Date;

    if-nez v0, :cond_5d

    goto :goto_65

    :cond_5d
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_65
    if-nez v1, :cond_6a

    iget-wide v0, p0, Lokhttp3/internal/cache/b$b;->i:J

    goto :goto_6e

    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_6e
    iget-object v4, p0, Lokhttp3/internal/cache/b$b;->f:Ljava/util/Date;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_81

    const/16 v2, 0xa

    int-to-long v2, v2

    div-long v2, v0, v2

    :cond_81
    return-wide v2
.end method

.method private final e(Lokhttp3/Request;)Z
    .registers 3

    const-string v0, "If-Modified-Since"

    invoke-virtual {p1, v0}, Lokhttp3/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p1, v0}, Lokhttp3/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private final f()Z
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->c:Lokhttp3/Response;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Response;->e()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lokhttp3/internal/cache/b$b;->h:Ljava/util/Date;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method public final b()Lokhttp3/internal/cache/b;
    .registers 3

    invoke-direct {p0}, Lokhttp3/internal/cache/b$b;->c()Lokhttp3/internal/cache/b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/b;->b()Lokhttp3/Request;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lokhttp3/internal/cache/b$b;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->b()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->k()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Lokhttp3/internal/cache/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :cond_1c
    return-object v0
.end method
