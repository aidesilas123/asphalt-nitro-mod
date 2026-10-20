###### Class kotlin.reflect.jvm.internal.pcollections.IntTreePMap (kotlin.reflect.jvm.internal.pcollections.IntTreePMap)
.class final Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;
.super Ljava/lang/Object;
.source "IntTreePMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/pcollections/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;

    sget-object v1, Lkotlin/reflect/jvm/internal/pcollections/a;->a:Lkotlin/reflect/jvm/internal/pcollections/a;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;-><init>(Lkotlin/reflect/jvm/internal/pcollections/a;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->a:Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/pcollections/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->b:Lkotlin/reflect/jvm/internal/pcollections/a;

    return-void
.end method

.method private c(Lkotlin/reflect/jvm/internal/pcollections/a;)Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "TV;>;)",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->b:Lkotlin/reflect/jvm/internal/pcollections/a;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;-><init>(Lkotlin/reflect/jvm/internal/pcollections/a;)V

    return-object v0
.end method

.method public static empty()Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->a:Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->b:Lkotlin/reflect/jvm/internal/pcollections/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/pcollections/a;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)",
            "Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->b:Lkotlin/reflect/jvm/internal/pcollections/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lkotlin/reflect/jvm/internal/pcollections/a;->b(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;->c(Lkotlin/reflect/jvm/internal/pcollections/a;)Lkotlin/reflect/jvm/internal/pcollections/IntTreePMap;

    move-result-object p1

    return-object p1
.end method
