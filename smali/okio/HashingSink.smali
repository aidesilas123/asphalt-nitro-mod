###### Class okio.HashingSink (okio.HashingSink)
.class public final Lokio/HashingSink;
.super Lokio/i;
.source "HashingSink.kt"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSink$a;
    }
.end annotation


# static fields
.field public static final b:Lokio/HashingSink$a;


# instance fields
.field private final c:Ljava/security/MessageDigest;

.field private final d:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/HashingSink$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/HashingSink$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    return-void
.end method

.method public constructor <init>(Lokio/w;Ljava/lang/String;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    const-string v0, "getInstance(algorithm)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lokio/HashingSink;-><init>(Lokio/w;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Lokio/w;Ljava/security/MessageDigest;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/i;-><init>(Lokio/w;)V

    iput-object p2, p0, Lokio/HashingSink;->c:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-object p1, p0, Lokio/HashingSink;->d:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lokio/w;Ljavax/crypto/Mac;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mac"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/i;-><init>(Lokio/w;)V

    iput-object p2, p0, Lokio/HashingSink;->d:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    iput-object p1, p0, Lokio/HashingSink;->c:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>(Lokio/w;Lokio/ByteString;Ljava/lang/String;)V
    .registers 6

    const-string v0, "sink"

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

    invoke-direct {p0, p1, v0}, Lokio/HashingSink;-><init>(Lokio/w;Ljavax/crypto/Mac;)V

    return-void

    :catch_2a
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final hmacSha1(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;
    .registers 3

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0, p1}, Lokio/HashingSink$a;->a(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final hmacSha256(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;
    .registers 3

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0, p1}, Lokio/HashingSink$a;->b(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final hmacSha512(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;
    .registers 3

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0, p1}, Lokio/HashingSink$a;->c(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final md5(Lokio/w;)Lokio/HashingSink;
    .registers 2

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0}, Lokio/HashingSink$a;->d(Lokio/w;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final sha1(Lokio/w;)Lokio/HashingSink;
    .registers 2

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0}, Lokio/HashingSink$a;->e(Lokio/w;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final sha256(Lokio/w;)Lokio/HashingSink;
    .registers 2

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0}, Lokio/HashingSink$a;->f(Lokio/w;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method

.method public static final sha512(Lokio/w;)Lokio/HashingSink;
    .registers 2

    sget-object v0, Lokio/HashingSink;->b:Lokio/HashingSink$a;

    invoke-virtual {v0, p0}, Lokio/HashingSink$a;->g(Lokio/w;)Lokio/HashingSink;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public n(Lokio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    :goto_16
    cmp-long v3, v1, p2

    if-gez v3, :cond_47

    sub-long v3, p2, v1

    iget v5, v0, Lokio/u;->d:I

    iget v6, v0, Lokio/u;->c:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lokio/HashingSink;->c:Ljava/security/MessageDigest;

    if-eqz v3, :cond_33

    iget-object v5, v0, Lokio/u;->b:[B

    iget v6, v0, Lokio/u;->c:I

    invoke-virtual {v3, v5, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3f

    :cond_33
    iget-object v3, p0, Lokio/HashingSink;->d:Ljavax/crypto/Mac;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Lokio/u;->b:[B

    iget v6, v0, Lokio/u;->c:I

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Mac;->update([BII)V

    :goto_3f
    int-to-long v3, v4

    add-long/2addr v1, v3

    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_16

    :cond_47
    invoke-super {p0, p1, p2, p3}, Lokio/i;->n(Lokio/Buffer;J)V

    return-void
.end method

###### Class okio.HashingSink.a (okio.HashingSink$a)
.class public final Lokio/HashingSink$a;
.super Ljava/lang/Object;
.source "HashingSink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/HashingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokio/HashingSink$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, p2, v1}, Lokio/HashingSink;-><init>(Lokio/w;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p1, p2, v1}, Lokio/HashingSink;-><init>(Lokio/w;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lokio/w;Lokio/ByteString;)Lokio/HashingSink;
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p1, p2, v1}, Lokio/HashingSink;-><init>(Lokio/w;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lokio/w;)Lokio/HashingSink;
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lokio/w;)Lokio/HashingSink;
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(Lokio/w;)Lokio/HashingSink;
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Lokio/w;)Lokio/HashingSink;
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method
