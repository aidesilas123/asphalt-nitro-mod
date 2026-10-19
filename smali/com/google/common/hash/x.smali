###### Class com.google.common.hash.x (com.google.common.hash.x)
.class abstract Lcom/google/common/hash/x;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/x$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Random;

.field static final c:I

.field private static final d:Lsun/misc/Unsafe;

.field private static final e:J

.field private static final f:J


# instance fields
.field volatile transient g:[Lcom/google/common/hash/x$b;

.field volatile transient h:J

.field volatile transient i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/hash/x;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/hash/x;->b:Ljava/util/Random;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/hash/x;->c:I

    :try_start_18
    invoke-static {}, Lcom/google/common/hash/x;->g()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/x;->d:Lsun/misc/Unsafe;

    const-class v1, Lcom/google/common/hash/x;

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/hash/x;->e:J

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/hash/x;->f:J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic c()Lsun/misc/Unsafe;
    .registers 1

    invoke-static {}, Lcom/google/common/hash/x;->g()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lsun/misc/Unsafe;
    .registers 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    :try_start_5
    new-instance v0, Lcom/google/common/hash/x$a;

    invoke-direct {v0}, Lcom/google/common/hash/x$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_10
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final d(JJ)Z
    .registers 13

    sget-object v0, Lcom/google/common/hash/x;->d:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/hash/x;->e:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final e()Z
    .registers 7

    sget-object v0, Lcom/google/common/hash/x;->d:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/hash/x;->f:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract f(JJ)J
.end method

.method final h(J[IZ)V
    .registers 21

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1b

    sget-object v5, Lcom/google/common/hash/x;->a:Ljava/lang/ThreadLocal;

    new-array v6, v0, [I

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v5, Lcom/google/common/hash/x;->b:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    if-nez v5, :cond_18

    const/4 v5, 0x1

    :cond_18
    aput v5, v6, v4

    goto :goto_1f

    :cond_1b
    aget v5, p3, v4

    move-object/from16 v6, p3

    :goto_1f
    move v7, v5

    const/4 v8, 0x0

    move/from16 v5, p4

    :cond_23
    :goto_23
    iget-object v9, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-eqz v9, :cond_b6

    array-length v10, v9

    if-lez v10, :cond_b6

    add-int/lit8 v11, v10, -0x1

    and-int/2addr v11, v7

    aget-object v11, v9, v11

    if-nez v11, :cond_63

    iget v9, v1, Lcom/google/common/hash/x;->i:I

    if-nez v9, :cond_61

    new-instance v9, Lcom/google/common/hash/x$b;

    invoke-direct {v9, v2, v3}, Lcom/google/common/hash/x$b;-><init>(J)V

    iget v10, v1, Lcom/google/common/hash/x;->i:I

    if-nez v10, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/hash/x;->e()Z

    move-result v10

    if-eqz v10, :cond_61

    :try_start_44
    iget-object v10, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-eqz v10, :cond_56

    array-length v11, v10

    if-lez v11, :cond_56

    add-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v7

    aget-object v12, v10, v11

    if-nez v12, :cond_56

    aput-object v9, v10, v11
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_5d

    const/4 v9, 0x1

    goto :goto_57

    :cond_56
    const/4 v9, 0x0

    :goto_57
    iput v4, v1, Lcom/google/common/hash/x;->i:I

    if-eqz v9, :cond_23

    goto/16 :goto_ee

    :catchall_5d
    move-exception v0

    iput v4, v1, Lcom/google/common/hash/x;->i:I

    throw v0

    :cond_61
    :goto_61
    const/4 v8, 0x0

    goto :goto_a9

    :cond_63
    if-nez v5, :cond_67

    const/4 v5, 0x1

    goto :goto_a9

    :cond_67
    iget-wide v12, v11, Lcom/google/common/hash/x$b;->c:J

    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/google/common/hash/x;->f(JJ)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/common/hash/x$b;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_75

    goto/16 :goto_ee

    :cond_75
    sget v11, Lcom/google/common/hash/x;->c:I

    if-ge v10, v11, :cond_61

    iget-object v11, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-eq v11, v9, :cond_7e

    goto :goto_61

    :cond_7e
    if-nez v8, :cond_82

    const/4 v8, 0x1

    goto :goto_a9

    :cond_82
    iget v11, v1, Lcom/google/common/hash/x;->i:I

    if-nez v11, :cond_a9

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/hash/x;->e()Z

    move-result v11

    if-eqz v11, :cond_a9

    :try_start_8c
    iget-object v8, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-ne v8, v9, :cond_a0

    shl-int/lit8 v8, v10, 0x1

    new-array v8, v8, [Lcom/google/common/hash/x$b;

    const/4 v11, 0x0

    :goto_95
    if-ge v11, v10, :cond_9e

    aget-object v12, v9, v11

    aput-object v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_95

    :cond_9e
    iput-object v8, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;
    :try_end_a0
    .catchall {:try_start_8c .. :try_end_a0} :catchall_a5

    :cond_a0
    iput v4, v1, Lcom/google/common/hash/x;->i:I

    const/4 v8, 0x0

    goto/16 :goto_23

    :catchall_a5
    move-exception v0

    iput v4, v1, Lcom/google/common/hash/x;->i:I

    throw v0

    :cond_a9
    :goto_a9
    shl-int/lit8 v9, v7, 0xd

    xor-int/2addr v7, v9

    ushr-int/lit8 v9, v7, 0x11

    xor-int/2addr v7, v9

    shl-int/lit8 v9, v7, 0x5

    xor-int/2addr v7, v9

    aput v7, v6, v4

    goto/16 :goto_23

    :cond_b6
    iget v10, v1, Lcom/google/common/hash/x;->i:I

    if-nez v10, :cond_e2

    iget-object v10, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-ne v10, v9, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/hash/x;->e()Z

    move-result v10

    if-eqz v10, :cond_e2

    :try_start_c4
    iget-object v10, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;

    if-ne v10, v9, :cond_d8

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/common/hash/x$b;

    and-int/lit8 v10, v7, 0x1

    new-instance v11, Lcom/google/common/hash/x$b;

    invoke-direct {v11, v2, v3}, Lcom/google/common/hash/x$b;-><init>(J)V

    aput-object v11, v9, v10

    iput-object v9, v1, Lcom/google/common/hash/x;->g:[Lcom/google/common/hash/x$b;
    :try_end_d6
    .catchall {:try_start_c4 .. :try_end_d6} :catchall_de

    const/4 v9, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v9, 0x0

    :goto_d9
    iput v4, v1, Lcom/google/common/hash/x;->i:I

    if-eqz v9, :cond_23

    goto :goto_ee

    :catchall_de
    move-exception v0

    iput v4, v1, Lcom/google/common/hash/x;->i:I

    throw v0

    :cond_e2
    iget-wide v9, v1, Lcom/google/common/hash/x;->h:J

    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/google/common/hash/x;->f(JJ)J

    move-result-wide v11

    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/google/common/hash/x;->d(JJ)Z

    move-result v9

    if-eqz v9, :cond_23

    :goto_ee
    return-void
.end method

###### Class com.google.common.hash.x.a (com.google.common.hash.x$a)
.class Lcom/google/common/hash/x$a;
.super Ljava/lang/Object;
.source "Striped64.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/x;->g()Lsun/misc/Unsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsun/misc/Unsafe;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    new-instance v0, Ljava/lang/NoSuchFieldError;

    const-string v1, "the Unsafe"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/hash/x$a;->a()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.hash.x.b (com.google.common.hash.x$b)
.class final Lcom/google/common/hash/x$b;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:J


# instance fields
.field volatile c:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/google/common/hash/x;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/x$b;->a:Lsun/misc/Unsafe;

    const-class v1, Lcom/google/common/hash/x$b;

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/hash/x$b;->b:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/common/hash/x$b;->c:J

    return-void
.end method


# virtual methods
.method final a(JJ)Z
    .registers 13

    sget-object v0, Lcom/google/common/hash/x$b;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/hash/x$b;->b:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
