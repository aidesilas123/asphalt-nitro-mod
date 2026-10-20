###### Class com.google.common.hash.t (com.google.common.hash.t)
.class final Lcom/google/common/hash/t;
.super Lcom/google/common/hash/c;
.source "Murmur3_128HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/t$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/l;

.field static final b:Lcom/google/common/hash/l;

.field private static final serialVersionUID:J


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/hash/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/t;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/t;->a:Lcom/google/common/hash/l;

    new-instance v0, Lcom/google/common/hash/t;

    sget v1, Lcom/google/common/hash/Hashing;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/t;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/t;->b:Lcom/google/common/hash/l;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    iput p1, p0, Lcom/google/common/hash/t;->c:I

    return-void
.end method


# virtual methods
.method public c()I
    .registers 2

    const/16 v0, 0x80

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 3

    new-instance v0, Lcom/google/common/hash/t$a;

    iget v1, p0, Lcom/google/common/hash/t;->c:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/t$a;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/common/hash/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/hash/t;

    iget v0, p0, Lcom/google/common/hash/t;->c:I

    iget p1, p1, Lcom/google/common/hash/t;->c:I

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/hash/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/t;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/common/hash/t;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_128("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
