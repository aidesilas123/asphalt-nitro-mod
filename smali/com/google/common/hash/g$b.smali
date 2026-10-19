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
