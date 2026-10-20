###### Class com.google.common.hash.s.b (com.google.common.hash.s$b)
.class final Lcom/google/common/hash/s$b;
.super Lcom/google/common/hash/a;
.source "MessageDigestHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/security/MessageDigest;

.field private final c:I

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/common/hash/s$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/s$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/s$b;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private m()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/common/hash/s$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/hash/HashCode;
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/s$b;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/s$b;->d:Z

    iget v0, p0, Lcom/google/common/hash/s$b;->c:I

    iget-object v1, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    goto :goto_2b

    :cond_1b
    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/s$b;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method protected j(B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/s$b;->m()V

    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected l([BII)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/hash/s$b;->m()V

    iget-object v0, p0, Lcom/google/common/hash/s$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
