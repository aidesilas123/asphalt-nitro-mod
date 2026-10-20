###### Class com.json.n3 (com.ironsource.n3)
.class public Lcom/ironsource/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ironsource/n3;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private final h:Lcom/ironsource/e5;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->c()Lcom/ironsource/e5;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/n3;->h:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/n3;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/e5;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/n3;->c:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/e5;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/n3;->d:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/e5;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/n3;->e:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/e5;->k()I

    move-result v1

    iput v1, p0, Lcom/ironsource/n3;->f:I

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/n3;->g:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/ironsource/n3;
    .registers 2

    sget-object v0, Lcom/ironsource/n3;->a:Lcom/ironsource/n3;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ironsource/n3;

    invoke-direct {v0, p0}, Lcom/ironsource/n3;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/n3;->a:Lcom/ironsource/n3;

    :cond_b
    sget-object p0, Lcom/ironsource/n3;->a:Lcom/ironsource/n3;

    return-object p0
.end method

.method public static g()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ironsource/n3;->a:Lcom/ironsource/n3;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)F
    .registers 3

    iget-object v0, p0, Lcom/ironsource/n3;->h:Lcom/ironsource/e5;

    invoke-interface {v0, p1}, Lcom/ironsource/e5;->m(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public a()I
    .registers 2

    iget v0, p0, Lcom/ironsource/n3;->f:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n3;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n3;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n3;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n3;->e:Ljava/lang/String;

    return-object v0
.end method
