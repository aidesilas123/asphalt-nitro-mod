###### Class com.apm.insight.l.c (com.apm.insight.l.c)
.class public Lcom/apm/insight/l/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/l/c$b;,
        Lcom/apm/insight/l/c$a;
    }
.end annotation


# static fields
.field static final a:Lcom/apm/insight/l/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_d

    new-instance v0, Lcom/apm/insight/l/c$b;

    invoke-direct {v0, v1}, Lcom/apm/insight/l/c$b;-><init>(Lcom/apm/insight/l/c$1;)V

    goto :goto_12

    :cond_d
    new-instance v0, Lcom/apm/insight/l/c$a;

    invoke-direct {v0, v1}, Lcom/apm/insight/l/c$a;-><init>(Lcom/apm/insight/l/c$1;)V

    :goto_12
    sput-object v0, Lcom/apm/insight/l/c;->a:Lcom/apm/insight/l/c$a;

    return-void
.end method

.method public static a(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    sget-object v0, Lcom/apm/insight/l/c;->a:Lcom/apm/insight/l/c$a;

    invoke-virtual {v0, p0}, Lcom/apm/insight/l/c$a;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    sget-object v0, Lcom/apm/insight/l/c;->a:Lcom/apm/insight/l/c$a;

    invoke-virtual {v0, p0}, Lcom/apm/insight/l/c$a;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    sget-object v0, Lcom/apm/insight/l/c;->a:Lcom/apm/insight/l/c$a;

    invoke-virtual {v0, p0}, Lcom/apm/insight/l/c$a;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

###### Class com.apm.insight.l.c.AnonymousClass1 (com.apm.insight.l.c$1)
.class synthetic Lcom/apm/insight/l/c$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.apm.insight.l.c.a (com.apm.insight.l.c$a)
.class Lcom/apm/insight/l/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apm/insight/l/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/apm/insight/l/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public b(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public c(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

###### Class com.apm.insight.l.c.b (com.apm.insight.l.c$b)
.class Lcom/apm/insight/l/c$b;
.super Lcom/apm/insight/l/c$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apm/insight/l/c$a;-><init>(Lcom/apm/insight/l/c$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apm/insight/l/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/apm/insight/l/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result p1

    return p1
.end method

.method public b(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result p1

    return p1
.end method

.method public c(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result p1

    return p1
.end method
