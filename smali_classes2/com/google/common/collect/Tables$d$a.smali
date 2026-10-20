###### Class com.google.common.collect.Tables.d.a (com.google.common.collect.Tables$d$a)
.class Lcom/google/common/collect/Tables$d$a;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Tables$d;->p()Lcom/google/common/base/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "Lcom/google/common/collect/l3$a<",
        "TR;TC;TV1;>;",
        "Lcom/google/common/collect/l3$a<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Tables$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Tables$d$a;->a:Lcom/google/common/collect/Tables$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/l3$a;)Lcom/google/common/collect/l3$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV1;>;)",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->d()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Tables$d$a;->a:Lcom/google/common/collect/Tables$d;

    iget-object v2, v2, Lcom/google/common/collect/Tables$d;->d:Lcom/google/common/base/f;

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/collect/l3$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$d$a;->a(Lcom/google/common/collect/l3$a;)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method
