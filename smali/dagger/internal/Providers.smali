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

###### Class dagger.internal.Providers.a (dagger.internal.Providers$a)
.class Ldagger/internal/Providers$a;
.super Ljava/lang/Object;
.source "Providers.java"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/Providers;->asDaggerProvider(Le/a/a;)Ldagger/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/a/a;


# direct methods
.method constructor <init>(Le/a/a;)V
    .registers 2

    iput-object p1, p0, Ldagger/internal/Providers$a;->a:Le/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/Providers$a;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
