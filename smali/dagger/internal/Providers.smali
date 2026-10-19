###### Class dagger.internal.Providers (dagger.internal.Providers)
.class public final Ldagger/internal/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDaggerProvider(Le/a/a;)Ldagger/internal/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/a<",
            "TT;>;)",
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldagger/internal/Providers$a;

    invoke-direct {v0, p0}, Ldagger/internal/Providers$a;-><init>(Le/a/a;)V

    return-object v0
.end method
