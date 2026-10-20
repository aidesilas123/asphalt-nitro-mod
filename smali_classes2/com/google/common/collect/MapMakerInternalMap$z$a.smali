###### Class com.google.common.collect.MapMakerInternalMap.z.a (com.google.common.collect.MapMakerInternalMap$z$a)
.class final Lcom/google/common/collect/MapMakerInternalMap$z$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$z;
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
        "Lcom/google/common/collect/MapMakerInternalMap$z<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$a0<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/MapMakerInternalMap$z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$z$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$z$a;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$z$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$z$a;->a:Lcom/google/common/collect/MapMakerInternalMap$z$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/MapMakerInternalMap$z$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$z$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$z$a;->a:Lcom/google/common/collect/MapMakerInternalMap$z$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$i;Lcom/google/common/collect/MapMakerInternalMap$i;)Lcom/google/common/collect/MapMakerInternalMap$i;
    .registers 4

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$a0;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$z;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$z;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$z$a;->g(Lcom/google/common/collect/MapMakerInternalMap$a0;Lcom/google/common/collect/MapMakerInternalMap$z;Lcom/google/common/collect/MapMakerInternalMap$z;)Lcom/google/common/collect/MapMakerInternalMap$z;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 2

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$i;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$a0;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$z;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$z$a;->k(Lcom/google/common/collect/MapMakerInternalMap$a0;Lcom/google/common/collect/MapMakerInternalMap$z;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/MapMakerInternalMap$n;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$i;)Lcom/google/common/collect/MapMakerInternalMap$i;
    .registers 5

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$a0;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$z;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$z$a;->i(Lcom/google/common/collect/MapMakerInternalMap$a0;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$z;)Lcom/google/common/collect/MapMakerInternalMap$z;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$z$a;->j(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$a0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$a0;Lcom/google/common/collect/MapMakerInternalMap$z;Lcom/google/common/collect/MapMakerInternalMap$z;)Lcom/google/common/collect/MapMakerInternalMap$z;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$a0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$a0;->K(Lcom/google/common/collect/MapMakerInternalMap$a0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$z;->d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$z;)Lcom/google/common/collect/MapMakerInternalMap$z;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$a0;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$z;)Lcom/google/common/collect/MapMakerInternalMap$z;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$a0<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$z;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$a0;->K(Lcom/google/common/collect/MapMakerInternalMap$a0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$z;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$a0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$a0<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$a0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$a0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$a0;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$a0;Lcom/google/common/collect/MapMakerInternalMap$z;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$a0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$z<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$z;->e(Ljava/lang/Object;)V

    return-void
.end method
