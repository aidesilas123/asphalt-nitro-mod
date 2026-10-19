###### Class com.bytedance.sdk.openadsdk.core.model.m (com.bytedance.sdk.openadsdk.core.model.m)
.class public Lcom/bytedance/sdk/openadsdk/core/model/m;
.super Ljava/lang/Object;
.source "DynamicClickInfo.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public l:I

.field public m:Lorg/json/JSONObject;

.field public n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Z

.field public p:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/m$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->a(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->a:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->b(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->b:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->c(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->c:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->d(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->d:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->e(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->e:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->f(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->f:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->g(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->g:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->h(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->h:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->i(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->i:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->j(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->j:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->k(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->a:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->n:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->l(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->o:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->m(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->l:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->n(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->m:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->o(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m;->p:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/m$a;Lcom/bytedance/sdk/openadsdk/core/model/m$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/m;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.model.m.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.model.m$1)
.class synthetic Lcom/bytedance/sdk/openadsdk/core/model/m$1;
.super Ljava/lang/Object;
.source "DynamicClickInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.openadsdk.core.model.m.a (com.bytedance.sdk.openadsdk.core.model.m$a)
.class public Lcom/bytedance/sdk/openadsdk/core/model/m$a;
.super Ljava/lang/Object;
.source "DynamicClickInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lorg/json/JSONObject;

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->a:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->g:F

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->f:F

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->e:F

    return p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->d:F

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->b:J

    return-wide v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->h:I

    return p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->i:I

    return p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->j:I

    return p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->k:I

    return p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->p:Z

    return p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->m:I

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->n:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/core/model/m$a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->o:I

    return p0
.end method


# virtual methods
.method public a(F)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->d:F

    return-object p0
.end method

.method public a(I)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->o:I

    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->b:J

    return-object p0
.end method

.method public a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/b/c$a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/model/m$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->n:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->p:Z

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/model/m;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/m;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/m$a;Lcom/bytedance/sdk/openadsdk/core/model/m$1;)V

    return-object v0
.end method

.method public b(F)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->e:F

    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->m:I

    return-object p0
.end method

.method public b(J)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->c:J

    return-object p0
.end method

.method public c(F)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->f:F

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->h:I

    return-object p0
.end method

.method public d(F)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->g:F

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->i:I

    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->j:I

    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/model/m$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/m$a;->k:I

    return-object p0
.end method
