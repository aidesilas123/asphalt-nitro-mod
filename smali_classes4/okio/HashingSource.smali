###### Class okio.HashingSource (okio.HashingSource)
.class public final Lokio/HashingSource;
.super Lokio/j;
.source "HashingSource.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSource$a;
    }
.end annotation


# static fields
.field public static final a:Lokio/HashingSource$a;


# instance fields
.field private final b:Ljava/security/MessageDigest;

.field private final c:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/HashingSource$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/HashingSource$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    return-void
.end method

.method public constructor <init>(Lokio/y;Ljava/lang/String;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    const-string v0, "getInstance(algorithm)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lokio/HashingSource;-><init>(Lokio/y;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Lokio/y;Ljava/security/MessageDigest;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    iput-object p2, p0, Lokio/HashingSource;->b:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-object p1, p0, Lokio/HashingSource;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lokio/y;Ljavax/crypto/Mac;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mac"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    iput-object p2, p0, Lokio/HashingSource;->c:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    iput-object p1, p0, Lokio/HashingSource;->b:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>(Lokio/y;Lokio/ByteString;Ljava/lang/String;)V
    .registers 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->J()[B

    move-result-object p2

    invoke-direct {v1, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_21
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_21} :catch_2a

    const-string p2, "try {\n      Mac.getInsta\u2026rgumentException(e)\n    }"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lokio/HashingSource;-><init>(Lokio/y;Ljavax/crypto/Mac;)V

    return-void

    :catch_2a
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final hmacSha1(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;
    .registers 3

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0, p1}, Lokio/HashingSource$a;->a(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hmacSha256(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;
    .registers 3

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0, p1}, Lokio/HashingSource$a;->b(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final hmacSha512(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;
    .registers 3

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0, p1}, Lokio/HashingSource$a;->c(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final md5(Lokio/y;)Lokio/HashingSource;
    .registers 2

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0}, Lokio/HashingSource$a;->d(Lokio/y;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final sha1(Lokio/y;)Lokio/HashingSource;
    .registers 2

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0}, Lokio/HashingSource$a;->e(Lokio/y;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final sha256(Lokio/y;)Lokio/HashingSource;
    .registers 2

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0}, Lokio/HashingSource$a;->f(Lokio/y;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method

.method public static final sha512(Lokio/y;)Lokio/HashingSource;
    .registers 2

    sget-object v0, Lokio/HashingSource;->a:Lokio/HashingSource$a;

    invoke-virtual {v0, p0}, Lokio/HashingSource$a;->g(Lokio/y;)Lokio/HashingSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokio/j;->read(Lokio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_64

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v2

    iget-object v4, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1d
    cmp-long v5, v2, v0

    if-lez v5, :cond_2e

    iget-object v4, v4, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/u;->d:I

    iget v6, v4, Lokio/u;->c:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    goto :goto_1d

    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_64

    iget v5, v4, Lokio/u;->c:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    sub-long/2addr v5, v2

    long-to-int v0, v5

    iget-object v1, p0, Lokio/HashingSource;->b:Ljava/security/MessageDigest;

    if-eqz v1, :cond_49

    iget-object v5, v4, Lokio/u;->b:[B

    iget v6, v4, Lokio/u;->d:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_56

    :cond_49
    iget-object v1, p0, Lokio/HashingSource;->c:Ljavax/crypto/Mac;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v4, Lokio/u;->b:[B

    iget v6, v4, Lokio/u;->d:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljavax/crypto/Mac;->update([BII)V

    :goto_56
    iget v0, v4, Lokio/u;->d:I

    iget v1, v4, Lokio/u;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_2e

    :cond_64
    return-wide p2
.end method
