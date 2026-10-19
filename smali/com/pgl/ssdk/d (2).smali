###### Class com.pgl.ssdk.C1646d (com.pgl.ssdk.d)
.class public Lcom/pgl/ssdk/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:D = -1.0


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    sget-wide v0, Lcom/pgl/ssdk/d;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_e

    double-to-int p0, v0

    :goto_9
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :try_start_e
    const-string v0, "com.android.internal.os.PowerProfile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_47

    const-string v4, "getAveragePower"

    :try_start_2a
    new-array v5, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "battery.capacity"

    aput-object v4, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_47

    :catchall_47
    sput-wide v2, Lcom/pgl/ssdk/d;->a:D

    double-to-int p0, v2

    goto :goto_9
.end method
