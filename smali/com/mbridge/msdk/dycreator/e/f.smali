###### Class com.mbridge.msdk.dycreator.e.f (com.mbridge.msdk.dycreator.e.f)
.class public Lcom/mbridge/msdk/dycreator/e/f;
.super Ljava/lang/Object;
.source "InflaterUtil.java"


# static fields
.field private static volatile a:Lcom/mbridge/msdk/dycreator/e/f;


# instance fields
.field private b:Lcom/mbridge/msdk/dycreator/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/e/f;->b:Lcom/mbridge/msdk/dycreator/a/b;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/e/f;->b:Lcom/mbridge/msdk/dycreator/a/b;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/dycreator/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mbridge/msdk/dycreator/e/f;
    .registers 3

    sget-object v0, Lcom/mbridge/msdk/dycreator/e/f;->a:Lcom/mbridge/msdk/dycreator/e/f;

    if-nez v0, :cond_1b

    const-class v0, Lcom/mbridge/msdk/dycreator/e/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/dycreator/e/f;->a:Lcom/mbridge/msdk/dycreator/e/f;

    if-nez v1, :cond_16

    new-instance v1, Lcom/mbridge/msdk/dycreator/e/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/dycreator/e/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mbridge/msdk/dycreator/e/f;->a:Lcom/mbridge/msdk/dycreator/e/f;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/mbridge/msdk/dycreator/e/f;->a:Lcom/mbridge/msdk/dycreator/e/f;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_37

    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_15

    return-object p1

    :cond_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_37

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_2b

    return-object v3

    :cond_2b
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_34

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, p2}, Lcom/mbridge/msdk/dycreator/e/f;->a(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_37
    :goto_37
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/e/f;->b:Lcom/mbridge/msdk/dycreator/a/b;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/dycreator/a/b;->f(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method
