###### Class com.google.common.io.ByteSource.b (com.google.common.io.ByteSource$b)
.class Lcom/google/common/io/ByteSource$b;
.super Lcom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:[B

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/io/ByteSource$b;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iput p2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iput p3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    return-void
.end method


# virtual methods
.method public d(Ljava/io/OutputStream;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public e(Lcom/google/common/hash/l;)Lcom/google/common/hash/HashCode;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/hash/l;->h([BII)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/io/InputStream;
    .registers 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public g(Lcom/google/common/io/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/d<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/io/d;->a([BII)Z

    invoke-interface {p1}, Lcom/google/common/io/d;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()[B
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding;->a([BII)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Ascii;->truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ByteSource.wrap("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
