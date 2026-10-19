###### Class com.google.common.graph.Traverser (com.google.common.graph.Traverser)
.class public abstract Lcom/google/common/graph/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$InsertionOrder;,
        Lcom/google/common/graph/Traverser$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/r0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/r0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r0<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/r0;

    iput-object p1, p0, Lcom/google/common/graph/Traverser;->a:Lcom/google/common/graph/r0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/Traverser$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/r0;)V

    return-void
.end method

.method private d(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/Traverser;->a:Lcom/google/common/graph/r0;

    invoke-interface {v2, v1}, Lcom/google/common/graph/r0;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    goto :goto_8

    :cond_18
    return-object p1
.end method

.method public static forGraph(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/r0<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/Traverser$a;

    invoke-direct {v0, p0, p0}, Lcom/google/common/graph/Traverser$a;-><init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/r0;)V

    return-object v0
.end method

.method public static forTree(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/r0<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/graph/s;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/s;

    invoke-interface {v0}, Lcom/google/common/graph/s;->d()Z

    move-result v0

    const-string v1, "Undirected graphs can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_10
    instance-of v0, p0, Lcom/google/common/graph/k0;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/k0;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->d()Z

    move-result v0

    const-string v1, "Undirected networks can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_20
    new-instance v0, Lcom/google/common/graph/Traverser$b;

    invoke-direct {v0, p0, p0}, Lcom/google/common/graph/Traverser$b;-><init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/r0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    new-instance v0, Lcom/google/common/graph/Traverser$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$c;-><init>(Lcom/google/common/graph/Traverser;Lcom/google/common/collect/ImmutableSet;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/graph/Traverser;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method abstract c()Lcom/google/common/graph/Traverser$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser$d<",
            "TN;>;"
        }
    .end annotation
.end method

###### Class com.google.common.graph.Traverser.InsertionOrder (com.google.common.graph.Traverser$InsertionOrder)
.class abstract enum Lcom/google/common/graph/Traverser$InsertionOrder;
.super Ljava/lang/Enum;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "InsertionOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Traverser$InsertionOrder;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/Traverser$InsertionOrder;

.field public static final enum b:Lcom/google/common/graph/Traverser$InsertionOrder;

.field private static final synthetic c:[Lcom/google/common/graph/Traverser$InsertionOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/graph/Traverser$InsertionOrder$a;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/Traverser$InsertionOrder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->a:Lcom/google/common/graph/Traverser$InsertionOrder;

    new-instance v0, Lcom/google/common/graph/Traverser$InsertionOrder$b;

    const-string v1, "BACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/Traverser$InsertionOrder$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->b:Lcom/google/common/graph/Traverser$InsertionOrder;

    invoke-static {}, Lcom/google/common/graph/Traverser$InsertionOrder;->e()[Lcom/google/common/graph/Traverser$InsertionOrder;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->c:[Lcom/google/common/graph/Traverser$InsertionOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/graph/Traverser$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/graph/Traverser$InsertionOrder;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/graph/Traverser$InsertionOrder;

    sget-object v1, Lcom/google/common/graph/Traverser$InsertionOrder;->a:Lcom/google/common/graph/Traverser$InsertionOrder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/graph/Traverser$InsertionOrder;->b:Lcom/google/common/graph/Traverser$InsertionOrder;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/Traverser$InsertionOrder;
    .registers 2

    const-class v0, Lcom/google/common/graph/Traverser$InsertionOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/Traverser$InsertionOrder;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/Traverser$InsertionOrder;
    .registers 1

    sget-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->c:[Lcom/google/common/graph/Traverser$InsertionOrder;

    invoke-virtual {v0}, [Lcom/google/common/graph/Traverser$InsertionOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/Traverser$InsertionOrder;

    return-object v0
.end method


# virtual methods
.method abstract f(Ljava/util/Deque;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

###### Class com.google.common.graph.Traverser.InsertionOrder.a (com.google.common.graph.Traverser$InsertionOrder$a)
.class final enum Lcom/google/common/graph/Traverser$InsertionOrder$a;
.super Lcom/google/common/graph/Traverser$InsertionOrder;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$InsertionOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;ILcom/google/common/graph/Traverser$a;)V

    return-void
.end method


# virtual methods
.method f(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.common.graph.Traverser.InsertionOrder.b (com.google.common.graph.Traverser$InsertionOrder$b)
.class final enum Lcom/google/common/graph/Traverser$InsertionOrder$b;
.super Lcom/google/common/graph/Traverser$InsertionOrder;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$InsertionOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;ILcom/google/common/graph/Traverser$a;)V

    return-void
.end method


# virtual methods
.method f(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.common.graph.Traverser.a (com.google.common.graph.Traverser$a)
.class Lcom/google/common/graph/Traverser$a;
.super Lcom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser;->forGraph(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/graph/r0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/r0;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/Traverser$a;->b:Lcom/google/common/graph/r0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/Traverser$a;)V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/graph/Traverser$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser$d<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Traverser$a;->b:Lcom/google/common/graph/r0;

    invoke-static {v0}, Lcom/google/common/graph/Traverser$d;->b(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.Traverser.b (com.google.common.graph.Traverser$b)
.class Lcom/google/common/graph/Traverser$b;
.super Lcom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser;->forTree(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/graph/r0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/r0;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/Traverser$b;->b:Lcom/google/common/graph/r0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/r0;Lcom/google/common/graph/Traverser$a;)V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/graph/Traverser$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser$d<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Traverser$b;->b:Lcom/google/common/graph/r0;

    invoke-static {v0}, Lcom/google/common/graph/Traverser$d;->c(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.Traverser.c (com.google.common.graph.Traverser$c)
.class Lcom/google/common/graph/Traverser$c;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSet;

.field final synthetic b:Lcom/google/common/graph/Traverser;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser;Lcom/google/common/collect/ImmutableSet;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/graph/Traverser$c;->b:Lcom/google/common/graph/Traverser;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$c;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Traverser$c;->b:Lcom/google/common/graph/Traverser;

    invoke-virtual {v0}, Lcom/google/common/graph/Traverser;->c()Lcom/google/common/graph/Traverser$d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/Traverser$c;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$d;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.Traverser.d (com.google.common.graph.Traverser$d)
.class abstract Lcom/google/common/graph/Traverser$d;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/graph/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/r0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r0<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$d;->a:Lcom/google/common/graph/r0;

    return-void
.end method

.method static b(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/r0<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser$d<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/common/graph/Traverser$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/Traverser$d$a;-><init>(Lcom/google/common/graph/r0;Ljava/util/Set;)V

    return-object v1
.end method

.method static c(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/r0<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser$d<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/Traverser$d$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Traverser$d$b;-><init>(Lcom/google/common/graph/r0;)V

    return-object v0
.end method

.method private d(Ljava/util/Iterator;Lcom/google/common/graph/Traverser$InsertionOrder;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TN;>;",
            "Lcom/google/common/graph/Traverser$InsertionOrder;",
            ")",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/common/graph/Traverser$d$c;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/common/graph/Traverser$d$c;-><init>(Lcom/google/common/graph/Traverser$d;Ljava/util/Deque;Lcom/google/common/graph/Traverser$InsertionOrder;)V

    return-object p1
.end method


# virtual methods
.method final a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TN;>;)",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->b:Lcom/google/common/graph/Traverser$InsertionOrder;

    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/Traverser$d;->d(Ljava/util/Iterator;Lcom/google/common/graph/Traverser$InsertionOrder;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method abstract e(Ljava/util/Deque;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;)TN;"
        }
    .end annotation
.end method

###### Class com.google.common.graph.Traverser.d.a (com.google.common.graph.Traverser$d$a)
.class Lcom/google/common/graph/Traverser$d$a;
.super Lcom/google/common/graph/Traverser$d;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$d;->b(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser$d<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;Ljava/util/Set;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/graph/Traverser$d$a;->b:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$d;-><init>(Lcom/google/common/graph/r0;)V

    return-void
.end method


# virtual methods
.method e(Ljava/util/Deque;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;)TN;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$d$a;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.common.graph.Traverser.d.b (com.google.common.graph.Traverser$d$b)
.class Lcom/google/common/graph/Traverser$d$b;
.super Lcom/google/common/graph/Traverser$d;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$d;->c(Lcom/google/common/graph/r0;)Lcom/google/common/graph/Traverser$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser$d<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$d;-><init>(Lcom/google/common/graph/r0;)V

    return-void
.end method


# virtual methods
.method e(Ljava/util/Deque;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;)TN;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.common.graph.Traverser.d.c (com.google.common.graph.Traverser$d$c)
.class Lcom/google/common/graph/Traverser$d$c;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$d;->d(Ljava/util/Iterator;Lcom/google/common/graph/Traverser$InsertionOrder;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Deque;

.field final synthetic d:Lcom/google/common/graph/Traverser$InsertionOrder;

.field final synthetic e:Lcom/google/common/graph/Traverser$d;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$d;Ljava/util/Deque;Lcom/google/common/graph/Traverser$InsertionOrder;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/graph/Traverser$d$c;->e:Lcom/google/common/graph/Traverser$d;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    iput-object p3, p0, Lcom/google/common/graph/Traverser$d$c;->d:Lcom/google/common/graph/Traverser$InsertionOrder;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$d$c;->e:Lcom/google/common/graph/Traverser$d;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$d;->e(Ljava/util/Deque;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/google/common/graph/Traverser$d$c;->e:Lcom/google/common/graph/Traverser$d;

    iget-object v1, v1, Lcom/google/common/graph/Traverser$d;->a:Lcom/google/common/graph/r0;

    invoke-interface {v1, v0}, Lcom/google/common/graph/r0;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/common/graph/Traverser$d$c;->d:Lcom/google/common/graph/Traverser$InsertionOrder;

    iget-object v3, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    invoke-virtual {v2, v3, v1}, Lcom/google/common/graph/Traverser$InsertionOrder;->f(Ljava/util/Deque;Ljava/lang/Object;)V

    :cond_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/google/common/graph/Traverser$d$c;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
