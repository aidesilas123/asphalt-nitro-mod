###### Class com.ironsource.d4.a (com.ironsource.d4$a)
.class public Lcom/ironsource/d4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/j5;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/d4$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/d4$a;->b:Z

    const-string v1, "POST"

    iput-object v1, p0, Lcom/ironsource/d4$a;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ironsource/d4$a;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/d4$a;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iput-object p1, p0, Lcom/ironsource/d4$a;->a:Ljava/lang/String;

    :cond_21
    return-void
.end method

.method static synthetic b(Lcom/ironsource/d4$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/d4$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/d4$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/d4$a;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/ironsource/d4$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/d4$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ironsource/d4$a;)Lcom/ironsource/j5;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/d4$a;->d:Lcom/ironsource/j5;

    return-object p0
.end method

.method static synthetic f(Lcom/ironsource/d4$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/d4$a;->e:Z

    return p0
.end method

.method static synthetic g(Lcom/ironsource/d4$a;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/d4$a;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/util/Pair;)Lcom/ironsource/d4$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/d4$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/d4$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/ironsource/j5;)Lcom/ironsource/d4$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/d4$a;->d:Lcom/ironsource/j5;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ironsource/d4$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/d4$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/d4$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Z)Lcom/ironsource/d4$a;
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/d4$a;->e:Z

    return-object p0
.end method

.method public a()Lcom/ironsource/d4;
    .registers 2

    new-instance v0, Lcom/ironsource/d4;

    invoke-direct {v0, p0}, Lcom/ironsource/d4;-><init>(Lcom/ironsource/d4$a;)V

    return-object v0
.end method

.method public b()Lcom/ironsource/d4$a;
    .registers 2

    const-string v0, "GET"

    iput-object v0, p0, Lcom/ironsource/d4$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/ironsource/d4$a;
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/d4$a;->b:Z

    return-object p0
.end method

.method public c()Lcom/ironsource/d4$a;
    .registers 2

    const-string v0, "POST"

    iput-object v0, p0, Lcom/ironsource/d4$a;->c:Ljava/lang/String;

    return-object p0
.end method
