###### Class com.ironsource.w5.a.C0371a (com.ironsource.w5$a$a)
.class Lcom/ironsource/w5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/w5$a$a;->a:Ljava/util/List;

    const-string v0, "POST"

    iput-object v0, p0, Lcom/ironsource/w5$a$a;->c:Ljava/lang/String;

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/ironsource/w5$a$a;->e:I

    iput v0, p0, Lcom/ironsource/w5$a$a;->f:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/ironsource/w5$a$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/ironsource/w5$a$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w5$a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method b(Ljava/util/List;)Lcom/ironsource/w5$a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/w5$a$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/w5$a$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method c()Lcom/ironsource/w5$a;
    .registers 2

    new-instance v0, Lcom/ironsource/w5$a;

    invoke-direct {v0, p0}, Lcom/ironsource/w5$a;-><init>(Lcom/ironsource/w5$a$a;)V

    return-object v0
.end method

.method d(Ljava/lang/String;)Lcom/ironsource/w5$a$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w5$a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method e(Ljava/lang/String;)Lcom/ironsource/w5$a$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w5$a$a;->c:Ljava/lang/String;

    return-object p0
.end method
