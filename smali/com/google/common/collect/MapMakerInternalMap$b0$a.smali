###### Class com.google.common.collect.MapMakerInternalMap.b0.a (com.google.common.collect.MapMakerInternalMap$b0$a)
.class final Lcom/google/common/collect/MapMakerInternalMap$b0$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$j<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$b0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$c0<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/MapMakerInternalMap$b0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$b0$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$b0$a;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$b0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$b0$a;->a:Lcom/google/common/collect/MapMakerInternalMap$b0$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/MapMakerInternalMap$b0$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$b0$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$b0$a;->a:Lcom/google/common/collect/MapMakerInternalMap$b0$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$i;Lcom/google/common/collect/MapMakerInternalMap$i;)Lcom/google/common/collect/MapMakerInternalMap$i;
    .registers 4

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$c0;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$b0;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$b0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$b0$a;->g(Lcom/google/common/collect/MapMakerInternalMap$c0;Lcom/google/common/collect/MapMakerInternalMap$b0;Lcom/google/common/collect/MapMakerInternalMap$b0;)Lcom/google/common/collect/MapMakerInternalMap$b0;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$i;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$c0;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$b0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$b0$a;->k(Lcom/google/common/collect/MapMakerInternalMap$c0;Lcom/google/common/collect/MapMakerInternalMap$b0;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/MapMakerInternalMap$n;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$i;)Lcom/google/common/collect/MapMakerInternalMap$i;
    .registers 5

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$c0;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$b0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$b0$a;->i(Lcom/google/common/collect/MapMakerInternalMap$c0;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$b0;)Lcom/google/common/collect/MapMakerInternalMap$b0;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$n;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$b0$a;->j(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$c0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$c0;Lcom/google/common/collect/MapMakerInternalMap$b0;Lcom/google/common/collect/MapMakerInternalMap$b0;)Lcom/google/common/collect/MapMakerInternalMap$b0;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$n;->r(Lcom/google/common/collect/MapMakerInternalMap$i;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$c0;->K(Lcom/google/common/collect/MapMakerInternalMap$c0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$c0;->L(Lcom/google/common/collect/MapMakerInternalMap$c0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$b0;->d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$b0;)Lcom/google/common/collect/MapMakerInternalMap$b0;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$c0;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$b0;)Lcom/google/common/collect/MapMakerInternalMap$b0;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$b0;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$c0;->K(Lcom/google/common/collect/MapMakerInternalMap$c0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$b0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$b0;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$c0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$c0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$c0;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$c0;Lcom/google/common/collect/MapMakerInternalMap$b0;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$c0;->L(Lcom/google/common/collect/MapMakerInternalMap$c0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/common/collect/MapMakerInternalMap$b0;->e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
