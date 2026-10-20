###### Class com.google.common.collect.j3.f.a.C0257a (com.google.common.collect.j3$f$a$a)
.class Lcom/google/common/collect/j3$f$a$a;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j3$f$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/j3$f$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3$f$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/j3$f$a$a;->a:Lcom/google/common/collect/j3$f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j3$f$a$a;->a:Lcom/google/common/collect/j3$f$a;

    iget-object v0, v0, Lcom/google/common/collect/j3$f$a;->b:Lcom/google/common/collect/j3$f;

    iget-object v0, v0, Lcom/google/common/collect/j3$f;->d:Lcom/google/common/collect/j3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3;->s(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j3$f$a$a;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
