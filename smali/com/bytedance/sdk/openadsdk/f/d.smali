###### Class com.bytedance.sdk.openadsdk.f.d (com.bytedance.sdk.openadsdk.f.d)
.class public Lcom/bytedance/sdk/openadsdk/f/d;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/f/d$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/n;)Lcom/bytedance/sdk/component/d/j;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Lcom/bytedance/sdk/openadsdk/core/model/n;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/component/d/n;
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a()Lcom/bytedance/sdk/component/d/n;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class com.bytedance.sdk.openadsdk.f.d.a (com.bytedance.sdk.openadsdk.f.d$a)
.class final Lcom/bytedance/sdk/openadsdk/f/d$a;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/component/d/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/d/n;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/f/d$a;->a:Lcom/bytedance/sdk/component/d/n;

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/component/d/j;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/z;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/e;-><init>()V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/d/j;->a(Lcom/bytedance/sdk/component/d/s;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/model/n;)Lcom/bytedance/sdk/component/d/j;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->b(Lcom/bytedance/sdk/openadsdk/core/model/n;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Lcom/bytedance/sdk/component/d/n;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/d$a;->a:Lcom/bytedance/sdk/component/d/n;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/bytedance/sdk/component/d/n;
    .registers 6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v1, 0x5000000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0xa00000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/component/d/c/a/a;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x2800000

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/bytedance/sdk/component/d/c/a/a;-><init>(IJLjava/io/File;)V

    new-instance v0, Lcom/bytedance/sdk/component/d/c/e$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/e$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/e$a;->a(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/c/e$a;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/e$a;->a(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/d/c/e$a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d$a$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/f/d$a$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/e$a;->a(Lcom/bytedance/sdk/component/d/d;)Lcom/bytedance/sdk/component/d/c/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/c/e$a;->a()Lcom/bytedance/sdk/component/d/c/e;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/d/c/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/d/m;)Lcom/bytedance/sdk/component/d/n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/d$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/core/model/n;)Lcom/bytedance/sdk/component/d/j;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/d$a;->a:Lcom/bytedance/sdk/component/d/n;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/n;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/n;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/j;->a(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/n;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/j;->b(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/j;->d(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/j;->c(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/n;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/d/j;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Lcom/bytedance/sdk/component/d/j;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/d$a;->a:Lcom/bytedance/sdk/component/d/n;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/d/n;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/d/j;->d(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/d/j;->c(I)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Lcom/bytedance/sdk/component/d/j;)Lcom/bytedance/sdk/component/d/j;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/d$a;->a:Lcom/bytedance/sdk/component/d/n;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/d/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/d$a;->a:Lcom/bytedance/sdk/component/d/n;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/d/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class com.bytedance.sdk.openadsdk.f.d.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.f.d$a$1)
.class final Lcom/bytedance/sdk/openadsdk/f/d$a$1;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/d$a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/d/b/e;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/d/b/d;
    .registers 6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoaderWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/d/b/e;->c(J)V

    :cond_12
    new-instance v0, Lcom/bytedance/sdk/component/d/b/d;

    const v1, 0x181cd

    const-string v2, "net failed"

    invoke-direct {v0, v1, p2, v2}, Lcom/bytedance/sdk/component/d/b/d;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/b/d;->a(Lcom/bytedance/sdk/component/d/g;)V

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/component/d/e;Lcom/bytedance/sdk/component/b/a/o;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/d/e;",
            "Lcom/bytedance/sdk/component/b/a/o;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/e;->b()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/b/a/o;->g()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/f;->a()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_26

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/f;->b(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_23

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_26
    return-object p2

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic a(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/f;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/d$a$1;->b(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/b/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/component/d/e;)Lcom/bytedance/sdk/component/d/b/d;
    .registers 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/c;->a()Lcom/bytedance/sdk/openadsdk/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/c;->b()Lcom/bytedance/sdk/component/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/a;->e()Lcom/bytedance/sdk/component/b/a/k;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/b/a/m$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/b/a/m$a;-><init>()V

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/b/a/m$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/m$a;->a()Lcom/bytedance/sdk/component/b/a/m$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/b/a/m$a;->b()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/e;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    new-instance v2, Lcom/bytedance/sdk/component/d/b/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/d/b/e;-><init>()V

    goto :goto_2f

    :cond_2e
    move-object v2, v3

    :goto_2f
    if-eqz v2, :cond_38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/d/b/e;->a(J)V

    :cond_38
    :try_start_38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/b/a/k;->a(Lcom/bytedance/sdk/component/b/a/m;)Lcom/bytedance/sdk/component/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/b/a/b;->a()Lcom/bytedance/sdk/component/b/a/o;

    move-result-object v3

    if-eqz v2, :cond_49

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/d/b/e;->b(J)V

    :cond_49
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/f/d$a$1;->a(Lcom/bytedance/sdk/component/d/e;Lcom/bytedance/sdk/component/b/a/o;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->d()[B

    move-result-object v0

    if-eqz v2, :cond_5e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/d/b/e;->c(J)V

    :cond_5e
    new-instance v1, Lcom/bytedance/sdk/component/d/b/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v4

    const-string v5, ""

    invoke-direct {v1, v4, v0, v5, p1}, Lcom/bytedance/sdk/component/d/b/d;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/b/d;->a(Lcom/bytedance/sdk/component/d/g;)V
    :try_end_6c
    .catchall {:try_start_38 .. :try_end_6c} :catchall_70

    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_70
    move-exception p1

    :try_start_71
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/f/d$a$1;->a(Lcom/bytedance/sdk/component/d/b/e;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/d/b/d;

    move-result-object p1
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_79

    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_79
    move-exception p1

    invoke-static {v3}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method
