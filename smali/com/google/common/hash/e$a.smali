###### Class com.google.common.hash.e.a (com.google.common.hash.e$a)
.class final Lcom/google/common/hash/e$a;
.super Lcom/google/common/hash/d;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/common/hash/e$b;

.field final synthetic b:Lcom/google/common/hash/e;


# direct methods
.method constructor <init>(Lcom/google/common/hash/e;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/hash/e$a;->b:Lcom/google/common/hash/e;

    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    new-instance p1, Lcom/google/common/hash/e$b;

    invoke-direct {p1, p2}, Lcom/google/common/hash/e$b;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/hash/e$a;->a:Lcom/google/common/hash/e$b;

    return-void
.end method


# virtual methods
.method public b(B)Lcom/google/common/hash/m;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/e$a;->a:Lcom/google/common/hash/e$b;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object p0
.end method

.method public bridge synthetic b(B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/e$a;->b(B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public d([BII)Lcom/google/common/hash/m;
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/e$a;->a:Lcom/google/common/hash/e$b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic d([BII)Lcom/google/common/hash/v;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/e$a;->d([BII)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/google/common/hash/HashCode;
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/e$a;->b:Lcom/google/common/hash/e;

    iget-object v1, p0, Lcom/google/common/hash/e$a;->a:Lcom/google/common/hash/e$b;

    invoke-virtual {v1}, Lcom/google/common/hash/e$b;->d()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/hash/e$a;->a:Lcom/google/common/hash/e$b;

    invoke-virtual {v2}, Lcom/google/common/hash/e$b;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/common/hash/c;->h([BII)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method
