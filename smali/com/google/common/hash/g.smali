###### Class com.google.common.hash.g (com.google.common.hash.g)
.class final Lcom/google/common/hash/g;
.super Lcom/google/common/hash/c;
.source "ChecksumHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/g$b;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/common/hash/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/n<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/hash/n;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/n<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/n;

    iput-object p1, p0, Lcom/google/common/hash/g;->a:Lcom/google/common/hash/n;

    const/16 p1, 0x20

    if-eq p2, p1, :cond_16

    const/16 p1, 0x40

    if-ne p2, p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    const-string v0, "bits (%s) must be either 32 or 64"

    invoke-static {p1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iput p2, p0, Lcom/google/common/hash/g;->b:I

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/hash/g;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/google/common/hash/g;)I
    .registers 1

    iget p0, p0, Lcom/google/common/hash/g;->b:I

    return p0
.end method


# virtual methods
.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/common/hash/g;->b:I

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 4

    new-instance v0, Lcom/google/common/hash/g$b;

    iget-object v1, p0, Lcom/google/common/hash/g;->a:Lcom/google/common/hash/n;

    invoke-interface {v1}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/hash/g$b;-><init>(Lcom/google/common/hash/g;Ljava/util/zip/Checksum;Lcom/google/common/hash/g$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/g;->c:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.common.hash.g.a (com.google.common.hash.g$a)
.class synthetic Lcom/google/common/hash/g$a;
.super Ljava/lang/Object;
.source "ChecksumHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.hash.g.b (com.google.common.hash.g$b)
.class final Lcom/google/common/hash/g$b;
.super Lcom/google/common/hash/a;
.source "ChecksumHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/util/zip/Checksum;

.field final synthetic c:Lcom/google/common/hash/g;


# direct methods
.method private constructor <init>(Lcom/google/common/hash/g;Ljava/util/zip/Checksum;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/hash/g$b;->c:Lcom/google/common/hash/g;

    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/Checksum;

    iput-object p1, p0, Lcom/google/common/hash/g$b;->b:Ljava/util/zip/Checksum;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/g;Ljava/util/zip/Checksum;Lcom/google/common/hash/g$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/g$b;-><init>(Lcom/google/common/hash/g;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/hash/HashCode;
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/g$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/common/hash/g$b;->c:Lcom/google/common/hash/g;

    invoke-static {v2}, Lcom/google/common/hash/g;->b(Lcom/google/common/hash/g;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_16

    long-to-int v1, v0

    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected j(B)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/g$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method protected l([BII)V
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/g$b;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
