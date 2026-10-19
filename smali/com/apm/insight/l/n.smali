###### Class com.apm.insight.l.n (com.apm.insight.l.n)
.class public Lcom/apm/insight/l/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/l/n$b;,
        Lcom/apm/insight/l/n$a;
    }
.end annotation


# static fields
.field static final a:Lcom/apm/insight/l/n$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_d

    new-instance v0, Lcom/apm/insight/l/n$b;

    invoke-direct {v0, v1}, Lcom/apm/insight/l/n$b;-><init>(Lcom/apm/insight/l/n$1;)V

    goto :goto_12

    :cond_d
    new-instance v0, Lcom/apm/insight/l/n$a;

    invoke-direct {v0, v1}, Lcom/apm/insight/l/n$a;-><init>(Lcom/apm/insight/l/n$1;)V

    :goto_12
    sput-object v0, Lcom/apm/insight/l/n;->a:Lcom/apm/insight/l/n$a;

    return-void
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .registers 3

    sget-object v0, Lcom/apm/insight/l/n;->a:Lcom/apm/insight/l/n$a;

    invoke-virtual {v0, p0}, Lcom/apm/insight/l/n$a;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.apm.insight.l.n.AnonymousClass1 (com.apm.insight.l.n$1)
.class synthetic Lcom/apm/insight/l/n$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.apm.insight.l.n.a (com.apm.insight.l.n$a)
.class Lcom/apm/insight/l/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/n;
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

.method synthetic constructor <init>(Lcom/apm/insight/l/n$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/apm/insight/l/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

###### Class com.apm.insight.l.n.b (com.apm.insight.l.n$b)
.class Lcom/apm/insight/l/n$b;
.super Lcom/apm/insight/l/n$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apm/insight/l/n$a;-><init>(Lcom/apm/insight/l/n$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apm/insight/l/n$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/apm/insight/l/n$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .registers 4

    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
