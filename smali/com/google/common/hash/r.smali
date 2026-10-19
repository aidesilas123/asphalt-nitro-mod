###### Class com.google.common.hash.r (com.google.common.hash.r)
.class final Lcom/google/common/hash/r;
.super Lcom/google/common/hash/c;
.source "MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/r$b;
    }
.end annotation


# instance fields
.field private final a:Ljavax/crypto/Mac;

.field private final b:Ljava/security/Key;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    invoke-static {p1, p2}, Lcom/google/common/hash/r;->b(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/r;->a:Ljavax/crypto/Mac;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/Key;

    iput-object p2, p0, Lcom/google/common/hash/r;->b:Ljava/security/Key;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/hash/r;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/google/common/hash/r;->d:I

    invoke-static {p1}, Lcom/google/common/hash/r;->i(Ljavax/crypto/Mac;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/hash/r;->e:Z

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static i(Ljavax/crypto/Mac;)Z
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
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

    iget v0, p0, Lcom/google/common/hash/r;->d:I

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 5

    iget-boolean v0, p0, Lcom/google/common/hash/r;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    :try_start_5
    new-instance v0, Lcom/google/common/hash/r$b;

    iget-object v2, p0, Lcom/google/common/hash/r;->a:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    invoke-direct {v0, v2, v1}, Lcom/google/common/hash/r$b;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/r$a;)V
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    :cond_13
    new-instance v0, Lcom/google/common/hash/r$b;

    iget-object v2, p0, Lcom/google/common/hash/r;->a:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/hash/r;->b:Ljava/security/Key;

    invoke-static {v2, v3}, Lcom/google/common/hash/r;->b(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/common/hash/r$b;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/r$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/r;->c:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.common.hash.r.a (com.google.common.hash.r$a)
.class synthetic Lcom/google/common/hash/r$a;
.super Ljava/lang/Object;
.source "MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.hash.r.b (com.google.common.hash.r$b)
.class final Lcom/google/common/hash/r$b;
.super Lcom/google/common/hash/a;
.source "MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Ljavax/crypto/Mac;

.field private c:Z


# direct methods
.method private constructor <init>(Ljavax/crypto/Mac;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/crypto/Mac;Lcom/google/common/hash/r$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/hash/r$b;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private m()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/common/hash/r$b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/hash/HashCode;
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/r$b;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/r$b;->c:Z

    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected j(B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/r$b;->m()V

    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method protected k([B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/r$b;->m()V

    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method protected l([BII)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/hash/r$b;->m()V

    iget-object v0, p0, Lcom/google/common/hash/r$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
