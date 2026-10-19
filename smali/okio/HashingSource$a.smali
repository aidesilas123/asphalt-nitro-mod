###### Class okio.HashingSource.a (okio.HashingSource$a)
.class public final Lokio/HashingSource$a;
.super Ljava/lang/Object;
.source "HashingSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/HashingSource;
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

    invoke-direct {p0}, Lokio/HashingSource$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, p2, v1}, Lokio/HashingSource;-><init>(Lokio/y;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p1, p2, v1}, Lokio/HashingSource;-><init>(Lokio/y;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lokio/y;Lokio/ByteString;)Lokio/HashingSource;
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p1, p2, v1}, Lokio/HashingSource;-><init>(Lokio/y;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lokio/y;)Lokio/HashingSource;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/y;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lokio/y;)Lokio/HashingSource;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/y;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(Lokio/y;)Lokio/HashingSource;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/y;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Lokio/y;)Lokio/HashingSource;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-512"

    invoke-direct {v0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/y;Ljava/lang/String;)V

    return-object v0
.end method
