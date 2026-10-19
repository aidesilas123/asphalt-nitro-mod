###### Class com.mbridge.msdk.video.dynview.c (com.mbridge.msdk.video.dynview.c)
.class public final Lcom/mbridge/msdk/video/dynview/c;
.super Ljava/lang/Object;
.source "ViewOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/dynview/c$b;,
        Lcom/mbridge/msdk/video/dynview/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/video/dynview/c$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->a(Lcom/mbridge/msdk/video/dynview/c$a;)F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->e:F

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->b(Lcom/mbridge/msdk/video/dynview/c$a;)F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->d:F

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->c(Lcom/mbridge/msdk/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->f:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->d(Lcom/mbridge/msdk/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->g:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->e(Lcom/mbridge/msdk/video/dynview/c$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->f(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->g(Lcom/mbridge/msdk/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->c:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->h(Lcom/mbridge/msdk/video/dynview/c$a;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->h:Landroid/view/View;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->i(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->j(Lcom/mbridge/msdk/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->j:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->k(Lcom/mbridge/msdk/video/dynview/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/c;->k:Z

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->l(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->l:Ljava/util/List;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->m(Lcom/mbridge/msdk/video/dynview/c$a;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c;->m:I

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/c$a;->n(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/video/dynview/c$a;Lcom/mbridge/msdk/video/dynview/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/c;-><init>(Lcom/mbridge/msdk/video/dynview/c$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/c;->d:F

    return v0
.end method

.method public final d()F
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/c;->e:F

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/c;->f:I

    return v0
.end method

.method public final f()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->h:Landroid/view/View;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/c;->c:I

    return v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/c;->j:I

    return v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/c;->g:I

    return v0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/c;->k:Z

    return v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/c;->l:Ljava/util/List;

    return-object v0
.end method

###### Class com.mbridge.msdk.video.dynview.c.AnonymousClass1 (com.mbridge.msdk.video.dynview.c$1)
.class final synthetic Lcom/mbridge/msdk/video/dynview/c$1;
.super Ljava/lang/Object;
.source "ViewOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.video.dynview.c.a (com.mbridge.msdk.video.dynview.c$a)
.class public final Lcom/mbridge/msdk/video/dynview/c$a;
.super Ljava/lang/Object;
.source "ViewOption.java"

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/c$a;)F
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->e:F

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/dynview/c$a;)F
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->d:F

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/dynview/c$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->f:I

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/dynview/c$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->g:I

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/dynview/c$a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/dynview/c$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->c:I

    return p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/dynview/c$a;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/dynview/c$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->j:I

    return p0
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/dynview/c$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/dynview/c$a;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->m:I

    return p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/dynview/c$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$a;->n:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(F)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->d:F

    return-object p0
.end method

.method public final a(I)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->c:I

    return-object p0
.end method

.method public final a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->h:Landroid/view/View;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->i:Ljava/util/List;

    return-object p0
.end method

.method public final a(Z)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->k:Z

    return-object p0
.end method

.method public final a()Lcom/mbridge/msdk/video/dynview/c;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/video/dynview/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/video/dynview/c;-><init>(Lcom/mbridge/msdk/video/dynview/c$a;Lcom/mbridge/msdk/video/dynview/c$1;)V

    return-object v0
.end method

.method public final b(F)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->e:F

    return-object p0
.end method

.method public final b(I)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->f:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->l:Ljava/util/List;

    return-object p0
.end method

.method public final c(I)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->g:I

    return-object p0
.end method

.method public final d(I)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->j:I

    return-object p0
.end method

.method public final e(I)Lcom/mbridge/msdk/video/dynview/c$b;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$a;->m:I

    return-object p0
.end method

###### Class com.mbridge.msdk.video.dynview.c.b (com.mbridge.msdk.video.dynview.c$b)
.class public interface abstract Lcom/mbridge/msdk/video/dynview/c$b;
.super Ljava/lang/Object;
.source "ViewOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(F)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract a(I)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract a(Landroid/view/View;)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract a(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c$b;"
        }
    .end annotation
.end method

.method public abstract a(Z)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract a()Lcom/mbridge/msdk/video/dynview/c;
.end method

.method public abstract b(F)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract b(I)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract b(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract b(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c$b;"
        }
    .end annotation
.end method

.method public abstract c(I)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract d(I)Lcom/mbridge/msdk/video/dynview/c$b;
.end method

.method public abstract e(I)Lcom/mbridge/msdk/video/dynview/c$b;
.end method
