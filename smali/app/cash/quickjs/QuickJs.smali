###### Class app.cash.quickjs.QuickJs (app.cash.quickjs.QuickJs)
.class public final Lapp/cash/quickjs/QuickJs;
.super Ljava/lang/Object;
.source "QuickJs.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lapp/cash/quickjs/a;->a()V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lapp/cash/quickjs/QuickJs;->a:J

    return-void
.end method

.method private native call(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private native compile(JLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static create()Lapp/cash/quickjs/QuickJs;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lapp/cash/quickjs/QuickJs;->createContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    new-instance v2, Lapp/cash/quickjs/QuickJs;

    invoke-direct {v2, v0, v1}, Lapp/cash/quickjs/QuickJs;-><init>(J)V

    return-object v2

    :cond_10
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Cannot create QuickJs instance"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native createContext()J
.end method

.method private native destroyContext(J)V
.end method

.method private native evaluate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native execute(J[B)Ljava/lang/Object;
.end method

.method private native get(JLjava/lang/String;[Ljava/lang/Object;)J
.end method

.method private native set(JLjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
.end method


# virtual methods
.method public close()V
    .registers 6

    iget-wide v0, p0, Lapp/cash/quickjs/QuickJs;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    iput-wide v2, p0, Lapp/cash/quickjs/QuickJs;->a:J

    invoke-direct {p0, v0, v1}, Lapp/cash/quickjs/QuickJs;->destroyContext(J)V

    :cond_d
    return-void
.end method

.method protected finalize()V
    .registers 6

    iget-wide v0, p0, Lapp/cash/quickjs/QuickJs;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    const-class v0, Lapp/cash/quickjs/QuickJs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "QuickJs instance leaked!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lapp/cash/quickjs/QuickJs;->a:J

    const-string v2, "?"

    invoke-direct {p0, v0, v1, p1, v2}, Lapp/cash/quickjs/QuickJs;->evaluate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
