###### Class dagger.internal.DoubleCheck (dagger.internal.DoubleCheck)
.class public final Ldagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "DoubleCheck.java"

# interfaces
.implements Ldagger/internal/c;
.implements Ld/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "TT;>;",
        "Ld/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ldagger/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/DoubleCheck;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ldagger/internal/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldagger/internal/DoubleCheck;->a:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/DoubleCheck;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldagger/internal/DoubleCheck;->b:Ldagger/internal/c;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Ldagger/internal/DoubleCheck;->a:Ljava/lang/Object;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_30

    if-ne p0, p1, :cond_c

    goto :goto_30

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " & "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". This is likely due to a circular dependency."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    return-object p1
.end method

.method public static lazy(Ldagger/internal/c;)Ld/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ldagger/internal/c<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ld/a<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ld/a;

    if-eqz v0, :cond_7

    check-cast p0, Ld/a;

    return-object p0

    :cond_7
    new-instance v0, Ldagger/internal/DoubleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/internal/c;

    invoke-direct {v0, p0}, Ldagger/internal/DoubleCheck;-><init>(Ldagger/internal/c;)V

    return-object v0
.end method

.method public static lazy(Le/a/a;)Ld/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Le/a/a<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ld/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ldagger/internal/Providers;->asDaggerProvider(Le/a/a;)Ldagger/internal/c;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ldagger/internal/c;)Ld/a;

    move-result-object p0

    return-object p0
.end method

.method public static provider(Ldagger/internal/c;)Ldagger/internal/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ldagger/internal/c<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    new-instance v0, Ldagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Ldagger/internal/DoubleCheck;-><init>(Ldagger/internal/c;)V

    return-object v0
.end method

.method public static provider(Le/a/a;)Le/a/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Le/a/a<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Le/a/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ldagger/internal/Providers;->asDaggerProvider(Le/a/a;)Ldagger/internal/c;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/c;)Ldagger/internal/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/DoubleCheck;->c:Ljava/lang/Object;

    sget-object v1, Ldagger/internal/DoubleCheck;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_21

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Ldagger/internal/DoubleCheck;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Ldagger/internal/DoubleCheck;->b:Ldagger/internal/c;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ldagger/internal/DoubleCheck;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Ldagger/internal/DoubleCheck;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldagger/internal/DoubleCheck;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/DoubleCheck;->b:Ldagger/internal/c;

    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :goto_21
    return-object v0
.end method
