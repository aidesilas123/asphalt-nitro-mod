###### Class com.google.common.collect.Tables (com.google.common.collect.Tables)
.class public final Lcom/google/common/collect/Tables;
.super Ljava/lang/Object;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$f;,
        Lcom/google/common/collect/Tables$g;,
        Lcom/google/common/collect/Tables$d;,
        Lcom/google/common/collect/Tables$e;,
        Lcom/google/common/collect/Tables$b;,
        Lcom/google/common/collect/Tables$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/f<",
            "+",
            "Ljava/util/Map<",
            "**>;+",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Tables$a;

    invoke-direct {v0}, Lcom/google/common/collect/Tables$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables;->a:Lcom/google/common/base/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/f;
    .registers 1

    invoke-static {}, Lcom/google/common/collect/Tables;->c()Lcom/google/common/base/f;

    move-result-object v0

    return-object v0
.end method

.method static b(Lcom/google/common/collect/l3;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/l3;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/google/common/collect/l3;

    invoke-interface {p0}, Lcom/google/common/collect/l3;->t()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/l3;->t()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static c()Lcom/google/common/base/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/f<",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Tables;->a:Lcom/google/common/base/f;

    return-object v0
.end method

.method public static immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/l3$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/l3$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Tables$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Tables$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newCustomTable(Ljava/util/Map;Lcom/google/common/base/m;)Lcom/google/common/collect/l3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcom/google/common/base/m<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/j3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-object v0
.end method

.method public static synchronizedTable(Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/k3;->y(Lcom/google/common/collect/l3;Ljava/lang/Object;)Lcom/google/common/collect/l3;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Lcom/google/common/collect/l3;Lcom/google/common/base/f;)Lcom/google/common/collect/l3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV1;>;",
            "Lcom/google/common/base/f<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Tables$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Tables$d;-><init>(Lcom/google/common/collect/l3;Lcom/google/common/base/f;)V

    return-object v0
.end method

.method public static transpose(Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/l3<",
            "TC;TR;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/Tables$e;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/google/common/collect/Tables$e;

    iget-object p0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    goto :goto_f

    :cond_9
    new-instance v0, Lcom/google/common/collect/Tables$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$e;-><init>(Lcom/google/common/collect/l3;)V

    move-object p0, v0

    :goto_f
    return-object p0
.end method

.method public static unmodifiableRowSortedTable(Lcom/google/common/collect/x2;)Lcom/google/common/collect/x2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/x2<",
            "TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/x2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Tables$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$f;-><init>(Lcom/google/common/collect/x2;)V

    return-object v0
.end method

.method public static unmodifiableTable(Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l3<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Tables$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$g;-><init>(Lcom/google/common/collect/l3;)V

    return-object v0
.end method
