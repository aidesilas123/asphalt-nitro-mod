###### Class com.google.common.util.concurrent.m.k (com.google.common.util.concurrent.m$k)
.class final Lcom/google/common/util/concurrent/m$k;
.super Lcom/google/common/util/concurrent/m$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# static fields
.field static final a:Lsun/misc/Unsafe;

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:J

.field static final f:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/google/common/util/concurrent/m$l;

    :try_start_2
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    :try_start_7
    new-instance v1, Lcom/google/common/util/concurrent/m$k$a;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/m$k$a;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_12
    .catch Ljava/security/PrivilegedActionException; {:try_start_7 .. :try_end_12} :catch_5d

    :goto_12
    :try_start_12
    const-class v2, Lcom/google/common/util/concurrent/m;

    const-string v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/common/util/concurrent/m$k;->c:J

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/common/util/concurrent/m$k;->b:J

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/m$k;->d:J

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/m$k;->e:J

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/m$k;->f:J

    sput-object v1, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m$b;-><init>(Lcom/google/common/util/concurrent/m$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/m$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$k;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$e;",
            "Lcom/google/common/util/concurrent/m$e;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/m$k;->b:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/m$k;->d:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$l;",
            "Lcom/google/common/util/concurrent/m$l;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/m$k;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$e;",
            ")",
            "Lcom/google/common/util/concurrent/m$e;"
        }
    .end annotation

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->g(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$e;

    move-result-object v0

    if-ne p2, v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/m$k;->a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method e(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$l;",
            ")",
            "Lcom/google/common/util/concurrent/m$l;"
        }
    .end annotation

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->i(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$l;

    move-result-object v0

    if-ne p2, v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/m$k;->c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method f(Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)V
    .registers 6

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/common/util/concurrent/m$k;->f:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method g(Lcom/google/common/util/concurrent/m$l;Ljava/lang/Thread;)V
    .registers 6

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/common/util/concurrent/m$k;->e:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
