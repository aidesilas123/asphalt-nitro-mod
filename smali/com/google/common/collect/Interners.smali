###### Class com.google.common.collect.Interners (com.google.common.collect.Interners)
.class public final Lcom/google/common/collect/Interners;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$c;,
        Lcom/google/common/collect/Interners$d;,
        Lcom/google/common/collect/Interners$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFunction(Lcom/google/common/collect/w1;)Lcom/google/common/base/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/w1<",
            "TE;>;)",
            "Lcom/google/common/base/f<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Interners$c;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/w1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Interners$c;-><init>(Lcom/google/common/collect/w1;)V

    return-object v0
.end method

.method public static newBuilder()Lcom/google/common/collect/Interners$b;
    .registers 2

    new-instance v0, Lcom/google/common/collect/Interners$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/Interners$b;-><init>(Lcom/google/common/collect/Interners$a;)V

    return-object v0
.end method

.method public static newStrongInterner()Lcom/google/common/collect/w1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Interners;->newBuilder()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->b()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->a()Lcom/google/common/collect/w1;

    move-result-object v0

    return-object v0
.end method

.method public static newWeakInterner()Lcom/google/common/collect/w1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Interners;->newBuilder()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->c()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->a()Lcom/google/common/collect/w1;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.Interners.a (com.google.common.collect.Interners$a)
.class synthetic Lcom/google/common/collect/Interners$a;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.collect.Interners.b (com.google.common.collect.Interners$b)
.class public Lcom/google/common/collect/Interners$b;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/MapMaker;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Lcom/google/common/collect/MapMaker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/Interners$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/w1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Lcom/google/common/collect/MapMaker;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->l()Lcom/google/common/collect/MapMaker;

    :cond_9
    new-instance v0, Lcom/google/common/collect/Interners$d;

    iget-object v1, p0, Lcom/google/common/collect/Interners$b;->a:Lcom/google/common/collect/MapMaker;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$d;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$a;)V

    return-object v0
.end method

.method public b()Lcom/google/common/collect/Interners$b;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    return-object p0
.end method

.method public c()Lcom/google/common/collect/Interners$b;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$b;->b:Z

    return-object p0
.end method

###### Class com.google.common.collect.Interners.c (com.google.common.collect.Interners$c)
.class Lcom/google/common/collect/Interners$c;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w1<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/w1;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/w1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/w1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/collect/Interners$c;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/common/collect/Interners$c;

    iget-object v0, p0, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/w1;

    iget-object p1, p1, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/w1;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Interners$c;->a:Lcom/google/common/collect/w1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.Interners.d (com.google.common.collect.Interners$d)
.class final Lcom/google/common/collect/Interners$d;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/w1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/w1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TE;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/MapMaker;->h(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Interners$d;->a:Lcom/google/common/collect/MapMakerInternalMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/Interners$d;-><init>(Lcom/google/common/collect/MapMaker;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Interners$d;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->e(Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$i;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$i;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/Interners$d;->a:Lcom/google/common/collect/MapMakerInternalMap;

    sget-object v1, Lcom/google/common/collect/MapMaker$Dummy;->a:Lcom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$Dummy;

    if-nez v0, :cond_0

    return-object p1
.end method
