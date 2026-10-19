###### Class dagger.internal.ProviderOfLazy (dagger.internal.ProviderOfLazy)
.class public final Ldagger/internal/ProviderOfLazy;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "Ld/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ldagger/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Ldagger/internal/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldagger/internal/ProviderOfLazy;->a:Ldagger/internal/c;

    return-void
.end method

.method public static create(Ldagger/internal/c;)Ldagger/internal/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/c<",
            "TT;>;)",
            "Ldagger/internal/c<",
            "Ld/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/ProviderOfLazy;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/internal/c;

    invoke-direct {v0, p0}, Ldagger/internal/ProviderOfLazy;-><init>(Ldagger/internal/c;)V

    return-object v0
.end method

.method public static create(Le/a/a;)Ldagger/internal/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/a<",
            "TT;>;)",
            "Ldagger/internal/c<",
            "Ld/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ldagger/internal/Providers;->asDaggerProvider(Le/a/a;)Ldagger/internal/c;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/ProviderOfLazy;->create(Ldagger/internal/c;)Ldagger/internal/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ld/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/ProviderOfLazy;->a:Ldagger/internal/c;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ldagger/internal/c;)Ld/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ldagger/internal/ProviderOfLazy;->a()Ld/a;

    move-result-object v0

    return-object v0
.end method
