###### Class com.ironsource.w5.a (com.ironsource.w5$a)
.class public Lcom/ironsource/w5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/w5$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field g:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/ironsource/w5$a$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/ironsource/w5$a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/w5$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/ironsource/w5$a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/w5$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/ironsource/w5$a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/w5$a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ironsource/w5$a$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/w5$a;->g:Ljava/util/ArrayList;

    iget v0, p1, Lcom/ironsource/w5$a$a;->e:I

    iput v0, p0, Lcom/ironsource/w5$a;->d:I

    iget v0, p1, Lcom/ironsource/w5$a$a;->f:I

    iput v0, p0, Lcom/ironsource/w5$a;->e:I

    iget-object p1, p1, Lcom/ironsource/w5$a$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/w5$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/w5$a;->b:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
