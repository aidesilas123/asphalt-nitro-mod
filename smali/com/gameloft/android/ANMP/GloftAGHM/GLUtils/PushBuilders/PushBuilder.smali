###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushBuilder (com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushBuilder)
.class public abstract Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;
.super Ljava/lang/Object;
.source "PushBuilder.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:I

.field g:J

.field h:Z

.field i:I

.field j:[Ljava/lang/String;

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Ljava/lang/String;

.field q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->d:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->e:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->f:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->g:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->h:Z

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->i:I

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->j:[Ljava/lang/String;

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->k:I

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->l:I

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->m:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->n:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->o:Z

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->p:Ljava/lang/String;

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->q:I

    return-void
.end method

.method public static getBuilder(Landroid/content/Context;)Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_c

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/a;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_c
    const/16 v1, 0x10

    if-ge v0, v1, :cond_16

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/b;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_16
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_20

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/d;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/d;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_20
    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/c;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/app/Notification;
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->h:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->p:Ljava/lang/String;

    return-void
.end method

.method public d(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->d:Landroid/app/PendingIntent;

    return-void
.end method

.method public e(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->e:Landroid/app/PendingIntent;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b:Ljava/lang/String;

    return-void
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->q:I

    return-void
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->i:I

    return-void
.end method

.method public i([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->j:[Ljava/lang/String;

    return-void
.end method

.method public j(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->g:J

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    return-void
.end method
