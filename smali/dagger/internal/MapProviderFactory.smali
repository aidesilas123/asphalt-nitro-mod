###### Class dagger.internal.MapProviderFactory (dagger.internal.MapProviderFactory)
.class public final Ldagger/internal/MapProviderFactory;
.super Ldagger/internal/a;
.source "MapProviderFactory.java"

# interfaces
.implements Ld/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MapProviderFactory$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/a<",
        "TK;TV;",
        "Ldagger/internal/c<",
        "TV;>;>;",
        "Ld/a<",
        "Ljava/util/Map<",
        "TK;",
        "Ldagger/internal/c<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method public static builder(I)Ldagger/internal/MapProviderFactory$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ldagger/internal/MapProviderFactory$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/MapProviderFactory$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/MapProviderFactory$b;-><init>(ILdagger/internal/MapProviderFactory$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ldagger/internal/c<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ldagger/internal/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ldagger/internal/MapProviderFactory;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class dagger.internal.MapProviderFactory.a (dagger.internal.MapProviderFactory$a)
.class synthetic Ldagger/internal/MapProviderFactory$a;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class dagger.internal.MapProviderFactory.b (dagger.internal.MapProviderFactory$b)
.class public final Ldagger/internal/MapProviderFactory$b;
.super Ldagger/internal/a$a;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/a$a<",
        "TK;TV;",
        "Ldagger/internal/c<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ldagger/internal/a$a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILdagger/internal/MapProviderFactory$a;)V
    .registers 3

    invoke-direct {p0, p1}, Ldagger/internal/MapProviderFactory$b;-><init>(I)V

    return-void
.end method
