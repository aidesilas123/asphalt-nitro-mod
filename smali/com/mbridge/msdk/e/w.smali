###### Class com.mbridge.msdk.e.w (com.mbridge.msdk.e.w)
.class public final Lcom/mbridge/msdk/e/w;
.super Ljava/lang/Object;
.source "TrackConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/e/w$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lcom/mbridge/msdk/e/o;

.field public final h:Lcom/mbridge/msdk/e/d;

.field public final i:Lcom/mbridge/msdk/e/v;

.field public final j:Lcom/mbridge/msdk/e/f;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/e/w$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->a(Lcom/mbridge/msdk/e/w$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/e/w;->a:I

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->b(Lcom/mbridge/msdk/e/w$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/e/w;->b:I

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->c(Lcom/mbridge/msdk/e/w$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/e/w;->c:I

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->d(Lcom/mbridge/msdk/e/w$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/e/w;->d:I

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->e(Lcom/mbridge/msdk/e/w$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/e/w;->e:I

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->f(Lcom/mbridge/msdk/e/w$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/e/w;->f:I

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->g(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/e/w;->g:Lcom/mbridge/msdk/e/o;

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->h(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/e/w;->h:Lcom/mbridge/msdk/e/d;

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->i(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/v;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/e/w;->i:Lcom/mbridge/msdk/e/v;

    invoke-static {p1}, Lcom/mbridge/msdk/e/w$a;->j(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/f;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/e/w;->j:Lcom/mbridge/msdk/e/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/e/w$a;Lcom/mbridge/msdk/e/w$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/e/w;-><init>(Lcom/mbridge/msdk/e/w$a;)V

    return-void
.end method

###### Class com.mbridge.msdk.e.w.AnonymousClass1 (com.mbridge.msdk.e.w$1)
.class final synthetic Lcom/mbridge/msdk/e/w$1;
.super Ljava/lang/Object;
.source "TrackConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.e.w.a (com.mbridge.msdk.e.w$a)
.class public final Lcom/mbridge/msdk/e/w$a;
.super Ljava/lang/Object;
.source "TrackConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/mbridge/msdk/e/o;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/mbridge/msdk/e/d;

.field private i:Lcom/mbridge/msdk/e/v;

.field private j:Lcom/mbridge/msdk/e/f;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/mbridge/msdk/e/w$a;->a:I

    const/16 v1, 0x3a98

    iput v1, p0, Lcom/mbridge/msdk/e/w$a;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/mbridge/msdk/e/w$a;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/e/w$a;->e:I

    iput v0, p0, Lcom/mbridge/msdk/e/w$a;->f:I

    const v0, 0x240c8400

    iput v0, p0, Lcom/mbridge/msdk/e/w$a;->g:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/e/w$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/e/w$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/e/w$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/e/w$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/e/w$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/e/w$a;->c:I

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/e/w$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/e/w$a;->e:I

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/e/w$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/e/w$a;->f:I

    return p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/e/w$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/e/w$a;->g:I

    return p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/o;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/w$a;->d:Lcom/mbridge/msdk/e/o;

    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/d;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/w$a;->h:Lcom/mbridge/msdk/e/d;

    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/v;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/w$a;->i:Lcom/mbridge/msdk/e/v;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/e/w$a;)Lcom/mbridge/msdk/e/f;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/w$a;->j:Lcom/mbridge/msdk/e/f;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    if-gtz p1, :cond_7

    const/16 p1, 0x32

    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->a:I

    goto :goto_9

    :cond_7
    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->a:I

    :goto_9
    return-object p0
.end method

.method public final a(ILcom/mbridge/msdk/e/o;)Lcom/mbridge/msdk/e/w$a;
    .registers 3

    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->c:I

    iput-object p2, p0, Lcom/mbridge/msdk/e/w$a;->d:Lcom/mbridge/msdk/e/o;

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/e/d;)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/e/w$a;->h:Lcom/mbridge/msdk/e/d;

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/e/f;)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/e/w$a;->j:Lcom/mbridge/msdk/e/f;

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/e/v;)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/e/w$a;->i:Lcom/mbridge/msdk/e/v;

    return-object p0
.end method

.method public final a()Lcom/mbridge/msdk/e/w;
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/w$a;->h:Lcom/mbridge/msdk/e/d;

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TrackManager"

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "decorate can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/e/w$a;->i:Lcom/mbridge/msdk/e/v;

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "responseHandler can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/mbridge/msdk/e/w$a;->d:Lcom/mbridge/msdk/e/o;

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/mbridge/msdk/e/w$a;->d:Lcom/mbridge/msdk/e/o;

    invoke-virtual {v0}, Lcom/mbridge/msdk/e/o;->c()Lcom/mbridge/msdk/e/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/e/y;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_38
    sget-boolean v0, Lcom/mbridge/msdk/e/a;->a:Z

    if-eqz v0, :cond_41

    const-string v0, "networkStackConfig or stack can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    new-instance v0, Lcom/mbridge/msdk/e/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/e/w;-><init>(Lcom/mbridge/msdk/e/w$a;Lcom/mbridge/msdk/e/w$1;)V

    return-object v0
.end method

.method public final b(I)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    if-gez p1, :cond_7

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->b:I

    goto :goto_9

    :cond_7
    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->b:I

    :goto_9
    return-object p0
.end method

.method public final c(I)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    if-gtz p1, :cond_6

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->e:I

    goto :goto_8

    :cond_6
    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->e:I

    :goto_8
    return-object p0
.end method

.method public final d(I)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    if-gez p1, :cond_7

    const/16 p1, 0x32

    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->f:I

    goto :goto_9

    :cond_7
    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->f:I

    :goto_9
    return-object p0
.end method

.method public final e(I)Lcom/mbridge/msdk/e/w$a;
    .registers 2

    if-gez p1, :cond_8

    const p1, 0x240c8400

    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->g:I

    goto :goto_a

    :cond_8
    iput p1, p0, Lcom/mbridge/msdk/e/w$a;->g:I

    :goto_a
    return-object p0
.end method
