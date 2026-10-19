###### Class com.google.common.collect.f2.a (com.google.common.collect.f2$a)
.class Lcom/google/common/collect/f2$a;
.super Lcom/google/common/collect/Multisets$f;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$f<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/google/common/collect/f2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f2;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$f;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/f2$a;->b:I

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method d()V
    .registers 4

    iget v0, p0, Lcom/google/common/collect/f2$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v1}, Lcom/google/common/collect/f2;->C()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    iget-object v1, v1, Lcom/google/common/collect/f2;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/f2$a;->b:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1d
    iget-object v0, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    iget-object v1, p0, Lcom/google/common/collect/f2$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/f2;->m(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/f2$a;->b:I

    :cond_27
    return-void
.end method

.method public getCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/f2$a;->d()V

    iget v0, p0, Lcom/google/common/collect/f2$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lcom/google/common/collect/f2$a;->c:Lcom/google/common/collect/f2;

    iget-object v1, v1, Lcom/google/common/collect/f2;->b:[I

    aget v0, v1, v0

    :goto_10
    return v0
.end method
