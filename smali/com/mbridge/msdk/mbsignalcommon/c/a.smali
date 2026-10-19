###### Class com.mbridge.msdk.mbsignalcommon.c.a (com.mbridge.msdk.mbsignalcommon.c.a)
.class public final Lcom/mbridge/msdk/mbsignalcommon/c/a;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/mbsignalcommon/c/a$c;,
        Lcom/mbridge/msdk/mbsignalcommon/c/a$d;,
        Lcom/mbridge/msdk/mbsignalcommon/c/a$a;,
        Lcom/mbridge/msdk/mbsignalcommon/c/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/mbsignalcommon/c/a$a;


# direct methods
.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/c/a$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mbridge/msdk/mbsignalcommon/c/a$c<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/c/a$c;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/c/a$c;-><init>(Ljava/lang/Class;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p0

    new-instance p1, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/mbridge/msdk/mbsignalcommon/c/a;->b(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V

    new-instance p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbsignalcommon/c/a$c;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/c/a;->b(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V

    return-void
.end method

.method private static b(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/c/a;->a:Lcom/mbridge/msdk/mbsignalcommon/c/a$a;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/c/a$a;->a(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    throw p0
.end method

###### Class com.mbridge.msdk.mbsignalcommon.c.a.InterfaceC0413a (com.mbridge.msdk.mbsignalcommon.c.a$a)
.class public interface abstract Lcom/mbridge/msdk/mbsignalcommon/c/a$a;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)Z
.end method

###### Class com.mbridge.msdk.mbsignalcommon.c.a.b (com.mbridge.msdk.mbsignalcommon.c.a$b)
.class public abstract Lcom/mbridge/msdk/mbsignalcommon/c/a$b;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
    }
.end annotation

###### Class com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a (com.mbridge.msdk.mbsignalcommon.c.a$b$a)
.class public final Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
.super Ljava/lang/Throwable;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/c/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;->a:Ljava/lang/Class;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_25
    invoke-super {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0
.end method

###### Class com.mbridge.msdk.mbsignalcommon.c.a.c (com.mbridge.msdk.mbsignalcommon.c.a$c)
.class public final Lcom/mbridge/msdk/mbsignalcommon/c/a$c;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$c;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/mbridge/msdk/mbsignalcommon/c/a$d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/mbridge/msdk/mbsignalcommon/c/a$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$c;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method

###### Class com.mbridge.msdk.mbsignalcommon.c.a.d (com.mbridge.msdk.mbsignalcommon.c.a$d)
.class public final Lcom/mbridge/msdk/mbsignalcommon/c/a$d;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    return-void

    :cond_9
    :goto_9
    :try_start_9
    const-class v1, Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b} :catch_4e
    .catchall {:try_start_9 .. :try_end_b} :catchall_4c

    if-eq p1, v1, :cond_20

    :try_start_d
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_11} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_4e
    .catchall {:try_start_d .. :try_end_11} :catchall_4c

    goto :goto_20

    :catch_12
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1b

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_9

    :cond_20
    :goto_20
    if-lez p4, :cond_45

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p3

    and-int/2addr p3, p4

    if-eq p3, p4, :cond_45

    new-instance p3, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not match modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/mbridge/msdk/mbsignalcommon/c/a;->a(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V

    :cond_45
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_49} :catch_4e
    .catchall {:try_start_13 .. :try_end_49} :catchall_4c

    :goto_49
    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    goto :goto_5e

    :catchall_4c
    move-exception p1

    goto :goto_5f

    :catch_4e
    move-exception p3

    :try_start_4f
    new-instance p4, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    invoke-direct {p4, p3}, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p4, p1}, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;->a(Ljava/lang/Class;)V

    invoke-virtual {p4, p2}, Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;->a(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/mbridge/msdk/mbsignalcommon/c/a;->a(Lcom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_4c

    goto :goto_49

    :goto_5e
    return-void

    :goto_5f
    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    throw p1
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/c/a$d;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method
