###### Class com.apm.insight.nativecrash.b (com.apm.insight.nativecrash.b)
.class public Lcom/apm/insight/nativecrash/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()I
    .registers 1

    const/4 v0, 0x6

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/apm/insight/nativecrash/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/ICrashCallback;

    :try_start_18
    instance-of v2, v1, Lcom/apm/insight/b;

    if-eqz v2, :cond_24

    check-cast v1, Lcom/apm/insight/b;

    sget-object v2, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-virtual {v1, v2, p0, p2, p1}, Lcom/apm/insight/b;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_24
    sget-object v2, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p0, v3}, Lcom/apm/insight/ICrashCallback;->onCrash(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_c

    :catchall_2b
    move-exception v1

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v1}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_36
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "main"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lcom/apm/insight/l/v;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v0, :cond_6a

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    invoke-virtual {v4, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    :cond_5c
    aget-object p0, v2, v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lcom/apm/insight/l/v;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_6a
    :try_start_6a
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9e

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9e

    invoke-virtual {v3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_9e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-static {p0}, Lcom/apm/insight/l/v;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0
    :try_end_a8
    .catchall {:try_start_6a .. :try_end_a8} :catchall_a9

    return-object p0

    :catchall_a9
    move-exception p0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v0

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v0, v2, p0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b3
    return-object v1
.end method

.method public static onNativeCrash(Ljava/lang/String;)V
    .registers 12
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "crash_cost"

    const-string v1, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "[onNativeCrash] enter"

    invoke-static {v4}, Lcom/apm/insight/l/q;->a(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :try_start_e
    invoke-static {}, Lcom/apm/insight/k/b;->a()Lcom/apm/insight/k/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apm/insight/k/b;->b()V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/apm/insight/l/o;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/apm/insight/l/o;->e(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v6

    sget-object v7, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    new-instance v8, Lcom/apm/insight/nativecrash/b$1;

    invoke-direct {v8, p0, v5, v2, v3}, Lcom/apm/insight/nativecrash/b$1;-><init>(Ljava/lang/String;Ljava/io/File;J)V

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/entity/a;Lcom/apm/insight/runtime/a/c$a;Z)Lcom/apm/insight/entity/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_7f

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-eqz v8, :cond_7f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_ab

    sub-long v2, v8, v2

    :try_start_48
    const-string v10, "java_end"

    invoke-virtual {v7, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lcom/apm/insight/entity/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_5e

    :catchall_5e
    :try_start_5e
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v7, v2}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Lorg/json/JSONObject;Z)V

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7f
    .catchall {:try_start_5e .. :try_end_7f} :catchall_ab

    :cond_7f
    :try_start_7f
    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apm/insight/l/o;->a()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/apm/insight/nativecrash/e;

    invoke-direct {v2, v0}, Lcom/apm/insight/nativecrash/e;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lcom/apm/insight/nativecrash/e;->b(Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/apm/insight/nativecrash/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/apm/insight/nativecrash/e;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_aa
    .catchall {:try_start_7f .. :try_end_aa} :catchall_e4

    goto :goto_e0

    :catchall_ab
    move-exception v0

    :try_start_ac
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_e8

    :try_start_b5
    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apm/insight/l/o;->a()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/apm/insight/nativecrash/e;

    invoke-direct {v2, v0}, Lcom/apm/insight/nativecrash/e;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lcom/apm/insight/nativecrash/e;->b(Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/apm/insight/nativecrash/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/apm/insight/nativecrash/e;->a()Ljava/lang/String;

    move-result-object v2

    :goto_e0
    invoke-static {v0, v2, p0}, Lcom/apm/insight/nativecrash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_b5 .. :try_end_e3} :catchall_e4

    goto :goto_e7

    :catchall_e4
    invoke-static {v1, v4, p0}, Lcom/apm/insight/nativecrash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    :goto_e7
    return-void

    :catchall_e8
    move-exception v0

    :try_start_e9
    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11b

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/apm/insight/l/o;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcom/apm/insight/nativecrash/e;

    invoke-direct {v3, v2}, Lcom/apm/insight/nativecrash/e;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v2}, Lcom/apm/insight/nativecrash/e;->b(Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/apm/insight/nativecrash/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/apm/insight/nativecrash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_e9 .. :try_end_117} :catchall_118

    goto :goto_11b

    :catchall_118
    invoke-static {v1, v4, p0}, Lcom/apm/insight/nativecrash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    :goto_11b
    throw v0
.end method

###### Class com.apm.insight.nativecrash.b.AnonymousClass1 (com.apm.insight.nativecrash.b$1)
.class final Lcom/apm/insight/nativecrash/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/runtime/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/nativecrash/b;->onNativeCrash(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;J)V
    .registers 5

    iput-object p1, p0, Lcom/apm/insight/nativecrash/b$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/apm/insight/nativecrash/b$1;->b:Ljava/io/File;

    iput-wide p3, p0, Lcom/apm/insight/nativecrash/b$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;
    .registers 7

    const/4 v0, 0x1

    const-string v1, "true"

    if-eq p1, v0, :cond_7c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    goto/16 :goto_9d

    :cond_10
    invoke-static {}, Lcom/apm/insight/i;->g()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_9d

    :cond_1d
    invoke-static {}, Lcom/apm/insight/runtime/a;->e()Z

    move-result p1

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/apm/insight/nativecrash/b$1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/apm/insight/l/v;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "all_thread_stacks"

    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "has_all_thread_stack"

    :goto_30
    invoke-virtual {p2, p1, v1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    goto :goto_9d

    :cond_34
    invoke-static {}, Lcom/apm/insight/b/g;->b()Lcom/apm/insight/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/b/h;->c()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/apm/insight/b/g;->b()Lcom/apm/insight/b/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/apm/insight/b/h;->a(J)Lcom/apm/insight/b/h$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/b/h$e;->a()Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3, v0, v1}, Lcom/apm/insight/b/k;->a(IJ)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "history_message"

    invoke-virtual {p2, v1, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "current_message"

    invoke-virtual {p2, p1, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "pending_messages"

    invoke-virtual {p2, p1, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/runtime/a;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "disable_looper_monitor"

    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    invoke-static {}, Lcom/apm/insight/c/b;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "npth_force_apm_crash"

    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    goto :goto_9d

    :cond_7c
    iget-object p1, p0, Lcom/apm/insight/nativecrash/b$1;->a:Ljava/lang/String;

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/apm/insight/nativecrash/b$1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/apm/insight/nativecrash/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java_data"

    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_91
    invoke-static {}, Lcom/apm/insight/Npth;->hasCrashWhenNativeCrash()Z

    move-result p1

    if-eqz p1, :cond_98

    goto :goto_9a

    :cond_98
    const-string v1, "false"

    :goto_9a
    const-string p1, "crash_after_crash"

    goto :goto_30

    :cond_9d
    :goto_9d
    return-object p2
.end method

.method public a(ILcom/apm/insight/entity/a;Z)Lcom/apm/insight/entity/a;
    .registers 7

    :try_start_0
    invoke-virtual {p2}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apm/insight/nativecrash/b$1;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, p3, v0}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Lorg/json/JSONObject;Z)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_38

    :catch_2e
    move-exception p3

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v0

    const-string v1, "NPTH_CATCH"

    invoke-virtual {v0, v1, p3}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    if-nez p1, :cond_50

    invoke-static {}, Lcom/apm/insight/a/a;->a()Lcom/apm/insight/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/a/a;->b()V

    invoke-static {}, Lcom/apm/insight/a/a;->a()Lcom/apm/insight/a/a;

    move-result-object p1

    sget-object p3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    iget-wide v0, p0, Lcom/apm/insight/nativecrash/b$1;->c:J

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/apm/insight/a/a;->a(Lcom/apm/insight/CrashType;JLjava/lang/String;)V

    :cond_50
    return-object p2
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
