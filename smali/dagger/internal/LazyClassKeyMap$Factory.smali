###### Class dagger.internal.LazyClassKeyMap.Factory (dagger.internal.LazyClassKeyMap$Factory)
.class public Ldagger/internal/LazyClassKeyMap$Factory;
.super Ljava/lang/Object;
.source "LazyClassKeyMap.java"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/LazyClassKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "Ljava/util/Map<",
        "Ljava/lang/Class<",
        "*>;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Ldagger/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/c<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldagger/internal/LazyClassKeyMap$Factory;->a:Ldagger/internal/c;

    return-void
.end method

.method public static of(Ldagger/internal/c;)Ldagger/internal/LazyClassKeyMap$Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/c<",
            "*>;)",
            "Ldagger/internal/LazyClassKeyMap$Factory<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/LazyClassKeyMap$Factory;

    invoke-direct {v0, p0}, Ldagger/internal/LazyClassKeyMap$Factory;-><init>(Ldagger/internal/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/LazyClassKeyMap$Factory;->a:Ldagger/internal/c;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ldagger/internal/LazyClassKeyMap;->of(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ldagger/internal/LazyClassKeyMap$Factory;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
