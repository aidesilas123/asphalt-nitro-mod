###### Class com.google.common.hash.s (com.google.common.hash.s)
.class final Lcom/google/common/hash/s;
.super Lcom/google/common/hash/c;
.source "MessageDigestHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/s$b;,
        Lcom/google/common/hash/s$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/hash/s;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/hash/s;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/s;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p3

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1c

    if-gt p2, p3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "bytes (%s) must be >= 4 and < %s"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    iput p2, p0, Lcom/google/common/hash/s;->b:I

    invoke-static {p1}, Lcom/google/common/hash/s;->i(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/hash/s;->c:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    invoke-static {p1}, Lcom/google/common/hash/s;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/s;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/s;->b:I

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/hash/s;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/hash/s;->i(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/hash/s;->c:Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static i(Ljava/security/MessageDigest;)Z
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/common/hash/s;->b:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 5

    iget-boolean v0, p0, Lcom/google/common/hash/s;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    :try_start_5
    new-instance v0, Lcom/google/common/hash/s$b;

    iget-object v2, p0, Lcom/google/common/hash/s;->a:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    iget v3, p0, Lcom/google/common/hash/s;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/hash/s$b;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/s$a;)V
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    :cond_15
    new-instance v0, Lcom/google/common/hash/s$b;

    iget-object v2, p0, Lcom/google/common/hash/s;->a:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/hash/s;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iget v3, p0, Lcom/google/common/hash/s;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/hash/s$b;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/s$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lcom/google/common/hash/s$c;

    iget-object v1, p0, Lcom/google/common/hash/s;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/s;->b:I

    iget-object v3, p0, Lcom/google/common/hash/s;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/s$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/s$a;)V

    return-object v0
.end method
