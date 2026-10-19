###### Class com.apm.insight.f.b (com.apm.insight.f.b)
.class public final Lcom/apm/insight/f/b;
.super Ljava/lang/Object;


# direct methods
.method private static a([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1b

    array-length v0, p0

    if-gtz v0, :cond_6

    goto :goto_1b

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b
    array-length v1, p0

    if-ge p1, v1, :cond_16

    aget-object v1, p0, p1

    invoke-static {v1, v0}, Lcom/apm/insight/l/v;->a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/apm/insight/f/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/apm/insight/runtime/p;->b()Lcom/apm/insight/runtime/u;

    move-result-object v0

    new-instance v9, Lcom/apm/insight/f/b$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/apm/insight/f/b$2;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_15

    :catchall_15
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "core_exception_monitor"

    invoke-static {p0, p1, p2, v0}, Lcom/apm/insight/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/apm/insight/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V
    .registers 13
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/apm/insight/runtime/p;->b()Lcom/apm/insight/runtime/u;

    move-result-object v0

    new-instance v7, Lcom/apm/insight/f/b$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/apm/insight/f/b$1;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/apm/insight/entity/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apm/insight/entity/c;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_23
    const-string p0, "custom"

    invoke-virtual {p1, p0, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_28

    :catchall_28
    :cond_28
    return-void
.end method

.method static synthetic a([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/apm/insight/f/b;->b([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/apm/insight/runtime/p;->b()Lcom/apm/insight/runtime/u;

    move-result-object v0

    new-instance v7, Lcom/apm/insight/f/b$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/apm/insight/f/b$3;-><init>([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V
    .registers 13
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v5, "EnsureNotReachHere"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/apm/insight/f/b;->c(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/apm/insight/f/b;->c(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_50

    :try_start_2
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_8

    goto :goto_50

    :cond_8
    aget-object v2, p0, p1

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-static {p0, p1}, Lcom/apm/insight/f/b;->a([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-void

    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/entity/c;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/c;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/apm/insight/f/b;->a(Ljava/util/Map;Lcom/apm/insight/entity/c;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object p1

    sget-object p3, Lcom/apm/insight/CrashType;->ENSURE:Lcom/apm/insight/CrashType;

    invoke-virtual {p1, p3, p0}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;

    invoke-static {p0}, Lcom/apm/insight/k/g;->a(Lcom/apm/insight/entity/c;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[report] "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apm/insight/l/q;->b(Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p0

    invoke-static {p0}, Lcom/apm/insight/l/q;->b(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-static {p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, p2

    move v6, p3

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/entity/c;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/c;

    move-result-object p3

    if-eqz p0, :cond_33

    const-string p5, "exception_line_num"

    invoke-static {p0, p1, v0}, Lcom/apm/insight/entity/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p3, p5, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    invoke-static {p4, p3}, Lcom/apm/insight/f/b;->a(Ljava/util/Map;Lcom/apm/insight/entity/c;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object p1

    sget-object p4, Lcom/apm/insight/CrashType;->ENSURE:Lcom/apm/insight/CrashType;

    invoke-virtual {p1, p4, p3}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;

    invoke-static {p0, p3}, Lcom/apm/insight/k/g;->a(Ljava/lang/Object;Lcom/apm/insight/entity/c;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[reportException] "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apm/insight/l/q;->b(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p0

    invoke-static {p0}, Lcom/apm/insight/l/q;->b(Ljava/lang/Throwable;)V

    :goto_5b
    return-void
.end method

###### Class com.apm.insight.f.b.AnonymousClass1 (com.apm.insight.f.b$1)
.class final Lcom/apm/insight/f/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/apm/insight/f/b$1;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/apm/insight/f/b$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/apm/insight/f/b$1;->c:Z

    iput-object p4, p0, Lcom/apm/insight/f/b$1;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/apm/insight/f/b$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v1, p0, Lcom/apm/insight/f/b$1;->a:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/apm/insight/f/b$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/apm/insight/f/b$1;->c:Z

    iget-object v4, p0, Lcom/apm/insight/f/b$1;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/apm/insight/f/b$1;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {v0 .. v5}, Lcom/apm/insight/f/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

###### Class com.apm.insight.f.b.AnonymousClass2 (com.apm.insight.f.b$2)
.class final Lcom/apm/insight/f/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/f/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/apm/insight/f/b$2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/apm/insight/f/b$2;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/apm/insight/f/b$2;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/apm/insight/f/b$2;->d:Z

    iput-object p5, p0, Lcom/apm/insight/f/b$2;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/apm/insight/f/b$2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/apm/insight/f/b$2;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/apm/insight/f/b$2;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/apm/insight/f/b$2;->b:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/apm/insight/f/b$2;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/apm/insight/f/b$2;->d:Z

    iget-object v4, p0, Lcom/apm/insight/f/b$2;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/apm/insight/f/b$2;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/apm/insight/f/b$2;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/apm/insight/f/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.apm.insight.f.b.AnonymousClass3 (com.apm.insight.f.b$3)
.class final Lcom/apm/insight/f/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/f/b;->a([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/StackTraceElement;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    iput-object p1, p0, Lcom/apm/insight/f/b$3;->a:[Ljava/lang/StackTraceElement;

    iput p2, p0, Lcom/apm/insight/f/b$3;->b:I

    iput-object p3, p0, Lcom/apm/insight/f/b$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/apm/insight/f/b$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/apm/insight/f/b$3;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/apm/insight/f/b$3;->a:[Ljava/lang/StackTraceElement;

    iget v1, p0, Lcom/apm/insight/f/b$3;->b:I

    iget-object v2, p0, Lcom/apm/insight/f/b$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/apm/insight/f/b$3;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/apm/insight/f/b$3;->e:Ljava/util/Map;

    const-string v4, "core_exception_monitor"

    invoke-static/range {v0 .. v5}, Lcom/apm/insight/f/b;->a([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
