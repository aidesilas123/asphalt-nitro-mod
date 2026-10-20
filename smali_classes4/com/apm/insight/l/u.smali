###### Class com.apm.insight.l.u (com.apm.insight.l.u)
.class public Lcom/apm/insight/l/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    const/4 p0, 0x1

    return p0

    :catchall_5
    const/4 p0, 0x0

    return p0
.end method
