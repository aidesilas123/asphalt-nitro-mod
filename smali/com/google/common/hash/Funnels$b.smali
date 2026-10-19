###### Class com.google.common.hash.Funnels.b (com.google.common.hash.Funnels$b)
.class Lcom/google/common/hash/Funnels$b;
.super Ljava/io/OutputStream;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/common/hash/v;


# direct methods
.method constructor <init>(Lcom/google/common/hash/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/v;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/google/common/hash/v;->b(B)Lcom/google/common/hash/v;

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    invoke-interface {v0, p1}, Lcom/google/common/hash/v;->a([B)Lcom/google/common/hash/v;

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/v;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/v;->d([BII)Lcom/google/common/hash/v;

    return-void
.end method
